`define handshake valid & ready
module JAM (
input CLK,
input RST,
output [2:0] W,
output [2:0] J,
input [6:0] Cost,
output [3:0] MatchCount,
output [9:0] MinCost,
output [239:0] Match_list,
output Valid );

	wire [23:0] list;
	wire [23:0] list1;
	wire w1, w2, w3;
	Permutation P0( 
		.CLK(CLK),
		.RST(RST),
		.permutation(list),
		.valid(w1),
		.ready(w2),
		.done(w3),
		.fake_permutation(list1)
		);
		
	MinFinder M0(
		.CLK( CLK ),
		.RST( RST ),
		.permutation( list ),
		.valid( w1 ),
		.ready( w2 ),
		.done( w3 ),
		.W( W ),
		.J( J ),
		.Cost( Cost ),
		.MatchCount( MatchCount ),
		.MinCost( MinCost ),
		.Valid( Valid ),
		.fake_permutation(list1),
		.Match_list(Match_list)
		);
	

endmodule


module Permutation(
input CLK,
input RST,
// Permutation/Min Interface
output [23:0] permutation,
output [23:0] fake_permutation,
output valid,
input  ready,
output done);
	integer i;
	reg [2:0] cs,ns;

	reg [2:0] List [0:7]; 

	reg [2:0] SearchNum;

	reg [7:0] Direction;
// Wire

	wire IsLeftmost, IsRightmost;
	wire [2:0] CompNum, DirectNum;
	wire Movable;
	wire [7:0] EqPosition, GrPosition;
	wire [2:0] index, index_direct;
// Parameter
	parameter 
			   S0       = 3'd0,//IDLE
			   S1       = 3'd1,//OutPerm
			   S2 	    = 3'd2,//FindActive
			   S3       = 3'd3,//Swap
			   S4       = 3'd4,//Inv
			   S7       = 3'd7;//Done
// FSM
	always @(posedge CLK or posedge RST) begin
		if(RST) cs <= S0;
		else cs <= ns;
	end

	always @* begin
		case(cs)
		S0: ns = S1;
		S1: ns = (`handshake)? S2 : S1;
		S2: ns = (Movable)? S3 : (SearchNum == 3'd0 & ~Movable)? S7 : S2;
		S3: ns = S4;
		S4: ns = S1;
		S7: ns = S7;
		default: ns = S0;
		endcase
	end

// List
	always @(posedge CLK or posedge RST) begin
		if(RST) begin
			List[0] <= 3'd0;
			List[1] <= 3'd1;
			List[2] <= 3'd2;
			List[3] <= 3'd3;
			List[4] <= 3'd4;
			List[5] <= 3'd5;
			List[6] <= 3'd6;
			List[7] <= 3'd7;
		end else if (cs == S3) begin
			List[index] <= List[index_direct];
			List[index_direct] <= List[index];
		end
	end
// Direction
	always @(posedge CLK or posedge RST) begin
		if(RST) begin
			Direction <= 8'd0;	
		end else if (cs == S3) begin
			Direction[index] <= Direction[index_direct];
			Direction[index_direct] <= Direction[index];
		end else if (cs == S4) begin
			for (i=0; i<8; i=i+1) Direction[i] <= (GrPosition[i])? ~Direction[i] : Direction[i];
		end
	end
// SearchNum
	always @(posedge CLK or posedge RST) begin
		if(RST) SearchNum <= 3'd7;
		else if (cs == S2) SearchNum <= (Movable)? SearchNum : SearchNum - 1'b1;
		else if (cs == S0 || cs == S1) SearchNum <= 3'd7;
	end
// SearchNum to EqPosition: One hot

	assign EqPosition = 
						  {
				             (List[7] == SearchNum),
					     (List[6] == SearchNum),
					     (List[5] == SearchNum),
					     (List[4] == SearchNum),
					     (List[3] == SearchNum),
					     (List[2] == SearchNum),
					     (List[1] == SearchNum),
					     (List[0] == SearchNum)
						  };

	assign GrPosition = 
						  {
					     (List[7] > SearchNum),
					     (List[6] > SearchNum),
					     (List[5] > SearchNum),
					     (List[4] > SearchNum),
					     (List[3] > SearchNum),
					     (List[2] > SearchNum),
					     (List[1] > SearchNum),
					     (List[0] > SearchNum)
						  };

	assign index = 
				   (EqPosition[7])? 3'd7 :
				   (EqPosition[6])? 3'd6 :
				   (EqPosition[5])? 3'd5 :
				   (EqPosition[4])? 3'd4 :
				   (EqPosition[3])? 3'd3 :
				   (EqPosition[2])? 3'd2 :
				   (EqPosition[1])? 3'd1 :
				   (EqPosition[0])? 3'd0 : 3'dx;
	assign index_direct = (~Direction[index])? index - 1'b1 : index + 1'b1;

// Movable
	assign CompNum = List[index];
	assign IsRightmost = (index == 3'd7) & Direction[index];
	assign IsLeftmost = (index == 3'd0) & ~Direction[index];
	assign DirectNum = List[index_direct];
	assign Movable = (CompNum > DirectNum) & ~IsLeftmost & ~IsRightmost;

// Output
	assign valid = (cs == S1);
	assign done = (cs == S7);
	assign permutation = {List[7], List[6], List[5], List[4], List[3], List[2], List[1], List[0]};
	assign fake_permutation = (cs == S3)?{List[0], List[1], List[2], List[3], List[4], List[5], List[6], List[7]} : fake_permutation;
endmodule

module MinFinder(
input CLK,
input RST,
// Permutation/Min Interface
input [23:0] permutation,
input [23:0] fake_permutation,
input valid,
output ready,
input done,
// System Interface
output [2:0] W,
output [2:0] J,
input  [6:0] Cost,
output reg [3:0] MatchCount,
output reg [9:0] MinCost,
output reg Valid,
output reg [239:0] Match_list
);
	integer i;
	reg [1:0] cs, ns;
	reg [2:0] counter;
	reg [2:0] Array [0:7];
	reg [9:0] TempAcc;
	reg [23:0] List;
	reg in_use;
	reg Acc, Update, Finish;
//FSM
	localparam S0 = 2'd0,
			   sCount = 2'd1,
			   sComp = 2'd2,
			   S7 = 2'd3;

	always @(posedge CLK or posedge RST) begin
		if(RST) cs <= S0;
		else cs <= ns;
	end

	always @*begin
		case(cs)
		S0: ns = (`handshake)? sCount : S0;
		sCount: ns = (counter == 3'd7)? sComp : sCount;
		sComp: ns = (done)? S7 : S0;
		S7: ns = S7;
		endcase
	end

// Array
	always @(posedge CLK) begin
		if (RST) for(i=0; i<8 ; i=i+1) Array[i] <= 3'b000;
		else if(`handshake) for(i=0; i<8 ; i=i+1) Array[i] <= permutation[3*i +: 3];
	end
// counter
	always @(posedge CLK) begin
		if(cs == S0) counter <= 3'd0;
		else if(cs == sCount) counter <= counter + 1'b1;
		else if(cs == sComp) counter <= 3'd0;
	end
// in_use
	always @(posedge CLK or posedge RST) begin
		if(RST) in_use <= 1'b0;
		else if(Update) in_use <= 1'b1;
	end
// TempAcc
	always @(posedge CLK) begin
		if(RST) TempAcc <= 10'd0;
		else if (Acc) TempAcc <= TempAcc + {3'b0, Cost};
		else TempAcc <= 10'd0;
	end
// Delay For Input
	
	always @(posedge CLK or posedge RST) begin
		if(RST) Acc <= 1'b0;
		else if(cs == sCount) Acc <= 1'b1;
		else Acc <= 1'b0;
	end

	always @(posedge CLK or posedge RST) begin
		if(RST) Update <= 1'b0;
		else if(cs == sComp) Update <= 1'b1;
		else Update <= 1'b0;
	end

	always @(posedge CLK or posedge RST) begin
		if(RST) Finish <= 1'b0;
		else if(cs == S7) Finish <= 1'b1;
		else Finish <= 1'b0;
	end
// MinCost
	always @(posedge CLK) begin
		if(Update) begin
			if(in_use) MinCost <= (MinCost > TempAcc)? TempAcc : MinCost;
			else MinCost <= TempAcc;
		end
	end
// MatchCount
	always @(posedge CLK) begin
		if(~in_use) MatchCount <= 4'd1;
		else if(Update) begin
			if(MinCost == TempAcc) MatchCount <= MatchCount + 1'b1;
			else if(MinCost > TempAcc) MatchCount <= 4'd1;
		end
	end
	
//find Match_list	
	always@(posedge CLK)begin
		if(RST)begin
				for(i=0;i<10;i=i+1)begin
						Match_list[24*i+:24] <= 24'd0;
				end
		end
		else if(cs == S0 && in_use == 2'd1)begin
				if(TempAcc < MinCost)begin
						for(i=0;i<10;i=i+1)begin
								Match_list[24*i+:24] <= (i == MatchCount-1)? {fake_permutation[23-:3],fake_permutation[20-:3],fake_permutation[17-:3],fake_permutation[14-:3],fake_permutation[11-:3],fake_permutation[8-:3],fake_permutation[5-:3],fake_permutation[2-:3]} : Match_list[24*i+:24];
						end
				end
				else if(TempAcc == MinCost)begin
						for(i=0;i<10;i=i+1)begin
								Match_list[24*i+:24] <= (i == MatchCount)? {fake_permutation[23-:3],fake_permutation[20-:3],fake_permutation[17-:3],fake_permutation[14-:3],fake_permutation[11-:3],fake_permutation[8-:3],fake_permutation[5-:3],fake_permutation[2-:3]} : Match_list[24*i+:24];
						end				
				end
				else begin
						for(i=0;i<10;i=i+1)begin
								Match_list[24*i+:24] <= Match_list[24*i+:24];
						end
				end	
		end
		else if(cs == S0 && in_use == 2'd0 && Update == 2'd1)begin
				for(i=0;i<10;i=i+1)begin
						Match_list[24*i+:24] <= (i == MatchCount-1)? {fake_permutation[23-:3],fake_permutation[20-:3],fake_permutation[17-:3],fake_permutation[14-:3],fake_permutation[11-:3],fake_permutation[8-:3],fake_permutation[5-:3],fake_permutation[2-:3]} : Match_list[24*i+:24];
				end
		end
		else begin
				for(i=0;i<10;i=i+1)begin
						Match_list[24*i+:24] <= Match_list[24*i+:24];
				end
		end
	end

// W, J
	assign W = counter;
	assign J = Array[counter];
// ready
	assign ready = (cs == S0);
// Valid

	always @(posedge CLK or posedge RST) begin
		if(RST) Valid <= 1'b0;
		else if(Finish) Valid <= 1'b1;
		else Valid <= 1'b0;
	end

endmodule
