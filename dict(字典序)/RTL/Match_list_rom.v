module Match_list_rom(
    input CLK,
    input RST,
    input [3:0]MatchCount,
    input Valid,
    input [2:0] W,
    input [2:0] ns,
    input [23:0]list,
    input cost_enable,
    input [9:0] cost_temp,
    input [9:0] MinCost,
    output reg [239:0] Match_list
);
integer i;
parameter S0 = 3'd0;
always@(posedge CLK)begin//儲存符合最小成本的list
    if(RST)begin
        for(i=0;i<10;i=i+1)begin
            Match_list[24*i+:24] <= 24'd0;
        end
    end
    else if (W==3'd5)begin
        for(i=0;i<10;i=i+1)begin
            Match_list[24*i+:24] <= (i==MatchCount)? {list[23-:3],list[20-:3],list[17-:3],list[14-:3],list[11-:3],list[8-:3],list[5-:3],list[2-:3]} : Match_list[24*i+:24];
        end
    end
    else if(ns == S0 && cost_enable) begin
        if(cost_temp<MinCost)begin
            for(i=0;i<10;i=i+1)begin
            Match_list[24*i+:24] <= (i==0)? Match_list[24*MatchCount+:24] : 24'd0;
            end
        end
        else if(Valid) begin
           for(i=0;i<10;i=i+1)begin
                Match_list[24*i+:24] <= (i==MatchCount)? 24'd0 : Match_list[24*i+:24];
            end
        end
        else begin
            for(i=0;i<10;i=i+1)begin
                Match_list[24*i+:24] <= (i>MatchCount)? 24'd0 : Match_list[24*i+:24];
            end
        end
        
        end 
end
endmodule
