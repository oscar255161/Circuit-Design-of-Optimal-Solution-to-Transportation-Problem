`include "Match_list_rom.v"
module JAM (
           input CLK,
           input RST,
           output reg [2:0] W,
           output  [2:0] J,
           input [6:0] Cost,
           output reg [3:0] MatchCount,
           output reg [9:0] MinCost,
           output  [239:0] Match_list,
           output Valid);

parameter S0=3'd0,//找替換點
          S1=3'd1,//S1從替換點右邊找比替換數大的數
          S2=3'd2,//S2從剛剛S1找出來的數中挑最小值(min1)和index
          S3=3'd3,//S3交換
          S4=3'd4,//S4翻轉
          S5=3'd5,//S5讀前一輪list的cost
          IDLE=3'd6,
          S7=3'd7;//reset

integer i;
reg [2:0]cs,ns;
reg [2:0]list[7:0];
reg [2:0] replace_value;
reg [3:0] gt_replace_value_num [6:0];
reg [2:0] min_index;
reg [1:0] sort_round;
reg [9:0] cost_temp;

Match_list_rom ROM1(
                   .CLK(CLK),
                   .RST(RST),
                   .MatchCount(MatchCount),
                   .Valid(Valid),
                   .W(W),
                   .ns(ns),
                   .list({list[7],list[6],list[5],list[4],list[3],list[2],list[1],list[0]}),
                   .cost_enable(cost_enable),
                   .cost_temp(cost_temp),
                   .MinCost(MinCost),
                   .Match_list(Match_list)
               );

//state transfer
always@(posedge CLK)
begin
    if(RST)
        cs <= IDLE;
    else if (!Valid)
        cs <= ns;
    else
        cs <= IDLE;

end
//next state
always@(*)
begin
    case(cs)
        S0:
            ns = S1;
        S1:
            ns = S2;
        S2:
            ns = (sort_round == 2'd2)?S3:S2;
        S3:
            ns = S4;
        S4:
            ns = S5;
        S5:
            ns = S0;
        IDLE:
            ns = ((RST&&Valid==1)||(!RST))? S0 : IDLE;
        default:
            ns = IDLE;

    endcase
end
assign
    Valid = (list[7] == 3'd7)&&
    (list[6] == 3'd6)&&
    (list[5] == 3'd5)&&
    (list[4] == 3'd4)&&
    (list[3] == 3'd3)&&
    (list[2] == 3'd2)&&
    (list[1] == 3'd1)&&
    (list[0] == 3'd0)
    ;//list=76543210,為全排序演算法的最後一個序列


//S7 S3 S4 都是對list修改的狀態

always@(posedge CLK)
begin
    if(RST)
    begin
        for(i=0;i<8;i=i+1)
        begin
            list[i] <= 3'd7-i;
        end
    end
    else
    begin
        case (cs)
            S7:
            begin
                for(i=0;i<8;i=i+1)
                begin
                    list[i] <= 3'd7-i;
                end
            end
            S3:
            begin
                for(i=0;i<8;i=i+1)
                begin
                    list[i] <=  (i<=replace_value)?
                    ((i==replace_value || i==min_index)?
                     ((i==replace_value)? list[min_index]:list[replace_value])
                     :list[i])
                    :list[i];//只針對位置i=replace_value以及i=min_index上的值做交換
                end
            end
            S4:
            begin
                for(i=0;i<8;i=i+1)
                begin
                    list[i] <= (i<replace_value)? list[replace_value-3'd1-i]:list[i];
                end
            end
            default:
            begin
                for(i=0;i<8;i=i+1)
                begin
                    list[i] <= list[i];
                end
            end
        endcase
    end
end

//S0找替換點
always@(posedge CLK )
begin
    if(RST)
        replace_value	<= 3'd0;
    else if(cs == S0)
    begin
        if(list[1]<list[0])
        begin
            replace_value	<= 3'd1;
        end
        else if(list[2]<list[1])
        begin
            replace_value	<= 3'd2;
        end
        else if(list[3]<list[2])
        begin
            replace_value	<= 3'd3;
        end
        else if(list[4]<list[3])
        begin
            replace_value	<= 3'd4;
        end
        else if(list[5]<list[4])
        begin
            replace_value	<= 3'd5;
        end
        else if(list[6]<list[5])
        begin
            replace_value	<= 3'd6;
        end
        else if(list[7]<list[6])
        begin
            replace_value	<= 3'd7;
        end
        else
            replace_value <= replace_value;
    end
    else
        replace_value <= replace_value;
end

//S1從替換點右邊找比替換數大的數
always@(posedge CLK )
begin
    if(RST)
    begin
        for(i=0;i<7;i=i+1)
        begin
            gt_replace_value_num[i] <= 4'hf;
        end
    end
    else
    begin
        case(cs)
            S1 :
            begin
                for(i=0;i<7;i=i+1)
                begin
                    gt_replace_value_num[i] <=  ((i<replace_value)&&(replace_value!=3'd0))?
                    ((list[i]>list[replace_value])? list[i]:4'hf)
                    :4'hf;
                end
            end

            S2 :
            begin
                for(i=0;i<7;i=i+1)
                begin
                    gt_replace_value_num[i] <= gt_replace_value_num[i];
                end
            end

            default:
            begin
                for(i=0;i<7;i=i+1)
                begin
                    gt_replace_value_num[i] <= 4'hf;
                end
            end
        endcase
    end
end

//S2從gt_replace_value_num裡找最小值的index
wire [3:0] cmp1,cmp2,cmp3,cmp11,cmp22,cmp33;
assign cmp1 = (gt_replace_value_num[6]<=gt_replace_value_num[5])? 3'd6 : 3'd5;
assign cmp2 = (gt_replace_value_num[4]<=gt_replace_value_num[3])? 3'd4 : 3'd3;
assign cmp3 = (gt_replace_value_num[2]<=gt_replace_value_num[1])? 3'd2 : 3'd1;
assign cmp11 = (gt_replace_value_num[cmp1]<=gt_replace_value_num[cmp2])? cmp1 : cmp2;
assign cmp22 = (gt_replace_value_num[cmp3]<=gt_replace_value_num[0])? cmp3 : 3'd0;//在S2來臨前就一直在計算最小值，S2時就能直接assign給min_index了
always@(posedge CLK )
begin
    if(RST)
    begin
        min_index <= 3'd0;
    end
    else
    begin
        min_index <= (gt_replace_value_num[cmp11]<=gt_replace_value_num[cmp22])? cmp11 : cmp22;
    end
end

//S2排序回合
always@(posedge CLK )
begin
    if(RST)
        sort_round <= 2'd0;
    else if(cs == S2)
        sort_round <= sort_round + 2'd1;
    else
        sort_round <= 2'd0;
end

//在下一輪list開始時讀前一輪list的cost
always@(posedge CLK  )
begin
    if(RST)
        cost_temp <= 7'd0;
    else if(ns == S0)
        cost_temp <= Cost;
    else
        cost_temp <= cost_temp + Cost;
end

//W
always@(posedge CLK )
begin
    if(RST)
        W <= 3'd0;
    else if(ns == S4)//在狀態真正到S5前讓W歸零
        W <= 3'd0;
    else
        W <= W + 3'd1;
end

//J
assign J =list[3'd7-W];


assign cost_enable = !((list[7] == 3'd0)&&
                       (list[6] == 3'd1)&&
                       (list[5] == 3'd2)&&
                       (list[4] == 3'd3)&&
                       (list[3] == 3'd4)&&
                       (list[2] == 3'd5)&&
                       (list[1] == 3'd6)&&
                       (list[0] == 3'd7)
                      );//讓MinCost與MatchCount的判斷避開首輪list的cost_temp，從第二輪list開始所算出來的cost_temp才是真正第一輪list的cost_temp

//在下一輪list開始時比較前一輪list總共的cost_temp是否小於MinCost
always@(posedge CLK )
begin
    if(RST)
        MinCost <= 10'h3ff;
    else if(ns == S0 && cost_enable)
        MinCost <= (cost_temp<MinCost)? cost_temp:MinCost;
    else
        MinCost <= MinCost;
end

//在下一輪list開始時比較前一輪list總共的cost_temp是否小於MatchCount
always@(posedge CLK )
begin
    if(RST)
        MatchCount <= 4'd0;
    else if(ns == S0 && cost_enable)
    begin
        if (cost_temp<MinCost)
            MatchCount <= 4'd1;
        else if (cost_temp==MinCost)
            MatchCount <= MatchCount+4'd1;
        else
            MatchCount <= MatchCount;
    end
    else
        MatchCount <= MatchCount;
end
endmodule

