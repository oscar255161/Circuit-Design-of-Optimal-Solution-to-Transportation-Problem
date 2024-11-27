/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12
// Date      : Mon Sep 19 16:04:25 2022
/////////////////////////////////////////////////////////////


module MinFinder ( CLK, RST, permutation, fake_permutation, valid, ready, done, 
        J, Cost, MatchCount, Match_list, \W[2]_BAR , \W[1]_BAR , \W[0]_BAR , 
        \MinCost[9]_BAR , \MinCost[7] , \MinCost[6] , \MinCost[2] , 
        \MinCost[0] , \MinCost[8]_BAR , \MinCost[5]_BAR , \MinCost[4]_BAR , 
        \MinCost[3]_BAR , \MinCost[1]_BAR , Valid_BAR );
  input [23:0] permutation;
  input [23:0] fake_permutation;
  output [2:0] J;
  input [6:0] Cost;
  output [3:0] MatchCount;
  output [239:0] Match_list;
  input CLK, RST, valid, done;
  output ready, \W[2]_BAR , \W[1]_BAR , \W[0]_BAR , \MinCost[9]_BAR ,
         \MinCost[7] , \MinCost[6] , \MinCost[2] , \MinCost[0] ,
         \MinCost[8]_BAR , \MinCost[5]_BAR , \MinCost[4]_BAR ,
         \MinCost[3]_BAR , \MinCost[1]_BAR , Valid_BAR;
  wire   n763, n764, n765, n766, n767, n768, n769, n770, n771, n772, n773,
         n774, n775, n776, n777, n778, n779, n780, n781, n782, n783, n784,
         n785, n786, n787, n788, n789, n790, n791, n792, n793, n794, n795,
         n796, n797, n798, n799, n800, n801, n802, n803, n804, n805, n806,
         n807, n808, n809, n810, n811, n812, n813, n814, n815, n816, n817,
         n818, n819, n820, n821, n822, n823, n824, n825, n826, n827, n828,
         n829, n830, n831, n832, n833, n834, n835, n836, n837, n838, n839,
         n840, n841, n842, n843, n844, n845, n846, n847, n848, n849, n850,
         n851, n852, n853, n854, n855, n856, n857, n858, n859, n860, n861,
         n862, n863, n864, n865, n866, n867, n868, n869, n870, n871, n872,
         n873, n874, n875, n876, n877, n878, n879, n880, n881, n882, n883,
         n884, n885, n886, n887, n888, n889, n890, n891, n892, n893, n894,
         n895, n896, n897, n898, n899, n900, n901, n902, n903, n904, n905,
         n906, n907, n908, n909, n910, n911, n912, n913, n914, n915, n916,
         n917, n918, n919, n920, n921, n922, n923, n924, n925, n926, n927,
         n928, n929, n930, n931, n932, n933, n934, n935, n936, n937, n938,
         n939, n940, n941, n942, n943, n944, n945, n946, n947, n948, n949,
         n950, n951, n952, n953, n954, n955, n956, n957, n958, n959, n960,
         n961, n962, n963, n964, n965, n966, n967, n968, n969, n970, n971,
         n972, n973, n974, n975, n976, n977, n978, n979, n980, n981, n982,
         n983, n984, n985, n986, n987, n988, n989, n990, n991, n992, n993,
         n994, n995, n996, n997, n998, n999, n1000, n1001, n1002, n1003, n1004,
         n1005, n1006, n1007, n1008, n1009, n1010, \Array[0][2] ,
         \Array[0][1] , \Array[0][0] , \Array[1][2] , \Array[1][1] ,
         \Array[1][0] , \Array[2][2] , \Array[2][1] , \Array[2][0] ,
         \Array[3][2] , \Array[3][1] , \Array[3][0] , \Array[4][2] ,
         \Array[4][1] , \Array[4][0] , \Array[5][2] , \Array[5][1] ,
         \Array[5][0] , \Array[6][2] , \Array[6][1] , \Array[6][0] ,
         \Array[7][2] , \Array[7][1] , \Array[7][0] , Update, in_use, Acc,
         N113, N114, N115, N116, N117, N118, N119, N120, N121, N122, Finish,
         N1527, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398,
         n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, n409,
         n410, n411, n412, n413, n414, n415, n416, n417, n418, n419, n420,
         n421, n422, n423, n424, n425, n426, n427, n428, n429, n430, n431,
         n432, n433, n434, n435, n436, n437, n438, n439, n440, n441, n442,
         n443, n444, n445, n446, n447, n448, n449, n450, n451, n452, n453,
         n454, n455, n456, n457, n458, n459, n460, n461, n462, n464, n465, n1,
         n542, n543, n544, n545, n546, n547, n548, n549, n550, n551, n552,
         n553, n554, n555, n556, n557, n558, n559, n560, n561, n562, n563,
         n564, n565, n566, n567, n568, n569, n570, n571, n572, n573, n574,
         n575, n576, n577, n578, n579, n580, n581, n582, n583, n584, n585,
         n586, n587, n588, n589, n590, n591, n592, n593, n594, n595, n596,
         n597, n598, n599, n600, n601, n602, n603, n604, n605, n606, n607,
         n608, n609, n610, n611, n612, n613, n614, n615, n616, n617, n618,
         n619, n620, n621, n622, n623, n624, n625, n626, n627, n628, n629,
         n630, n631, n632, n633, n634, n635, n636, n637, n638, n639, n640,
         n641, n642, n643, n644, n645, n646, n647, n648, n649, n650, n651,
         n652, n653, n654, n655, n656, n657, n659, n660, n661, n662, n663,
         n664, n665, n666, n667, n668, n669, n670, n671, n672, n673, n674,
         n675, n676, n677, n678, n679, n680, n681, n682, n683, n684, n685,
         n686, n687, n688, n689, n690, n691, n692, n693, n694, n695, n696,
         n697, n698, n699, n700, n701, n702, n704, n705, n706, n707, n708,
         n709, n710, n711, n712, n713, n714, n715, n716, n717, n718, n719,
         n720, n721, n722, n723, n724, n725, n726, n727, n728, n729, n730,
         n731, n732, n733, n734, n735, n736, n737, n738, n739, n740, n741,
         n742, n743, n744, n745, n746, n747, n748, n749, n751, n752, n754,
         n755, n756, n757, n760, n761;
  wire   [2:0] W;
  wire   [9:0] MinCost;
  wire   [1:0] cs;
  wire   [9:0] TempAcc;
  assign \MinCost[7]  = MinCost[7];
  assign \MinCost[6]  = MinCost[6];
  assign \MinCost[2]  = MinCost[2];
  assign \MinCost[0]  = MinCost[0];
  assign ready = N1527;

  DFFQX1 \Array_reg[7][0]  ( .D(n460), .CK(CLK), .Q(\Array[7][0] ) );
  DFFQX1 \Array_reg[0][2]  ( .D(n459), .CK(CLK), .Q(\Array[0][2] ) );
  DFFQX1 \Array_reg[0][1]  ( .D(n458), .CK(CLK), .Q(\Array[0][1] ) );
  DFFQX1 \Array_reg[0][0]  ( .D(n457), .CK(CLK), .Q(\Array[0][0] ) );
  DFFQX1 \Array_reg[1][2]  ( .D(n456), .CK(CLK), .Q(\Array[1][2] ) );
  DFFQX1 \Array_reg[1][1]  ( .D(n455), .CK(CLK), .Q(\Array[1][1] ) );
  DFFQX1 \Array_reg[1][0]  ( .D(n454), .CK(CLK), .Q(\Array[1][0] ) );
  DFFQX1 \Array_reg[2][2]  ( .D(n453), .CK(CLK), .Q(\Array[2][2] ) );
  DFFQX1 \Array_reg[2][1]  ( .D(n452), .CK(CLK), .Q(\Array[2][1] ) );
  DFFQX1 \Array_reg[2][0]  ( .D(n451), .CK(CLK), .Q(\Array[2][0] ) );
  DFFQX1 \Array_reg[3][2]  ( .D(n450), .CK(CLK), .Q(\Array[3][2] ) );
  DFFQX1 \Array_reg[3][1]  ( .D(n449), .CK(CLK), .Q(\Array[3][1] ) );
  DFFQX1 \Array_reg[3][0]  ( .D(n448), .CK(CLK), .Q(\Array[3][0] ) );
  DFFQX1 \Array_reg[4][2]  ( .D(n447), .CK(CLK), .Q(\Array[4][2] ) );
  DFFQX1 \Array_reg[4][1]  ( .D(n446), .CK(CLK), .Q(\Array[4][1] ) );
  DFFQX1 \Array_reg[4][0]  ( .D(n445), .CK(CLK), .Q(\Array[4][0] ) );
  DFFQX1 \Array_reg[5][2]  ( .D(n444), .CK(CLK), .Q(\Array[5][2] ) );
  DFFQX1 \Array_reg[5][1]  ( .D(n443), .CK(CLK), .Q(\Array[5][1] ) );
  DFFQX1 \Array_reg[5][0]  ( .D(n442), .CK(CLK), .Q(\Array[5][0] ) );
  DFFQX1 \Array_reg[6][2]  ( .D(n441), .CK(CLK), .Q(\Array[6][2] ) );
  DFFQX1 \Array_reg[6][1]  ( .D(n440), .CK(CLK), .Q(\Array[6][1] ) );
  DFFQX1 \Array_reg[6][0]  ( .D(n439), .CK(CLK), .Q(\Array[6][0] ) );
  DFFQX1 \Array_reg[7][2]  ( .D(n438), .CK(CLK), .Q(\Array[7][2] ) );
  DFFQX1 \Array_reg[7][1]  ( .D(n437), .CK(CLK), .Q(\Array[7][1] ) );
  DFFQX1 \TempAcc_reg[2]  ( .D(N115), .CK(CLK), .Q(TempAcc[2]) );
  DFFQX1 \TempAcc_reg[3]  ( .D(N116), .CK(CLK), .Q(TempAcc[3]) );
  DFFQX1 \TempAcc_reg[4]  ( .D(N117), .CK(CLK), .Q(TempAcc[4]) );
  DFFQX1 \TempAcc_reg[5]  ( .D(N118), .CK(CLK), .Q(TempAcc[5]) );
  DFFQX1 \TempAcc_reg[6]  ( .D(N119), .CK(CLK), .Q(TempAcc[6]) );
  DFFQX1 \TempAcc_reg[7]  ( .D(N120), .CK(CLK), .Q(TempAcc[7]) );
  DFFQX1 \TempAcc_reg[8]  ( .D(N121), .CK(CLK), .Q(TempAcc[8]) );
  DFFQX1 \TempAcc_reg[9]  ( .D(N122), .CK(CLK), .Q(TempAcc[9]) );
  DFFRX1 \cs_reg[1]  ( .D(n464), .CK(CLK), .RN(n180), .Q(cs[1]), .QN(n757) );
  DFFRX1 Update_reg ( .D(n465), .CK(CLK), .RN(n180), .Q(Update), .QN(n756) );
  DFFRX1 in_use_reg ( .D(n435), .CK(CLK), .RN(n180), .Q(in_use), .QN(n755) );
  DFFQX1 \MatchCount_reg[2]  ( .D(n422), .CK(CLK), .Q(n764) );
  DFFQX1 \MatchCount_reg[3]  ( .D(n421), .CK(CLK), .Q(n763) );
  DFFRX1 Valid_reg ( .D(Finish), .CK(CLK), .RN(n180), .QN(Valid_BAR) );
  DFFQX1 \MinCost_reg[9]  ( .D(n433), .CK(CLK), .Q(MinCost[9]) );
  DFFQX1 \MinCost_reg[8]  ( .D(n425), .CK(CLK), .Q(MinCost[8]) );
  DFFQX1 \MinCost_reg[5]  ( .D(n428), .CK(CLK), .Q(MinCost[5]) );
  DFFQX1 \MinCost_reg[4]  ( .D(n429), .CK(CLK), .Q(MinCost[4]) );
  DFFQX1 \MinCost_reg[3]  ( .D(n430), .CK(CLK), .Q(MinCost[3]) );
  DFFQX1 \MinCost_reg[1]  ( .D(n432), .CK(CLK), .Q(MinCost[1]) );
  DFFQX1 \TempAcc_reg[1]  ( .D(N114), .CK(CLK), .Q(TempAcc[1]) );
  DFFQX1 \TempAcc_reg[0]  ( .D(N113), .CK(CLK), .Q(TempAcc[0]) );
  DFFQX1 \counter_reg[1]  ( .D(n436), .CK(CLK), .Q(W[1]) );
  DFFQX1 \counter_reg[2]  ( .D(n461), .CK(CLK), .Q(W[2]) );
  DFFSX1 Finish_reg ( .D(n760), .CK(CLK), .SN(n180), .QN(Finish) );
  DFFSX1 Acc_reg ( .D(n761), .CK(CLK), .SN(n180), .QN(Acc) );
  DFFTRX2 \counter_reg[0]  ( .D(1'b1), .RN(n462), .CK(CLK), .Q(W[0]), .QN(
        \W[0]_BAR ) );
  DFFQX2 \MatchCount_reg[0]  ( .D(n424), .CK(CLK), .Q(n766) );
  DFFQX1 \MinCost_reg[7]  ( .D(n426), .CK(CLK), .Q(n767) );
  DFFQX1 \Match_list_reg[0]  ( .D(n420), .CK(CLK), .Q(n1010) );
  DFFQX1 \Match_list_reg[1]  ( .D(n419), .CK(CLK), .Q(n1009) );
  DFFQX1 \Match_list_reg[2]  ( .D(n418), .CK(CLK), .Q(n1008) );
  DFFQX1 \Match_list_reg[3]  ( .D(n417), .CK(CLK), .Q(n1007) );
  DFFQX1 \Match_list_reg[4]  ( .D(n416), .CK(CLK), .Q(n1006) );
  DFFQX1 \Match_list_reg[6]  ( .D(n414), .CK(CLK), .Q(n1004) );
  DFFQX1 \Match_list_reg[7]  ( .D(n413), .CK(CLK), .Q(n1003) );
  DFFQX1 \Match_list_reg[8]  ( .D(n412), .CK(CLK), .Q(n1002) );
  DFFQX1 \Match_list_reg[9]  ( .D(n411), .CK(CLK), .Q(n1001) );
  DFFQX1 \Match_list_reg[10]  ( .D(n410), .CK(CLK), .Q(n1000) );
  DFFQX1 \Match_list_reg[11]  ( .D(n409), .CK(CLK), .Q(n999) );
  DFFQX1 \Match_list_reg[12]  ( .D(n408), .CK(CLK), .Q(n998) );
  DFFQX1 \Match_list_reg[13]  ( .D(n407), .CK(CLK), .Q(n997) );
  DFFQX1 \Match_list_reg[14]  ( .D(n406), .CK(CLK), .Q(n996) );
  DFFQX1 \Match_list_reg[15]  ( .D(n405), .CK(CLK), .Q(n995) );
  DFFQX1 \Match_list_reg[16]  ( .D(n404), .CK(CLK), .Q(n994) );
  DFFQX1 \Match_list_reg[17]  ( .D(n403), .CK(CLK), .Q(n993) );
  DFFQX1 \Match_list_reg[18]  ( .D(n402), .CK(CLK), .Q(n992) );
  DFFQX1 \Match_list_reg[19]  ( .D(n401), .CK(CLK), .Q(n991) );
  DFFQX1 \Match_list_reg[21]  ( .D(n399), .CK(CLK), .Q(n989) );
  DFFQX1 \Match_list_reg[22]  ( .D(n398), .CK(CLK), .Q(n988) );
  DFFQX1 \Match_list_reg[23]  ( .D(n397), .CK(CLK), .Q(n987) );
  DFFQX1 \Match_list_reg[24]  ( .D(n396), .CK(CLK), .Q(n986) );
  DFFQX1 \Match_list_reg[25]  ( .D(n395), .CK(CLK), .Q(n985) );
  DFFQX1 \Match_list_reg[26]  ( .D(n394), .CK(CLK), .Q(n984) );
  DFFQX1 \Match_list_reg[27]  ( .D(n393), .CK(CLK), .Q(n983) );
  DFFQX1 \Match_list_reg[28]  ( .D(n392), .CK(CLK), .Q(n982) );
  DFFQX1 \Match_list_reg[29]  ( .D(n391), .CK(CLK), .Q(n981) );
  DFFQX1 \Match_list_reg[30]  ( .D(n390), .CK(CLK), .Q(n980) );
  DFFQX1 \Match_list_reg[31]  ( .D(n389), .CK(CLK), .Q(n979) );
  DFFQX1 \Match_list_reg[32]  ( .D(n388), .CK(CLK), .Q(n978) );
  DFFQX1 \Match_list_reg[33]  ( .D(n387), .CK(CLK), .Q(n977) );
  DFFQX1 \Match_list_reg[34]  ( .D(n386), .CK(CLK), .Q(n976) );
  DFFQX1 \Match_list_reg[36]  ( .D(n384), .CK(CLK), .Q(n974) );
  DFFQX1 \Match_list_reg[37]  ( .D(n383), .CK(CLK), .Q(n973) );
  DFFQX1 \Match_list_reg[38]  ( .D(n382), .CK(CLK), .Q(n972) );
  DFFQX1 \Match_list_reg[39]  ( .D(n381), .CK(CLK), .Q(n971) );
  DFFQX1 \Match_list_reg[40]  ( .D(n380), .CK(CLK), .Q(n970) );
  DFFQX1 \Match_list_reg[41]  ( .D(n379), .CK(CLK), .Q(n969) );
  DFFQX1 \Match_list_reg[42]  ( .D(n378), .CK(CLK), .Q(n968) );
  DFFQX1 \Match_list_reg[43]  ( .D(n377), .CK(CLK), .Q(n967) );
  DFFQX1 \Match_list_reg[44]  ( .D(n376), .CK(CLK), .Q(n966) );
  DFFQX1 \Match_list_reg[45]  ( .D(n375), .CK(CLK), .Q(n965) );
  DFFQX1 \Match_list_reg[46]  ( .D(n374), .CK(CLK), .Q(n964) );
  DFFQX1 \Match_list_reg[47]  ( .D(n373), .CK(CLK), .Q(n963) );
  DFFQX1 \Match_list_reg[73]  ( .D(n347), .CK(CLK), .Q(n937) );
  DFFQX1 \Match_list_reg[74]  ( .D(n346), .CK(CLK), .Q(n936) );
  DFFQX1 \Match_list_reg[75]  ( .D(n345), .CK(CLK), .Q(n935) );
  DFFQX1 \Match_list_reg[76]  ( .D(n344), .CK(CLK), .Q(n934) );
  DFFQX1 \Match_list_reg[77]  ( .D(n343), .CK(CLK), .Q(n933) );
  DFFQX1 \Match_list_reg[78]  ( .D(n342), .CK(CLK), .Q(n932) );
  DFFQX1 \Match_list_reg[79]  ( .D(n341), .CK(CLK), .Q(n931) );
  DFFQX1 \Match_list_reg[81]  ( .D(n339), .CK(CLK), .Q(n929) );
  DFFQX1 \Match_list_reg[82]  ( .D(n338), .CK(CLK), .Q(n928) );
  DFFQX1 \Match_list_reg[83]  ( .D(n337), .CK(CLK), .Q(n927) );
  DFFQX1 \Match_list_reg[84]  ( .D(n336), .CK(CLK), .Q(n926) );
  DFFQX1 \Match_list_reg[85]  ( .D(n335), .CK(CLK), .Q(n925) );
  DFFQX1 \Match_list_reg[86]  ( .D(n334), .CK(CLK), .Q(n924) );
  DFFQX1 \Match_list_reg[87]  ( .D(n333), .CK(CLK), .Q(n923) );
  DFFQX1 \Match_list_reg[88]  ( .D(n332), .CK(CLK), .Q(n922) );
  DFFQX1 \Match_list_reg[89]  ( .D(n331), .CK(CLK), .Q(n921) );
  DFFQX1 \Match_list_reg[90]  ( .D(n330), .CK(CLK), .Q(n920) );
  DFFQX1 \Match_list_reg[91]  ( .D(n329), .CK(CLK), .Q(n919) );
  DFFQX1 \Match_list_reg[92]  ( .D(n328), .CK(CLK), .Q(n918) );
  DFFQX1 \Match_list_reg[93]  ( .D(n327), .CK(CLK), .Q(n917) );
  DFFQX1 \Match_list_reg[94]  ( .D(n326), .CK(CLK), .Q(n916) );
  DFFQX1 \Match_list_reg[121]  ( .D(n299), .CK(CLK), .Q(n889) );
  DFFQX1 \Match_list_reg[122]  ( .D(n298), .CK(CLK), .Q(n888) );
  DFFQX1 \Match_list_reg[123]  ( .D(n297), .CK(CLK), .Q(n887) );
  DFFQX1 \Match_list_reg[124]  ( .D(n296), .CK(CLK), .Q(n886) );
  DFFQX1 \Match_list_reg[126]  ( .D(n294), .CK(CLK), .Q(n884) );
  DFFQX1 \Match_list_reg[127]  ( .D(n293), .CK(CLK), .Q(n883) );
  DFFQX1 \Match_list_reg[128]  ( .D(n292), .CK(CLK), .Q(n882) );
  DFFQX1 \Match_list_reg[129]  ( .D(n291), .CK(CLK), .Q(n881) );
  DFFQX1 \Match_list_reg[130]  ( .D(n290), .CK(CLK), .Q(n880) );
  DFFQX1 \Match_list_reg[131]  ( .D(n289), .CK(CLK), .Q(n879) );
  DFFQX1 \Match_list_reg[132]  ( .D(n288), .CK(CLK), .Q(n878) );
  DFFQX1 \Match_list_reg[133]  ( .D(n287), .CK(CLK), .Q(n877) );
  DFFQX1 \Match_list_reg[134]  ( .D(n286), .CK(CLK), .Q(n876) );
  DFFQX1 \Match_list_reg[135]  ( .D(n285), .CK(CLK), .Q(n875) );
  DFFQX1 \Match_list_reg[136]  ( .D(n284), .CK(CLK), .Q(n874) );
  DFFQX1 \Match_list_reg[137]  ( .D(n283), .CK(CLK), .Q(n873) );
  DFFQX1 \Match_list_reg[138]  ( .D(n282), .CK(CLK), .Q(n872) );
  DFFQX1 \Match_list_reg[139]  ( .D(n281), .CK(CLK), .Q(n871) );
  DFFQX1 \Match_list_reg[141]  ( .D(n279), .CK(CLK), .Q(n869) );
  DFFQX1 \Match_list_reg[142]  ( .D(n278), .CK(CLK), .Q(n868) );
  DFFQX1 \Match_list_reg[143]  ( .D(n277), .CK(CLK), .Q(n867) );
  DFFQX1 \Match_list_reg[193]  ( .D(n227), .CK(CLK), .Q(n817) );
  DFFQX1 \Match_list_reg[194]  ( .D(n226), .CK(CLK), .Q(n816) );
  DFFQX1 \Match_list_reg[195]  ( .D(n225), .CK(CLK), .Q(n815) );
  DFFQX1 \Match_list_reg[196]  ( .D(n224), .CK(CLK), .Q(n814) );
  DFFQX1 \Match_list_reg[197]  ( .D(n223), .CK(CLK), .Q(n813) );
  DFFQX1 \Match_list_reg[198]  ( .D(n222), .CK(CLK), .Q(n812) );
  DFFQX1 \Match_list_reg[199]  ( .D(n221), .CK(CLK), .Q(n811) );
  DFFQX1 \Match_list_reg[200]  ( .D(n220), .CK(CLK), .Q(n810) );
  DFFQX1 \Match_list_reg[201]  ( .D(n219), .CK(CLK), .Q(n809) );
  DFFQX1 \Match_list_reg[203]  ( .D(n217), .CK(CLK), .Q(n807) );
  DFFQX1 \Match_list_reg[204]  ( .D(n216), .CK(CLK), .Q(n806) );
  DFFQX1 \Match_list_reg[205]  ( .D(n215), .CK(CLK), .Q(n805) );
  DFFQX1 \Match_list_reg[206]  ( .D(n214), .CK(CLK), .Q(n804) );
  DFFQX1 \Match_list_reg[207]  ( .D(n213), .CK(CLK), .Q(n803) );
  DFFQX1 \Match_list_reg[208]  ( .D(n212), .CK(CLK), .Q(n802) );
  DFFQX1 \Match_list_reg[209]  ( .D(n211), .CK(CLK), .Q(n801) );
  DFFQX1 \Match_list_reg[210]  ( .D(n210), .CK(CLK), .Q(n800) );
  DFFQX1 \Match_list_reg[211]  ( .D(n209), .CK(CLK), .Q(n799) );
  DFFQX1 \Match_list_reg[212]  ( .D(n208), .CK(CLK), .Q(n798) );
  DFFQX1 \Match_list_reg[213]  ( .D(n207), .CK(CLK), .Q(n797) );
  DFFQX1 \Match_list_reg[214]  ( .D(n206), .CK(CLK), .Q(n796) );
  DFFQX1 \Match_list_reg[215]  ( .D(n205), .CK(CLK), .Q(n795) );
  DFFQX1 \Match_list_reg[216]  ( .D(n204), .CK(CLK), .Q(n794) );
  DFFQX1 \Match_list_reg[218]  ( .D(n202), .CK(CLK), .Q(n792) );
  DFFQX1 \Match_list_reg[220]  ( .D(n200), .CK(CLK), .Q(n790) );
  DFFQX1 \Match_list_reg[221]  ( .D(n199), .CK(CLK), .Q(n789) );
  DFFQX1 \Match_list_reg[222]  ( .D(n198), .CK(CLK), .Q(n788) );
  DFFQX1 \Match_list_reg[223]  ( .D(n197), .CK(CLK), .Q(n787) );
  DFFQX1 \Match_list_reg[224]  ( .D(n196), .CK(CLK), .Q(n786) );
  DFFQX1 \Match_list_reg[225]  ( .D(n195), .CK(CLK), .Q(n785) );
  DFFQX1 \Match_list_reg[226]  ( .D(n194), .CK(CLK), .Q(n784) );
  DFFQX1 \Match_list_reg[227]  ( .D(n193), .CK(CLK), .Q(n783) );
  DFFQX1 \Match_list_reg[228]  ( .D(n192), .CK(CLK), .Q(n782) );
  DFFQX1 \Match_list_reg[229]  ( .D(n191), .CK(CLK), .Q(n781) );
  DFFQX1 \Match_list_reg[230]  ( .D(n190), .CK(CLK), .Q(n780) );
  DFFQX1 \Match_list_reg[231]  ( .D(n189), .CK(CLK), .Q(n779) );
  DFFQX1 \Match_list_reg[232]  ( .D(n188), .CK(CLK), .Q(n778) );
  DFFQX1 \Match_list_reg[234]  ( .D(n186), .CK(CLK), .Q(n776) );
  DFFQX1 \Match_list_reg[235]  ( .D(n185), .CK(CLK), .Q(n775) );
  DFFQX1 \Match_list_reg[236]  ( .D(n184), .CK(CLK), .Q(n774) );
  DFFQX1 \Match_list_reg[237]  ( .D(n183), .CK(CLK), .Q(n773) );
  DFFQX1 \Match_list_reg[238]  ( .D(n182), .CK(CLK), .Q(n772) );
  DFFQX1 \Match_list_reg[239]  ( .D(n181), .CK(CLK), .Q(n771) );
  DFFQX1 \Match_list_reg[5]  ( .D(n415), .CK(CLK), .Q(n1005) );
  DFFQX1 \Match_list_reg[20]  ( .D(n400), .CK(CLK), .Q(n990) );
  DFFQX1 \Match_list_reg[35]  ( .D(n385), .CK(CLK), .Q(n975) );
  DFFQX1 \Match_list_reg[48]  ( .D(n372), .CK(CLK), .Q(n962) );
  DFFQX1 \Match_list_reg[49]  ( .D(n371), .CK(CLK), .Q(n961) );
  DFFQX1 \Match_list_reg[50]  ( .D(n370), .CK(CLK), .Q(n960) );
  DFFQX1 \Match_list_reg[51]  ( .D(n369), .CK(CLK), .Q(n959) );
  DFFQX1 \Match_list_reg[52]  ( .D(n368), .CK(CLK), .Q(n958) );
  DFFQX1 \Match_list_reg[53]  ( .D(n367), .CK(CLK), .Q(n957) );
  DFFQX1 \Match_list_reg[54]  ( .D(n366), .CK(CLK), .Q(n956) );
  DFFQX1 \Match_list_reg[55]  ( .D(n365), .CK(CLK), .Q(n955) );
  DFFQX1 \Match_list_reg[56]  ( .D(n364), .CK(CLK), .Q(n954) );
  DFFQX1 \Match_list_reg[57]  ( .D(n363), .CK(CLK), .Q(n953) );
  DFFQX1 \Match_list_reg[58]  ( .D(n362), .CK(CLK), .Q(n952) );
  DFFQX1 \Match_list_reg[59]  ( .D(n361), .CK(CLK), .Q(n951) );
  DFFQX1 \Match_list_reg[60]  ( .D(n360), .CK(CLK), .Q(n950) );
  DFFQX1 \Match_list_reg[61]  ( .D(n359), .CK(CLK), .Q(n949) );
  DFFQX1 \Match_list_reg[62]  ( .D(n358), .CK(CLK), .Q(n948) );
  DFFQX1 \Match_list_reg[63]  ( .D(n357), .CK(CLK), .Q(n947) );
  DFFQX1 \Match_list_reg[64]  ( .D(n356), .CK(CLK), .Q(n946) );
  DFFQX1 \Match_list_reg[65]  ( .D(n355), .CK(CLK), .Q(n945) );
  DFFQX1 \Match_list_reg[66]  ( .D(n354), .CK(CLK), .Q(n944) );
  DFFQX1 \Match_list_reg[67]  ( .D(n353), .CK(CLK), .Q(n943) );
  DFFQX1 \Match_list_reg[68]  ( .D(n352), .CK(CLK), .Q(n942) );
  DFFQX1 \Match_list_reg[69]  ( .D(n351), .CK(CLK), .Q(n941) );
  DFFQX1 \Match_list_reg[70]  ( .D(n350), .CK(CLK), .Q(n940) );
  DFFQX1 \Match_list_reg[71]  ( .D(n349), .CK(CLK), .Q(n939) );
  DFFQX1 \Match_list_reg[72]  ( .D(n348), .CK(CLK), .Q(n938) );
  DFFQX1 \Match_list_reg[80]  ( .D(n340), .CK(CLK), .Q(n930) );
  DFFQX1 \Match_list_reg[95]  ( .D(n325), .CK(CLK), .Q(n915) );
  DFFQX1 \Match_list_reg[96]  ( .D(n324), .CK(CLK), .Q(n914) );
  DFFQX1 \Match_list_reg[97]  ( .D(n323), .CK(CLK), .Q(n913) );
  DFFQX1 \Match_list_reg[98]  ( .D(n322), .CK(CLK), .Q(n912) );
  DFFQX1 \Match_list_reg[99]  ( .D(n321), .CK(CLK), .Q(n911) );
  DFFQX1 \Match_list_reg[100]  ( .D(n320), .CK(CLK), .Q(n910) );
  DFFQX1 \Match_list_reg[101]  ( .D(n319), .CK(CLK), .Q(n909) );
  DFFQX1 \Match_list_reg[102]  ( .D(n318), .CK(CLK), .Q(n908) );
  DFFQX1 \Match_list_reg[103]  ( .D(n317), .CK(CLK), .Q(n907) );
  DFFQX1 \Match_list_reg[104]  ( .D(n316), .CK(CLK), .Q(n906) );
  DFFQX1 \Match_list_reg[105]  ( .D(n315), .CK(CLK), .Q(n905) );
  DFFQX1 \Match_list_reg[106]  ( .D(n314), .CK(CLK), .Q(n904) );
  DFFQX1 \Match_list_reg[107]  ( .D(n313), .CK(CLK), .Q(n903) );
  DFFQX1 \Match_list_reg[108]  ( .D(n312), .CK(CLK), .Q(n902) );
  DFFQX1 \Match_list_reg[109]  ( .D(n311), .CK(CLK), .Q(n901) );
  DFFQX1 \Match_list_reg[110]  ( .D(n310), .CK(CLK), .Q(n900) );
  DFFQX1 \Match_list_reg[111]  ( .D(n309), .CK(CLK), .Q(n899) );
  DFFQX1 \Match_list_reg[112]  ( .D(n308), .CK(CLK), .Q(n898) );
  DFFQX1 \Match_list_reg[113]  ( .D(n307), .CK(CLK), .Q(n897) );
  DFFQX1 \Match_list_reg[114]  ( .D(n306), .CK(CLK), .Q(n896) );
  DFFQX1 \Match_list_reg[115]  ( .D(n305), .CK(CLK), .Q(n895) );
  DFFQX1 \Match_list_reg[116]  ( .D(n304), .CK(CLK), .Q(n894) );
  DFFQX1 \Match_list_reg[117]  ( .D(n303), .CK(CLK), .Q(n893) );
  DFFQX1 \Match_list_reg[118]  ( .D(n302), .CK(CLK), .Q(n892) );
  DFFQX1 \Match_list_reg[119]  ( .D(n301), .CK(CLK), .Q(n891) );
  DFFQX1 \Match_list_reg[120]  ( .D(n300), .CK(CLK), .Q(n890) );
  DFFQX1 \Match_list_reg[125]  ( .D(n295), .CK(CLK), .Q(n885) );
  DFFQX1 \Match_list_reg[140]  ( .D(n280), .CK(CLK), .Q(n870) );
  DFFQX1 \Match_list_reg[144]  ( .D(n276), .CK(CLK), .Q(n866) );
  DFFQX1 \Match_list_reg[145]  ( .D(n275), .CK(CLK), .Q(n865) );
  DFFQX1 \Match_list_reg[146]  ( .D(n274), .CK(CLK), .Q(n864) );
  DFFQX1 \Match_list_reg[147]  ( .D(n273), .CK(CLK), .Q(n863) );
  DFFQX1 \Match_list_reg[148]  ( .D(n272), .CK(CLK), .Q(n862) );
  DFFQX1 \Match_list_reg[149]  ( .D(n271), .CK(CLK), .Q(n861) );
  DFFQX1 \Match_list_reg[150]  ( .D(n270), .CK(CLK), .Q(n860) );
  DFFQX1 \Match_list_reg[168]  ( .D(n252), .CK(CLK), .Q(n842) );
  DFFQX1 \Match_list_reg[169]  ( .D(n251), .CK(CLK), .Q(n841) );
  DFFQX1 \Match_list_reg[170]  ( .D(n250), .CK(CLK), .Q(n840) );
  DFFQX1 \Match_list_reg[171]  ( .D(n249), .CK(CLK), .Q(n839) );
  DFFQX1 \Match_list_reg[172]  ( .D(n248), .CK(CLK), .Q(n838) );
  DFFQX1 \Match_list_reg[173]  ( .D(n247), .CK(CLK), .Q(n837) );
  DFFQX1 \Match_list_reg[174]  ( .D(n246), .CK(CLK), .Q(n836) );
  DFFQX1 \Match_list_reg[175]  ( .D(n245), .CK(CLK), .Q(n835) );
  DFFQX1 \Match_list_reg[176]  ( .D(n244), .CK(CLK), .Q(n834) );
  DFFQX1 \Match_list_reg[177]  ( .D(n243), .CK(CLK), .Q(n833) );
  DFFQX1 \Match_list_reg[178]  ( .D(n242), .CK(CLK), .Q(n832) );
  DFFQX1 \Match_list_reg[179]  ( .D(n241), .CK(CLK), .Q(n831) );
  DFFQX1 \Match_list_reg[180]  ( .D(n240), .CK(CLK), .Q(n830) );
  DFFQX1 \Match_list_reg[181]  ( .D(n239), .CK(CLK), .Q(n829) );
  DFFQX1 \Match_list_reg[182]  ( .D(n238), .CK(CLK), .Q(n828) );
  DFFQX1 \Match_list_reg[183]  ( .D(n237), .CK(CLK), .Q(n827) );
  DFFQX1 \Match_list_reg[184]  ( .D(n236), .CK(CLK), .Q(n826) );
  DFFQX1 \Match_list_reg[185]  ( .D(n235), .CK(CLK), .Q(n825) );
  DFFQX1 \Match_list_reg[186]  ( .D(n234), .CK(CLK), .Q(n824) );
  DFFQX1 \Match_list_reg[187]  ( .D(n233), .CK(CLK), .Q(n823) );
  DFFQX1 \Match_list_reg[188]  ( .D(n232), .CK(CLK), .Q(n822) );
  DFFQX1 \Match_list_reg[189]  ( .D(n231), .CK(CLK), .Q(n821) );
  DFFQX1 \Match_list_reg[190]  ( .D(n230), .CK(CLK), .Q(n820) );
  DFFQX1 \Match_list_reg[191]  ( .D(n229), .CK(CLK), .Q(n819) );
  DFFQX1 \Match_list_reg[192]  ( .D(n228), .CK(CLK), .Q(n818) );
  DFFQX1 \Match_list_reg[202]  ( .D(n218), .CK(CLK), .Q(n808) );
  DFFQX1 \Match_list_reg[217]  ( .D(n203), .CK(CLK), .Q(n793) );
  DFFQX1 \Match_list_reg[233]  ( .D(n187), .CK(CLK), .Q(n777) );
  DFFQX1 \MinCost_reg[2]  ( .D(n431), .CK(CLK), .Q(n769) );
  DFFQX1 \MinCost_reg[6]  ( .D(n427), .CK(CLK), .Q(n768) );
  DFFQX1 \MinCost_reg[0]  ( .D(n434), .CK(CLK), .Q(n770) );
  DFFQX1 \Match_list_reg[219]  ( .D(n201), .CK(CLK), .Q(n791) );
  DFFQX1 \Match_list_reg[151]  ( .D(n269), .CK(CLK), .Q(n859) );
  DFFQX1 \Match_list_reg[152]  ( .D(n268), .CK(CLK), .Q(n858) );
  DFFQX1 \Match_list_reg[153]  ( .D(n267), .CK(CLK), .Q(n857) );
  DFFQX1 \Match_list_reg[154]  ( .D(n266), .CK(CLK), .Q(n856) );
  DFFQX1 \Match_list_reg[155]  ( .D(n265), .CK(CLK), .Q(n855) );
  DFFQX1 \Match_list_reg[156]  ( .D(n264), .CK(CLK), .Q(n854) );
  DFFQX1 \Match_list_reg[157]  ( .D(n263), .CK(CLK), .Q(n853) );
  DFFQX1 \Match_list_reg[158]  ( .D(n262), .CK(CLK), .Q(n852) );
  DFFQX1 \Match_list_reg[159]  ( .D(n261), .CK(CLK), .Q(n851) );
  DFFQX1 \Match_list_reg[160]  ( .D(n260), .CK(CLK), .Q(n850) );
  DFFQX1 \Match_list_reg[161]  ( .D(n259), .CK(CLK), .Q(n849) );
  DFFQX1 \Match_list_reg[162]  ( .D(n258), .CK(CLK), .Q(n848) );
  DFFQX1 \Match_list_reg[163]  ( .D(n257), .CK(CLK), .Q(n847) );
  DFFQX1 \Match_list_reg[164]  ( .D(n256), .CK(CLK), .Q(n846) );
  DFFQX1 \Match_list_reg[165]  ( .D(n255), .CK(CLK), .Q(n845) );
  DFFQX1 \Match_list_reg[166]  ( .D(n254), .CK(CLK), .Q(n844) );
  DFFQX1 \Match_list_reg[167]  ( .D(n253), .CK(CLK), .Q(n843) );
  DFFSX2 \cs_reg[0]  ( .D(n754), .CK(CLK), .SN(n180), .QN(cs[0]) );
  DFFQX1 \MatchCount_reg[1]  ( .D(n423), .CK(CLK), .Q(n765) );
  NAND2X4 U3 ( .A(n655), .B(n700), .Y(n656) );
  NAND2X4 U4 ( .A(n711), .B(n700), .Y(n701) );
  INVX6 U5 ( .A(n723), .Y(n724) );
  INVX3 U6 ( .A(n610), .Y(n718) );
  NOR2X1 U7 ( .A(cs[1]), .B(cs[0]), .Y(N1527) );
  INVXL U8 ( .A(n719), .Y(n720) );
  NAND2XL U9 ( .A(N1527), .B(n180), .Y(n591) );
  NAND2XL U10 ( .A(n610), .B(MatchCount[3]), .Y(n624) );
  NOR4XL U11 ( .A(n607), .B(n606), .C(n605), .D(n604), .Y(n608) );
  NAND2XL U12 ( .A(n705), .B(n704), .Y(n716) );
  NAND2XL U13 ( .A(n655), .B(n693), .Y(n639) );
  NAND2XL U14 ( .A(n708), .B(n643), .Y(n645) );
  INVXL U15 ( .A(n652), .Y(n704) );
  CLKINVX2 U16 ( .A(RST), .Y(n180) );
  NAND2X1 U17 ( .A(n711), .B(n693), .Y(n694) );
  NAND3X1 U18 ( .A(n711), .B(n719), .C(n710), .Y(n712) );
  INVX1 U19 ( .A(n692), .Y(n614) );
  AOI211X1 U20 ( .A0(n722), .A1(n610), .B0(n721), .C0(n720), .Y(n723) );
  NAND2X1 U21 ( .A(n637), .B(n717), .Y(n692) );
  NAND2X1 U22 ( .A(n637), .B(n707), .Y(n721) );
  NAND2X1 U23 ( .A(n708), .B(n716), .Y(n719) );
  NAND3X1 U24 ( .A(MatchCount[2]), .B(n689), .C(n1), .Y(n698) );
  NAND3X1 U25 ( .A(MatchCount[1]), .B(n689), .C(n688), .Y(n706) );
  INVX1 U26 ( .A(n708), .Y(n625) );
  AOI22X1 U27 ( .A0(n610), .A1(n654), .B0(n708), .B1(n697), .Y(n700) );
  INVX2 U28 ( .A(n675), .Y(n554) );
  INVX1 U29 ( .A(n689), .Y(n642) );
  AOI221X4 U30 ( .A0(in_use), .A1(n680), .B0(n755), .B1(n756), .C0(n591), .Y(
        n708) );
  INVX1 U31 ( .A(n592), .Y(n635) );
  NAND2X1 U32 ( .A(TempAcc[9]), .B(\MinCost[9]_BAR ), .Y(n600) );
  NOR2X1 U33 ( .A(TempAcc[5]), .B(\MinCost[5]_BAR ), .Y(n607) );
  NAND3X1 U34 ( .A(N1527), .B(in_use), .C(n180), .Y(n612) );
  INVX2 U35 ( .A(n765), .Y(n1) );
  INVX2 U36 ( .A(n766), .Y(n688) );
  INVX1 U37 ( .A(TempAcc[0]), .Y(n667) );
  INVX1 U38 ( .A(TempAcc[1]), .Y(n669) );
  AOI2BB2X2 U39 ( .B0(n618), .B1(TempAcc[9]), .A0N(n618), .A1N(TempAcc[9]), 
        .Y(n619) );
  ADDHX1 U40 ( .A(TempAcc[8]), .B(n617), .CO(n618), .S(n590) );
  NOR2X4 U41 ( .A(n718), .B(MatchCount[3]), .Y(n689) );
  AOI2BB2X1 U42 ( .B0(n180), .B1(n613), .A0N(n678), .A1N(n612), .Y(n637) );
  NAND2XL U43 ( .A(\MinCost[4]_BAR ), .B(TempAcc[4]), .Y(n601) );
  NOR2X1 U44 ( .A(n668), .B(TempAcc[0]), .Y(n606) );
  NOR2BX1 U45 ( .AN(n637), .B(n689), .Y(n629) );
  INVXL U46 ( .A(n596), .Y(n549) );
  NAND2XL U47 ( .A(n677), .B(n680), .Y(n678) );
  NOR2XL U48 ( .A(n585), .B(n584), .Y(n586) );
  NOR2XL U49 ( .A(n578), .B(n577), .Y(n579) );
  CLKINVX1 U50 ( .A(W[2]), .Y(\W[2]_BAR ) );
  CLKINVX1 U51 ( .A(W[1]), .Y(\W[1]_BAR ) );
  NAND2XL U52 ( .A(MatchCount[2]), .B(n686), .Y(n649) );
  OAI211XL U53 ( .A0(n709), .A1(n650), .B0(n686), .C0(n651), .Y(n592) );
  NAND4XL U54 ( .A(n603), .B(n602), .C(n601), .D(n600), .Y(n604) );
  NOR4XL U55 ( .A(n599), .B(n598), .C(n597), .D(n596), .Y(n602) );
  INVXL U56 ( .A(n593), .Y(n595) );
  NAND2XL U57 ( .A(n652), .B(n705), .Y(n697) );
  NAND3XL U58 ( .A(MatchCount[3]), .B(n638), .C(n688), .Y(n627) );
  INVXL U59 ( .A(n641), .Y(n630) );
  AOI2BB2X1 U60 ( .B0(n708), .B1(n690), .A0N(n638), .A1N(n718), .Y(n693) );
  NAND2X1 U61 ( .A(n635), .B(n704), .Y(n690) );
  NAND2X1 U62 ( .A(n688), .B(n708), .Y(n717) );
  NOR2XL U63 ( .A(MatchCount[1]), .B(MatchCount[2]), .Y(n646) );
  AOI221X1 U64 ( .A0(MatchCount[3]), .A1(n610), .B0(n688), .B1(n610), .C0(n721), .Y(n655) );
  NAND2X1 U65 ( .A(n652), .B(n635), .Y(n643) );
  NOR2XL U66 ( .A(n651), .B(MatchCount[3]), .Y(n615) );
  OAI22XL U67 ( .A0(TempAcc[9]), .A1(\MinCost[9]_BAR ), .B0(TempAcc[8]), .B1(
        \MinCost[8]_BAR ), .Y(n597) );
  OAI22XL U68 ( .A0(n673), .A1(TempAcc[6]), .B0(n676), .B1(TempAcc[7]), .Y(
        n605) );
  NOR2X1 U69 ( .A(n684), .B(n650), .Y(n652) );
  CLKINVX1 U70 ( .A(MatchCount[2]), .Y(n709) );
  OAI211X1 U71 ( .A0(n770), .A1(n667), .B0(n609), .C0(n608), .Y(n677) );
  AOI211XL U72 ( .A0(TempAcc[5]), .A1(\MinCost[5]_BAR ), .B0(n595), .C0(n594), 
        .Y(n609) );
  NAND2XL U73 ( .A(N1527), .B(valid), .Y(n664) );
  INVXL U74 ( .A(TempAcc[6]), .Y(n672) );
  OAI22X1 U75 ( .A0(n707), .A1(n716), .B0(n709), .B1(n706), .Y(n713) );
  BUFX4 U76 ( .A(n712), .Y(n714) );
  BUFX4 U77 ( .A(n626), .Y(n634) );
  OAI22XL U78 ( .A0(n625), .A1(n627), .B0(n624), .B1(n641), .Y(n626) );
  OAI21XL U79 ( .A0(n686), .A1(n641), .B0(n708), .Y(n622) );
  BUFX4 U80 ( .A(n621), .Y(n632) );
  OAI22XL U81 ( .A0(n625), .A1(n620), .B0(n624), .B1(n651), .Y(n621) );
  NAND2XL U82 ( .A(MatchCount[3]), .B(n630), .Y(n620) );
  CLKBUFX3 U83 ( .A(n657), .Y(n659) );
  BUFX2 U84 ( .A(n653), .Y(n657) );
  BUFX4 U85 ( .A(n639), .Y(n640) );
  BUFX2 U86 ( .A(fake_permutation[20]), .Y(n747) );
  BUFX2 U87 ( .A(fake_permutation[5]), .Y(n731) );
  BUFX2 U88 ( .A(fake_permutation[23]), .Y(n752) );
  BUFX2 U89 ( .A(fake_permutation[22]), .Y(n749) );
  BUFX2 U90 ( .A(fake_permutation[21]), .Y(n748) );
  BUFX2 U91 ( .A(fake_permutation[19]), .Y(n746) );
  BUFX2 U92 ( .A(fake_permutation[18]), .Y(n745) );
  BUFX2 U93 ( .A(fake_permutation[17]), .Y(n744) );
  BUFX2 U94 ( .A(fake_permutation[16]), .Y(n743) );
  BUFX2 U95 ( .A(fake_permutation[15]), .Y(n742) );
  BUFX2 U96 ( .A(fake_permutation[14]), .Y(n741) );
  BUFX2 U97 ( .A(fake_permutation[13]), .Y(n740) );
  BUFX2 U98 ( .A(fake_permutation[12]), .Y(n739) );
  BUFX2 U99 ( .A(fake_permutation[11]), .Y(n738) );
  BUFX2 U100 ( .A(fake_permutation[10]), .Y(n737) );
  BUFX2 U101 ( .A(fake_permutation[9]), .Y(n736) );
  BUFX2 U102 ( .A(fake_permutation[8]), .Y(n735) );
  BUFX2 U103 ( .A(fake_permutation[7]), .Y(n733) );
  BUFX2 U104 ( .A(fake_permutation[6]), .Y(n732) );
  BUFX2 U105 ( .A(fake_permutation[4]), .Y(n730) );
  BUFX2 U106 ( .A(fake_permutation[3]), .Y(n729) );
  BUFX2 U107 ( .A(fake_permutation[2]), .Y(n728) );
  BUFX2 U108 ( .A(fake_permutation[1]), .Y(n727) );
  BUFX2 U109 ( .A(fake_permutation[0]), .Y(n725) );
  INVXL U110 ( .A(TempAcc[7]), .Y(n674) );
  OAI21X1 U111 ( .A0(n553), .A1(n597), .B0(n600), .Y(n680) );
  AOI211XL U112 ( .A0(n549), .A1(n548), .B0(n547), .C0(n546), .Y(n550) );
  OAI2BB1XL U113 ( .A0N(n678), .A1N(Update), .B0(in_use), .Y(n681) );
  ADDFXL U114 ( .A(TempAcc[1]), .B(Cost[1]), .CI(n560), .CO(n562), .S(n559) );
  INVXL U115 ( .A(TempAcc[3]), .Y(n670) );
  CLKINVX1 U116 ( .A(MinCost[3]), .Y(\MinCost[3]_BAR ) );
  CLKINVX1 U117 ( .A(MinCost[4]), .Y(\MinCost[4]_BAR ) );
  CLKINVX1 U118 ( .A(MinCost[5]), .Y(\MinCost[5]_BAR ) );
  INVXL U119 ( .A(TempAcc[5]), .Y(n671) );
  CLKINVX1 U120 ( .A(MinCost[8]), .Y(\MinCost[8]_BAR ) );
  CLKINVX1 U121 ( .A(MinCost[9]), .Y(\MinCost[9]_BAR ) );
  CLKINVX1 U122 ( .A(MatchCount[3]), .Y(n686) );
  NAND3XL U123 ( .A(n684), .B(MatchCount[2]), .C(n686), .Y(n722) );
  NAND2XL U124 ( .A(n684), .B(n709), .Y(n682) );
  ADDFXL U125 ( .A(TempAcc[5]), .B(Cost[5]), .CI(n568), .CO(n570), .S(n567) );
  ADDFXL U126 ( .A(TempAcc[4]), .B(Cost[4]), .CI(n566), .CO(n568), .S(n565) );
  ADDFXL U127 ( .A(TempAcc[3]), .B(Cost[3]), .CI(n564), .CO(n566), .S(n563) );
  ADDFXL U128 ( .A(TempAcc[2]), .B(Cost[2]), .CI(n562), .CO(n564), .S(n561) );
  BUFX16 U129 ( .A(n764), .Y(MatchCount[2]) );
  BUFX16 U130 ( .A(n763), .Y(MatchCount[3]) );
  AOI32XL U131 ( .A0(n576), .A1(W[0]), .A2(n575), .B0(n574), .B1(\W[0]_BAR ), 
        .Y(J[0]) );
  AOI22XL U132 ( .A0(n661), .A1(\Array[3][0] ), .B0(n583), .B1(\Array[7][0] ), 
        .Y(n575) );
  AOI22XL U133 ( .A0(n661), .A1(\Array[3][1] ), .B0(n583), .B1(\Array[7][1] ), 
        .Y(n587) );
  AOI32XL U134 ( .A0(n581), .A1(W[0]), .A2(n580), .B0(n579), .B1(\W[0]_BAR ), 
        .Y(J[2]) );
  AOI22XL U135 ( .A0(\Array[3][2] ), .A1(n661), .B0(\Array[7][2] ), .B1(n583), 
        .Y(n580) );
  INVX16 U136 ( .A(n1), .Y(MatchCount[1]) );
  AOI221X1 U137 ( .A0(n766), .A1(n610), .B0(MatchCount[3]), .B1(n610), .C0(
        n692), .Y(n711) );
  NAND2BX1 U138 ( .AN(n583), .B(cs[0]), .Y(n542) );
  NAND3X1 U139 ( .A(n688), .B(n1), .C(n709), .Y(n651) );
  NOR2X1 U140 ( .A(n688), .B(n1), .Y(n684) );
  NOR2XL U141 ( .A(MatchCount[2]), .B(n1), .Y(n638) );
  NAND2XL U142 ( .A(MatchCount[2]), .B(n1), .Y(n654) );
  BUFX12 U143 ( .A(n843), .Y(Match_list[167]) );
  BUFX12 U144 ( .A(n844), .Y(Match_list[166]) );
  BUFX12 U145 ( .A(n845), .Y(Match_list[165]) );
  BUFX12 U146 ( .A(n846), .Y(Match_list[164]) );
  BUFX12 U147 ( .A(n847), .Y(Match_list[163]) );
  BUFX12 U148 ( .A(n848), .Y(Match_list[162]) );
  BUFX12 U149 ( .A(n849), .Y(Match_list[161]) );
  BUFX12 U150 ( .A(n850), .Y(Match_list[160]) );
  BUFX12 U151 ( .A(n851), .Y(Match_list[159]) );
  BUFX12 U152 ( .A(n852), .Y(Match_list[158]) );
  BUFX12 U153 ( .A(n853), .Y(Match_list[157]) );
  BUFX12 U154 ( .A(n854), .Y(Match_list[156]) );
  BUFX12 U155 ( .A(n855), .Y(Match_list[155]) );
  BUFX12 U156 ( .A(n856), .Y(Match_list[154]) );
  BUFX12 U157 ( .A(n857), .Y(Match_list[153]) );
  BUFX12 U158 ( .A(n858), .Y(Match_list[152]) );
  BUFX12 U159 ( .A(n859), .Y(Match_list[151]) );
  BUFX12 U160 ( .A(n791), .Y(Match_list[219]) );
  AO22X1 U161 ( .A0(n729), .A1(n634), .B0(Match_list[219]), .B1(n633), .Y(n201) );
  AOI22XL U162 ( .A0(n582), .A1(\Array[1][1] ), .B0(n660), .B1(\Array[5][1] ), 
        .Y(n588) );
  AOI22XL U163 ( .A0(\Array[1][2] ), .A1(n582), .B0(\Array[5][2] ), .B1(n660), 
        .Y(n581) );
  AOI22XL U164 ( .A0(n582), .A1(\Array[1][0] ), .B0(n660), .B1(\Array[5][0] ), 
        .Y(n576) );
  INVX12 U165 ( .A(n668), .Y(MinCost[0]) );
  CLKINVX1 U166 ( .A(n770), .Y(n668) );
  INVX12 U167 ( .A(n673), .Y(MinCost[6]) );
  CLKINVX1 U168 ( .A(n768), .Y(n673) );
  NOR2XL U169 ( .A(n768), .B(n672), .Y(n594) );
  BUFX12 U170 ( .A(n769), .Y(MinCost[2]) );
  AO22X1 U171 ( .A0(n554), .A1(TempAcc[2]), .B0(n675), .B1(MinCost[2]), .Y(
        n431) );
  NAND2XL U172 ( .A(n544), .B(n769), .Y(n593) );
  BUFX12 U173 ( .A(n777), .Y(Match_list[233]) );
  BUFX12 U174 ( .A(n793), .Y(Match_list[217]) );
  BUFX12 U175 ( .A(n808), .Y(Match_list[202]) );
  BUFX12 U176 ( .A(n818), .Y(Match_list[192]) );
  BUFX12 U177 ( .A(n819), .Y(Match_list[191]) );
  BUFX12 U178 ( .A(n820), .Y(Match_list[190]) );
  BUFX12 U179 ( .A(n821), .Y(Match_list[189]) );
  BUFX12 U180 ( .A(n822), .Y(Match_list[188]) );
  BUFX12 U181 ( .A(n823), .Y(Match_list[187]) );
  BUFX12 U182 ( .A(n824), .Y(Match_list[186]) );
  BUFX12 U183 ( .A(n825), .Y(Match_list[185]) );
  BUFX12 U184 ( .A(n826), .Y(Match_list[184]) );
  BUFX12 U185 ( .A(n827), .Y(Match_list[183]) );
  BUFX12 U186 ( .A(n828), .Y(Match_list[182]) );
  BUFX12 U187 ( .A(n829), .Y(Match_list[181]) );
  BUFX12 U188 ( .A(n830), .Y(Match_list[180]) );
  BUFX12 U189 ( .A(n831), .Y(Match_list[179]) );
  BUFX12 U190 ( .A(n832), .Y(Match_list[178]) );
  BUFX12 U191 ( .A(n833), .Y(Match_list[177]) );
  BUFX12 U192 ( .A(n834), .Y(Match_list[176]) );
  BUFX12 U193 ( .A(n835), .Y(Match_list[175]) );
  BUFX12 U194 ( .A(n836), .Y(Match_list[174]) );
  BUFX12 U195 ( .A(n837), .Y(Match_list[173]) );
  BUFX12 U196 ( .A(n838), .Y(Match_list[172]) );
  BUFX12 U197 ( .A(n839), .Y(Match_list[171]) );
  BUFX12 U198 ( .A(n840), .Y(Match_list[170]) );
  BUFX12 U199 ( .A(n841), .Y(Match_list[169]) );
  BUFX12 U200 ( .A(n842), .Y(Match_list[168]) );
  BUFX12 U201 ( .A(n860), .Y(Match_list[150]) );
  BUFX12 U202 ( .A(n861), .Y(Match_list[149]) );
  BUFX12 U203 ( .A(n862), .Y(Match_list[148]) );
  BUFX12 U204 ( .A(n863), .Y(Match_list[147]) );
  BUFX12 U205 ( .A(n864), .Y(Match_list[146]) );
  BUFX12 U206 ( .A(n865), .Y(Match_list[145]) );
  BUFX12 U207 ( .A(n866), .Y(Match_list[144]) );
  BUFX12 U208 ( .A(n870), .Y(Match_list[140]) );
  BUFX12 U209 ( .A(n885), .Y(Match_list[125]) );
  BUFX12 U210 ( .A(n890), .Y(Match_list[120]) );
  BUFX12 U211 ( .A(n891), .Y(Match_list[119]) );
  BUFX12 U212 ( .A(n892), .Y(Match_list[118]) );
  BUFX12 U213 ( .A(n893), .Y(Match_list[117]) );
  BUFX12 U214 ( .A(n894), .Y(Match_list[116]) );
  BUFX12 U215 ( .A(n895), .Y(Match_list[115]) );
  BUFX12 U216 ( .A(n896), .Y(Match_list[114]) );
  BUFX12 U217 ( .A(n897), .Y(Match_list[113]) );
  BUFX12 U218 ( .A(n898), .Y(Match_list[112]) );
  BUFX12 U219 ( .A(n899), .Y(Match_list[111]) );
  BUFX12 U220 ( .A(n900), .Y(Match_list[110]) );
  BUFX12 U221 ( .A(n901), .Y(Match_list[109]) );
  BUFX12 U222 ( .A(n902), .Y(Match_list[108]) );
  BUFX12 U223 ( .A(n903), .Y(Match_list[107]) );
  BUFX12 U224 ( .A(n904), .Y(Match_list[106]) );
  BUFX12 U225 ( .A(n905), .Y(Match_list[105]) );
  BUFX12 U226 ( .A(n906), .Y(Match_list[104]) );
  BUFX12 U227 ( .A(n907), .Y(Match_list[103]) );
  BUFX12 U228 ( .A(n908), .Y(Match_list[102]) );
  BUFX12 U229 ( .A(n909), .Y(Match_list[101]) );
  BUFX12 U230 ( .A(n910), .Y(Match_list[100]) );
  BUFX12 U231 ( .A(n911), .Y(Match_list[99]) );
  BUFX12 U232 ( .A(n912), .Y(Match_list[98]) );
  BUFX12 U233 ( .A(n913), .Y(Match_list[97]) );
  BUFX12 U234 ( .A(n914), .Y(Match_list[96]) );
  BUFX12 U235 ( .A(n915), .Y(Match_list[95]) );
  BUFX12 U236 ( .A(n930), .Y(Match_list[80]) );
  BUFX12 U237 ( .A(n938), .Y(Match_list[72]) );
  BUFX12 U238 ( .A(n939), .Y(Match_list[71]) );
  BUFX12 U239 ( .A(n940), .Y(Match_list[70]) );
  BUFX12 U240 ( .A(n941), .Y(Match_list[69]) );
  BUFX12 U241 ( .A(n942), .Y(Match_list[68]) );
  BUFX12 U242 ( .A(n943), .Y(Match_list[67]) );
  BUFX12 U243 ( .A(n944), .Y(Match_list[66]) );
  BUFX12 U244 ( .A(n945), .Y(Match_list[65]) );
  BUFX12 U245 ( .A(n946), .Y(Match_list[64]) );
  BUFX12 U246 ( .A(n947), .Y(Match_list[63]) );
  BUFX12 U247 ( .A(n948), .Y(Match_list[62]) );
  BUFX12 U248 ( .A(n949), .Y(Match_list[61]) );
  BUFX12 U249 ( .A(n950), .Y(Match_list[60]) );
  BUFX12 U250 ( .A(n951), .Y(Match_list[59]) );
  BUFX12 U251 ( .A(n952), .Y(Match_list[58]) );
  BUFX12 U252 ( .A(n953), .Y(Match_list[57]) );
  BUFX12 U253 ( .A(n954), .Y(Match_list[56]) );
  BUFX12 U254 ( .A(n955), .Y(Match_list[55]) );
  BUFX12 U255 ( .A(n956), .Y(Match_list[54]) );
  BUFX12 U256 ( .A(n957), .Y(Match_list[53]) );
  BUFX12 U257 ( .A(n958), .Y(Match_list[52]) );
  BUFX12 U258 ( .A(n959), .Y(Match_list[51]) );
  BUFX12 U259 ( .A(n960), .Y(Match_list[50]) );
  BUFX12 U260 ( .A(n961), .Y(Match_list[49]) );
  BUFX12 U261 ( .A(n962), .Y(Match_list[48]) );
  BUFX12 U262 ( .A(n975), .Y(Match_list[35]) );
  BUFX12 U263 ( .A(n990), .Y(Match_list[20]) );
  BUFX12 U264 ( .A(n1005), .Y(Match_list[5]) );
  BUFX12 U265 ( .A(n771), .Y(Match_list[239]) );
  AO22X1 U266 ( .A0(n752), .A1(n634), .B0(Match_list[239]), .B1(n633), .Y(n181) );
  BUFX12 U267 ( .A(n772), .Y(Match_list[238]) );
  AO22X1 U268 ( .A0(n749), .A1(n634), .B0(Match_list[238]), .B1(n633), .Y(n182) );
  BUFX12 U269 ( .A(n773), .Y(Match_list[237]) );
  AO22X1 U270 ( .A0(n748), .A1(n634), .B0(Match_list[237]), .B1(n633), .Y(n183) );
  BUFX12 U271 ( .A(n774), .Y(Match_list[236]) );
  AO22X1 U272 ( .A0(n747), .A1(n634), .B0(Match_list[236]), .B1(n633), .Y(n184) );
  BUFX12 U273 ( .A(n775), .Y(Match_list[235]) );
  AO22X1 U274 ( .A0(n746), .A1(n634), .B0(Match_list[235]), .B1(n633), .Y(n185) );
  BUFX12 U275 ( .A(n776), .Y(Match_list[234]) );
  AO22X1 U276 ( .A0(n745), .A1(n634), .B0(Match_list[234]), .B1(n633), .Y(n186) );
  BUFX12 U277 ( .A(n778), .Y(Match_list[232]) );
  AO22X1 U278 ( .A0(n743), .A1(n634), .B0(Match_list[232]), .B1(n633), .Y(n188) );
  BUFX12 U279 ( .A(n779), .Y(Match_list[231]) );
  AO22X1 U280 ( .A0(n742), .A1(n634), .B0(Match_list[231]), .B1(n633), .Y(n189) );
  BUFX12 U281 ( .A(n780), .Y(Match_list[230]) );
  AO22X1 U282 ( .A0(n741), .A1(n634), .B0(Match_list[230]), .B1(n633), .Y(n190) );
  BUFX12 U283 ( .A(n781), .Y(Match_list[229]) );
  AO22X1 U284 ( .A0(n740), .A1(n634), .B0(Match_list[229]), .B1(n633), .Y(n191) );
  BUFX12 U285 ( .A(n782), .Y(Match_list[228]) );
  AO22X1 U286 ( .A0(n739), .A1(n634), .B0(Match_list[228]), .B1(n633), .Y(n192) );
  BUFX12 U287 ( .A(n783), .Y(Match_list[227]) );
  AO22X1 U288 ( .A0(n738), .A1(n634), .B0(Match_list[227]), .B1(n633), .Y(n193) );
  BUFX12 U289 ( .A(n784), .Y(Match_list[226]) );
  AO22X1 U290 ( .A0(n737), .A1(n634), .B0(Match_list[226]), .B1(n633), .Y(n194) );
  BUFX12 U291 ( .A(n785), .Y(Match_list[225]) );
  AO22X1 U292 ( .A0(n736), .A1(n634), .B0(Match_list[225]), .B1(n633), .Y(n195) );
  BUFX12 U293 ( .A(n786), .Y(Match_list[224]) );
  AO22X1 U294 ( .A0(n735), .A1(n634), .B0(Match_list[224]), .B1(n633), .Y(n196) );
  BUFX12 U295 ( .A(n787), .Y(Match_list[223]) );
  AO22X1 U296 ( .A0(n733), .A1(n634), .B0(Match_list[223]), .B1(n633), .Y(n197) );
  BUFX12 U297 ( .A(n788), .Y(Match_list[222]) );
  AO22X1 U298 ( .A0(n732), .A1(n634), .B0(Match_list[222]), .B1(n633), .Y(n198) );
  BUFX12 U299 ( .A(n789), .Y(Match_list[221]) );
  AO22X1 U300 ( .A0(n731), .A1(n634), .B0(Match_list[221]), .B1(n633), .Y(n199) );
  BUFX12 U301 ( .A(n790), .Y(Match_list[220]) );
  AO22X1 U302 ( .A0(n730), .A1(n634), .B0(Match_list[220]), .B1(n633), .Y(n200) );
  BUFX12 U303 ( .A(n792), .Y(Match_list[218]) );
  AO22X1 U304 ( .A0(n728), .A1(n634), .B0(Match_list[218]), .B1(n633), .Y(n202) );
  BUFX12 U305 ( .A(n794), .Y(Match_list[216]) );
  AO22X1 U306 ( .A0(n725), .A1(n634), .B0(Match_list[216]), .B1(n633), .Y(n204) );
  BUFX12 U307 ( .A(n795), .Y(Match_list[215]) );
  AO22X1 U308 ( .A0(n752), .A1(n632), .B0(Match_list[215]), .B1(n631), .Y(n205) );
  BUFX12 U309 ( .A(n796), .Y(Match_list[214]) );
  AO22X1 U310 ( .A0(n749), .A1(n632), .B0(Match_list[214]), .B1(n631), .Y(n206) );
  BUFX12 U311 ( .A(n797), .Y(Match_list[213]) );
  AO22X1 U312 ( .A0(n748), .A1(n632), .B0(Match_list[213]), .B1(n631), .Y(n207) );
  BUFX12 U313 ( .A(n798), .Y(Match_list[212]) );
  AO22X1 U314 ( .A0(n747), .A1(n632), .B0(Match_list[212]), .B1(n631), .Y(n208) );
  BUFX12 U315 ( .A(n799), .Y(Match_list[211]) );
  AO22X1 U316 ( .A0(n746), .A1(n632), .B0(Match_list[211]), .B1(n631), .Y(n209) );
  BUFX12 U317 ( .A(n800), .Y(Match_list[210]) );
  AO22X1 U318 ( .A0(n745), .A1(n632), .B0(Match_list[210]), .B1(n631), .Y(n210) );
  BUFX12 U319 ( .A(n801), .Y(Match_list[209]) );
  AO22X1 U320 ( .A0(n744), .A1(n632), .B0(Match_list[209]), .B1(n631), .Y(n211) );
  BUFX12 U321 ( .A(n802), .Y(Match_list[208]) );
  AO22X1 U322 ( .A0(n743), .A1(n632), .B0(Match_list[208]), .B1(n631), .Y(n212) );
  BUFX12 U323 ( .A(n803), .Y(Match_list[207]) );
  AO22X1 U324 ( .A0(n742), .A1(n632), .B0(Match_list[207]), .B1(n631), .Y(n213) );
  BUFX12 U325 ( .A(n804), .Y(Match_list[206]) );
  AO22X1 U326 ( .A0(n741), .A1(n632), .B0(Match_list[206]), .B1(n631), .Y(n214) );
  BUFX12 U327 ( .A(n805), .Y(Match_list[205]) );
  AO22X1 U328 ( .A0(n740), .A1(n632), .B0(Match_list[205]), .B1(n631), .Y(n215) );
  BUFX12 U329 ( .A(n806), .Y(Match_list[204]) );
  AO22X1 U330 ( .A0(n739), .A1(n632), .B0(Match_list[204]), .B1(n631), .Y(n216) );
  BUFX12 U331 ( .A(n807), .Y(Match_list[203]) );
  AO22X1 U332 ( .A0(n738), .A1(n632), .B0(Match_list[203]), .B1(n631), .Y(n217) );
  BUFX12 U333 ( .A(n809), .Y(Match_list[201]) );
  AO22X1 U334 ( .A0(n736), .A1(n632), .B0(Match_list[201]), .B1(n631), .Y(n219) );
  BUFX12 U335 ( .A(n810), .Y(Match_list[200]) );
  AO22X1 U336 ( .A0(n735), .A1(n632), .B0(Match_list[200]), .B1(n631), .Y(n220) );
  BUFX12 U337 ( .A(n811), .Y(Match_list[199]) );
  AO22X1 U338 ( .A0(n733), .A1(n632), .B0(Match_list[199]), .B1(n631), .Y(n221) );
  BUFX12 U339 ( .A(n812), .Y(Match_list[198]) );
  AO22X1 U340 ( .A0(n732), .A1(n632), .B0(Match_list[198]), .B1(n631), .Y(n222) );
  BUFX12 U341 ( .A(n813), .Y(Match_list[197]) );
  AO22X1 U342 ( .A0(n731), .A1(n632), .B0(Match_list[197]), .B1(n631), .Y(n223) );
  BUFX12 U343 ( .A(n814), .Y(Match_list[196]) );
  AO22X1 U344 ( .A0(n730), .A1(n632), .B0(Match_list[196]), .B1(n631), .Y(n224) );
  BUFX12 U345 ( .A(n815), .Y(Match_list[195]) );
  AO22X1 U346 ( .A0(n729), .A1(n632), .B0(Match_list[195]), .B1(n631), .Y(n225) );
  BUFX12 U347 ( .A(n816), .Y(Match_list[194]) );
  AO22X1 U348 ( .A0(n728), .A1(n632), .B0(Match_list[194]), .B1(n631), .Y(n226) );
  BUFX12 U349 ( .A(n817), .Y(Match_list[193]) );
  AO22X1 U350 ( .A0(n727), .A1(n632), .B0(Match_list[193]), .B1(n631), .Y(n227) );
  BUFX12 U351 ( .A(n867), .Y(Match_list[143]) );
  AO22X1 U352 ( .A0(n752), .A1(n659), .B0(Match_list[143]), .B1(n656), .Y(n277) );
  BUFX12 U353 ( .A(n868), .Y(Match_list[142]) );
  AO22X1 U354 ( .A0(n749), .A1(n659), .B0(Match_list[142]), .B1(n656), .Y(n278) );
  BUFX12 U355 ( .A(n869), .Y(Match_list[141]) );
  AO22X1 U356 ( .A0(n748), .A1(n659), .B0(Match_list[141]), .B1(n656), .Y(n279) );
  BUFX12 U357 ( .A(n871), .Y(Match_list[139]) );
  AO22X1 U358 ( .A0(n746), .A1(n659), .B0(Match_list[139]), .B1(n656), .Y(n281) );
  BUFX12 U359 ( .A(n872), .Y(Match_list[138]) );
  AO22X1 U360 ( .A0(n745), .A1(n659), .B0(Match_list[138]), .B1(n656), .Y(n282) );
  BUFX12 U361 ( .A(n873), .Y(Match_list[137]) );
  AO22X1 U362 ( .A0(n744), .A1(n659), .B0(Match_list[137]), .B1(n656), .Y(n283) );
  BUFX12 U363 ( .A(n874), .Y(Match_list[136]) );
  AO22X1 U364 ( .A0(n743), .A1(n659), .B0(Match_list[136]), .B1(n656), .Y(n284) );
  BUFX12 U365 ( .A(n875), .Y(Match_list[135]) );
  AO22X1 U366 ( .A0(n742), .A1(n659), .B0(Match_list[135]), .B1(n656), .Y(n285) );
  BUFX12 U367 ( .A(n876), .Y(Match_list[134]) );
  AO22X1 U368 ( .A0(n741), .A1(n659), .B0(Match_list[134]), .B1(n656), .Y(n286) );
  BUFX12 U369 ( .A(n877), .Y(Match_list[133]) );
  AO22X1 U370 ( .A0(n740), .A1(n659), .B0(Match_list[133]), .B1(n656), .Y(n287) );
  BUFX12 U371 ( .A(n878), .Y(Match_list[132]) );
  AO22X1 U372 ( .A0(n739), .A1(n659), .B0(Match_list[132]), .B1(n656), .Y(n288) );
  BUFX12 U373 ( .A(n879), .Y(Match_list[131]) );
  AO22X1 U374 ( .A0(n738), .A1(n657), .B0(Match_list[131]), .B1(n656), .Y(n289) );
  BUFX12 U375 ( .A(n880), .Y(Match_list[130]) );
  AO22X1 U376 ( .A0(n737), .A1(n657), .B0(Match_list[130]), .B1(n656), .Y(n290) );
  BUFX12 U377 ( .A(n881), .Y(Match_list[129]) );
  AO22X1 U378 ( .A0(n736), .A1(n657), .B0(Match_list[129]), .B1(n656), .Y(n291) );
  BUFX12 U379 ( .A(n882), .Y(Match_list[128]) );
  AO22X1 U380 ( .A0(n735), .A1(n657), .B0(Match_list[128]), .B1(n656), .Y(n292) );
  BUFX12 U381 ( .A(n883), .Y(Match_list[127]) );
  AO22X1 U382 ( .A0(n733), .A1(n657), .B0(Match_list[127]), .B1(n656), .Y(n293) );
  BUFX12 U383 ( .A(n884), .Y(Match_list[126]) );
  AO22X1 U384 ( .A0(n732), .A1(n657), .B0(Match_list[126]), .B1(n656), .Y(n294) );
  BUFX12 U385 ( .A(n886), .Y(Match_list[124]) );
  AO22X1 U386 ( .A0(n730), .A1(n657), .B0(Match_list[124]), .B1(n656), .Y(n296) );
  BUFX12 U387 ( .A(n887), .Y(Match_list[123]) );
  AO22X1 U388 ( .A0(n729), .A1(n657), .B0(Match_list[123]), .B1(n656), .Y(n297) );
  BUFX12 U389 ( .A(n888), .Y(Match_list[122]) );
  AO22X1 U390 ( .A0(n728), .A1(n657), .B0(Match_list[122]), .B1(n656), .Y(n298) );
  BUFX12 U391 ( .A(n889), .Y(Match_list[121]) );
  AO22X1 U392 ( .A0(n727), .A1(n657), .B0(Match_list[121]), .B1(n656), .Y(n299) );
  BUFX12 U393 ( .A(n916), .Y(Match_list[94]) );
  AO22X1 U394 ( .A0(n749), .A1(n636), .B0(Match_list[94]), .B1(n640), .Y(n326)
         );
  BUFX12 U395 ( .A(n917), .Y(Match_list[93]) );
  AO22X1 U396 ( .A0(n748), .A1(n636), .B0(Match_list[93]), .B1(n640), .Y(n327)
         );
  BUFX12 U397 ( .A(n918), .Y(Match_list[92]) );
  AO22X1 U398 ( .A0(n747), .A1(n636), .B0(Match_list[92]), .B1(n640), .Y(n328)
         );
  BUFX12 U399 ( .A(n919), .Y(Match_list[91]) );
  AO22X1 U400 ( .A0(n746), .A1(n636), .B0(Match_list[91]), .B1(n640), .Y(n329)
         );
  BUFX12 U401 ( .A(n920), .Y(Match_list[90]) );
  AO22X1 U402 ( .A0(n745), .A1(n636), .B0(Match_list[90]), .B1(n640), .Y(n330)
         );
  BUFX12 U403 ( .A(n921), .Y(Match_list[89]) );
  AO22X1 U404 ( .A0(n744), .A1(n636), .B0(Match_list[89]), .B1(n640), .Y(n331)
         );
  BUFX12 U405 ( .A(n922), .Y(Match_list[88]) );
  AO22X1 U406 ( .A0(n743), .A1(n636), .B0(Match_list[88]), .B1(n640), .Y(n332)
         );
  BUFX12 U407 ( .A(n923), .Y(Match_list[87]) );
  AO22X1 U408 ( .A0(n742), .A1(n636), .B0(Match_list[87]), .B1(n640), .Y(n333)
         );
  BUFX12 U409 ( .A(n924), .Y(Match_list[86]) );
  AO22X1 U410 ( .A0(n741), .A1(n636), .B0(Match_list[86]), .B1(n640), .Y(n334)
         );
  BUFX12 U411 ( .A(n925), .Y(Match_list[85]) );
  AO22X1 U412 ( .A0(n740), .A1(n636), .B0(Match_list[85]), .B1(n640), .Y(n335)
         );
  BUFX12 U413 ( .A(n926), .Y(Match_list[84]) );
  AO22X1 U414 ( .A0(n739), .A1(n636), .B0(Match_list[84]), .B1(n640), .Y(n336)
         );
  BUFX12 U415 ( .A(n927), .Y(Match_list[83]) );
  AO22X1 U416 ( .A0(n738), .A1(n636), .B0(Match_list[83]), .B1(n640), .Y(n337)
         );
  BUFX12 U417 ( .A(n928), .Y(Match_list[82]) );
  AO22X1 U418 ( .A0(n737), .A1(n636), .B0(Match_list[82]), .B1(n640), .Y(n338)
         );
  BUFX12 U419 ( .A(n929), .Y(Match_list[81]) );
  AO22X1 U420 ( .A0(n736), .A1(n636), .B0(Match_list[81]), .B1(n640), .Y(n339)
         );
  BUFX12 U421 ( .A(n931), .Y(Match_list[79]) );
  AO22X1 U422 ( .A0(n733), .A1(n636), .B0(Match_list[79]), .B1(n640), .Y(n341)
         );
  BUFX12 U423 ( .A(n932), .Y(Match_list[78]) );
  AO22X1 U424 ( .A0(n732), .A1(n636), .B0(Match_list[78]), .B1(n640), .Y(n342)
         );
  BUFX12 U425 ( .A(n933), .Y(Match_list[77]) );
  AO22X1 U426 ( .A0(n731), .A1(n636), .B0(Match_list[77]), .B1(n640), .Y(n343)
         );
  BUFX12 U427 ( .A(n934), .Y(Match_list[76]) );
  AO22X1 U428 ( .A0(n730), .A1(n636), .B0(Match_list[76]), .B1(n640), .Y(n344)
         );
  BUFX12 U429 ( .A(n935), .Y(Match_list[75]) );
  AO22X1 U430 ( .A0(n729), .A1(n636), .B0(Match_list[75]), .B1(n640), .Y(n345)
         );
  BUFX12 U431 ( .A(n936), .Y(Match_list[74]) );
  AO22X1 U432 ( .A0(n728), .A1(n636), .B0(Match_list[74]), .B1(n640), .Y(n346)
         );
  BUFX12 U433 ( .A(n937), .Y(Match_list[73]) );
  AO22X1 U434 ( .A0(n727), .A1(n636), .B0(Match_list[73]), .B1(n640), .Y(n347)
         );
  BUFX12 U435 ( .A(n963), .Y(Match_list[47]) );
  AO22X1 U436 ( .A0(n752), .A1(n644), .B0(Match_list[47]), .B1(n648), .Y(n373)
         );
  BUFX12 U437 ( .A(n964), .Y(Match_list[46]) );
  AO22X1 U438 ( .A0(n749), .A1(n647), .B0(Match_list[46]), .B1(n648), .Y(n374)
         );
  BUFX12 U439 ( .A(n965), .Y(Match_list[45]) );
  AO22X1 U440 ( .A0(n748), .A1(n644), .B0(Match_list[45]), .B1(n648), .Y(n375)
         );
  BUFX12 U441 ( .A(n966), .Y(Match_list[44]) );
  AO22X1 U442 ( .A0(n747), .A1(n644), .B0(Match_list[44]), .B1(n648), .Y(n376)
         );
  BUFX12 U443 ( .A(n967), .Y(Match_list[43]) );
  AO22X1 U444 ( .A0(n746), .A1(n644), .B0(Match_list[43]), .B1(n648), .Y(n377)
         );
  BUFX12 U445 ( .A(n968), .Y(Match_list[42]) );
  AO22X1 U446 ( .A0(n745), .A1(n647), .B0(Match_list[42]), .B1(n648), .Y(n378)
         );
  BUFX12 U447 ( .A(n969), .Y(Match_list[41]) );
  AO22X1 U448 ( .A0(n744), .A1(n644), .B0(Match_list[41]), .B1(n648), .Y(n379)
         );
  BUFX12 U449 ( .A(n970), .Y(Match_list[40]) );
  AO22X1 U450 ( .A0(n743), .A1(n647), .B0(Match_list[40]), .B1(n648), .Y(n380)
         );
  BUFX12 U451 ( .A(n971), .Y(Match_list[39]) );
  AO22X1 U452 ( .A0(n742), .A1(n644), .B0(Match_list[39]), .B1(n648), .Y(n381)
         );
  BUFX12 U453 ( .A(n972), .Y(Match_list[38]) );
  AO22X1 U454 ( .A0(n741), .A1(n644), .B0(Match_list[38]), .B1(n648), .Y(n382)
         );
  BUFX12 U455 ( .A(n973), .Y(Match_list[37]) );
  AO22X1 U456 ( .A0(n740), .A1(n644), .B0(Match_list[37]), .B1(n648), .Y(n383)
         );
  BUFX12 U457 ( .A(n974), .Y(Match_list[36]) );
  AO22X1 U458 ( .A0(n739), .A1(n644), .B0(Match_list[36]), .B1(n648), .Y(n384)
         );
  BUFX12 U459 ( .A(n976), .Y(Match_list[34]) );
  AO22X1 U460 ( .A0(n737), .A1(n647), .B0(Match_list[34]), .B1(n648), .Y(n386)
         );
  BUFX12 U461 ( .A(n977), .Y(Match_list[33]) );
  AO22X1 U462 ( .A0(n736), .A1(n647), .B0(Match_list[33]), .B1(n648), .Y(n387)
         );
  BUFX12 U463 ( .A(n978), .Y(Match_list[32]) );
  AO22X1 U464 ( .A0(n735), .A1(n647), .B0(Match_list[32]), .B1(n648), .Y(n388)
         );
  BUFX12 U465 ( .A(n979), .Y(Match_list[31]) );
  AO22X1 U466 ( .A0(n733), .A1(n647), .B0(Match_list[31]), .B1(n648), .Y(n389)
         );
  BUFX12 U467 ( .A(n980), .Y(Match_list[30]) );
  AO22X1 U468 ( .A0(n732), .A1(n647), .B0(Match_list[30]), .B1(n648), .Y(n390)
         );
  BUFX12 U469 ( .A(n981), .Y(Match_list[29]) );
  AO22X1 U470 ( .A0(n731), .A1(n647), .B0(Match_list[29]), .B1(n648), .Y(n391)
         );
  BUFX12 U471 ( .A(n982), .Y(Match_list[28]) );
  AO22X1 U472 ( .A0(n730), .A1(n647), .B0(Match_list[28]), .B1(n648), .Y(n392)
         );
  BUFX12 U473 ( .A(n983), .Y(Match_list[27]) );
  AO22X1 U474 ( .A0(n729), .A1(n647), .B0(Match_list[27]), .B1(n648), .Y(n393)
         );
  BUFX12 U475 ( .A(n984), .Y(Match_list[26]) );
  AO22X1 U476 ( .A0(n728), .A1(n647), .B0(Match_list[26]), .B1(n648), .Y(n394)
         );
  BUFX12 U477 ( .A(n985), .Y(Match_list[25]) );
  AO22X1 U478 ( .A0(n727), .A1(n647), .B0(Match_list[25]), .B1(n648), .Y(n395)
         );
  BUFX12 U479 ( .A(n986), .Y(Match_list[24]) );
  AO22X1 U480 ( .A0(n725), .A1(n647), .B0(Match_list[24]), .B1(n648), .Y(n396)
         );
  BUFX12 U481 ( .A(n987), .Y(Match_list[23]) );
  AO22X1 U482 ( .A0(n752), .A1(n611), .B0(Match_list[23]), .B1(n616), .Y(n397)
         );
  BUFX12 U483 ( .A(n988), .Y(Match_list[22]) );
  AO22X1 U484 ( .A0(n749), .A1(n611), .B0(Match_list[22]), .B1(n616), .Y(n398)
         );
  BUFX12 U485 ( .A(n989), .Y(Match_list[21]) );
  AO22X1 U486 ( .A0(n748), .A1(n611), .B0(Match_list[21]), .B1(n616), .Y(n399)
         );
  BUFX12 U487 ( .A(n991), .Y(Match_list[19]) );
  AO22X1 U488 ( .A0(n746), .A1(n611), .B0(Match_list[19]), .B1(n616), .Y(n401)
         );
  BUFX12 U489 ( .A(n992), .Y(Match_list[18]) );
  AO22X1 U490 ( .A0(n745), .A1(n611), .B0(Match_list[18]), .B1(n616), .Y(n402)
         );
  BUFX12 U491 ( .A(n993), .Y(Match_list[17]) );
  AO22X1 U492 ( .A0(n744), .A1(n611), .B0(Match_list[17]), .B1(n616), .Y(n403)
         );
  BUFX12 U493 ( .A(n994), .Y(Match_list[16]) );
  AO22X1 U494 ( .A0(n743), .A1(n611), .B0(Match_list[16]), .B1(n616), .Y(n404)
         );
  BUFX12 U495 ( .A(n995), .Y(Match_list[15]) );
  AO22X1 U496 ( .A0(n742), .A1(n611), .B0(Match_list[15]), .B1(n616), .Y(n405)
         );
  BUFX12 U497 ( .A(n996), .Y(Match_list[14]) );
  AO22X1 U498 ( .A0(n741), .A1(n611), .B0(Match_list[14]), .B1(n616), .Y(n406)
         );
  BUFX12 U499 ( .A(n997), .Y(Match_list[13]) );
  AO22X1 U500 ( .A0(n740), .A1(n611), .B0(Match_list[13]), .B1(n616), .Y(n407)
         );
  BUFX12 U501 ( .A(n998), .Y(Match_list[12]) );
  AO22X1 U502 ( .A0(n739), .A1(n611), .B0(Match_list[12]), .B1(n616), .Y(n408)
         );
  BUFX12 U503 ( .A(n999), .Y(Match_list[11]) );
  AO22X1 U504 ( .A0(n738), .A1(n611), .B0(Match_list[11]), .B1(n616), .Y(n409)
         );
  BUFX12 U505 ( .A(n1000), .Y(Match_list[10]) );
  AO22X1 U506 ( .A0(n737), .A1(n611), .B0(Match_list[10]), .B1(n616), .Y(n410)
         );
  BUFX12 U507 ( .A(n1001), .Y(Match_list[9]) );
  AO22X1 U508 ( .A0(n736), .A1(n611), .B0(Match_list[9]), .B1(n616), .Y(n411)
         );
  BUFX12 U509 ( .A(n1002), .Y(Match_list[8]) );
  AO22X1 U510 ( .A0(n735), .A1(n611), .B0(Match_list[8]), .B1(n616), .Y(n412)
         );
  BUFX12 U511 ( .A(n1003), .Y(Match_list[7]) );
  AO22X1 U512 ( .A0(n733), .A1(n611), .B0(Match_list[7]), .B1(n616), .Y(n413)
         );
  BUFX12 U513 ( .A(n1004), .Y(Match_list[6]) );
  AO22X1 U514 ( .A0(n732), .A1(n611), .B0(Match_list[6]), .B1(n616), .Y(n414)
         );
  BUFX12 U515 ( .A(n1006), .Y(Match_list[4]) );
  AO22X1 U516 ( .A0(n730), .A1(n611), .B0(Match_list[4]), .B1(n616), .Y(n416)
         );
  BUFX12 U517 ( .A(n1007), .Y(Match_list[3]) );
  AO22X1 U518 ( .A0(n729), .A1(n611), .B0(Match_list[3]), .B1(n616), .Y(n417)
         );
  BUFX12 U519 ( .A(n1008), .Y(Match_list[2]) );
  AO22X1 U520 ( .A0(n728), .A1(n611), .B0(Match_list[2]), .B1(n616), .Y(n418)
         );
  BUFX12 U521 ( .A(n1009), .Y(Match_list[1]) );
  AO22X1 U522 ( .A0(n727), .A1(n611), .B0(Match_list[1]), .B1(n616), .Y(n419)
         );
  BUFX12 U523 ( .A(n1010), .Y(Match_list[0]) );
  AO22X1 U524 ( .A0(n725), .A1(n611), .B0(Match_list[0]), .B1(n616), .Y(n420)
         );
  INVX12 U525 ( .A(n676), .Y(MinCost[7]) );
  CLKINVX1 U526 ( .A(n767), .Y(n676) );
  OA21XL U527 ( .A0(n767), .A1(n674), .B0(n551), .Y(n603) );
  INVX12 U528 ( .A(n688), .Y(MatchCount[0]) );
  NAND2X1 U529 ( .A(n766), .B(n708), .Y(n707) );
  NAND2X1 U530 ( .A(n766), .B(n646), .Y(n641) );
  NOR2X4 U531 ( .A(RST), .B(n666), .Y(n665) );
  CLKBUFX3 U532 ( .A(n644), .Y(n647) );
  CLKBUFX3 U533 ( .A(n691), .Y(n695) );
  NOR2X4 U534 ( .A(RST), .B(n664), .Y(n666) );
  INVXL U535 ( .A(TempAcc[2]), .Y(n544) );
  INVXL U536 ( .A(n601), .Y(n546) );
  NAND2XL U537 ( .A(TempAcc[8]), .B(\MinCost[8]_BAR ), .Y(n551) );
  NOR2X1 U538 ( .A(n766), .B(MatchCount[1]), .Y(n650) );
  OAI22XL U539 ( .A0(n688), .A1(n698), .B0(n717), .B1(n697), .Y(n653) );
  CLKBUFX3 U540 ( .A(n699), .Y(n702) );
  NAND2XL U541 ( .A(n708), .B(n627), .Y(n628) );
  NOR2XL U542 ( .A(n573), .B(n572), .Y(n574) );
  CLKBUFX3 U543 ( .A(n713), .Y(n715) );
  ADDFXL U544 ( .A(TempAcc[6]), .B(Cost[6]), .CI(n570), .CO(n589), .S(n569) );
  CLKINVX1 U545 ( .A(MinCost[1]), .Y(\MinCost[1]_BAR ) );
  AOI32XL U546 ( .A0(n588), .A1(W[0]), .A2(n587), .B0(n586), .B1(\W[0]_BAR ), 
        .Y(J[1]) );
  OAI32XL U547 ( .A0(W[1]), .A1(\W[0]_BAR ), .A2(n761), .B0(n662), .B1(
        \W[1]_BAR ), .Y(n436) );
  AO22X1 U548 ( .A0(n731), .A1(n611), .B0(Match_list[5]), .B1(n616), .Y(n415)
         );
  AO22X1 U549 ( .A0(n747), .A1(n611), .B0(Match_list[20]), .B1(n616), .Y(n400)
         );
  AO22X1 U550 ( .A0(n738), .A1(n647), .B0(Match_list[35]), .B1(n648), .Y(n385)
         );
  AO22X1 U551 ( .A0(n725), .A1(n636), .B0(Match_list[72]), .B1(n640), .Y(n348)
         );
  AO22X1 U552 ( .A0(n735), .A1(n636), .B0(Match_list[80]), .B1(n640), .Y(n340)
         );
  AO22X1 U553 ( .A0(n752), .A1(n636), .B0(Match_list[95]), .B1(n640), .Y(n325)
         );
  AO22X1 U554 ( .A0(n725), .A1(n657), .B0(Match_list[120]), .B1(n656), .Y(n300) );
  AO22X1 U555 ( .A0(n731), .A1(n653), .B0(Match_list[125]), .B1(n656), .Y(n295) );
  AO22X1 U556 ( .A0(n747), .A1(n659), .B0(Match_list[140]), .B1(n656), .Y(n280) );
  AO22X1 U557 ( .A0(n725), .A1(n632), .B0(Match_list[192]), .B1(n631), .Y(n228) );
  AO22X1 U558 ( .A0(n737), .A1(n632), .B0(Match_list[202]), .B1(n631), .Y(n218) );
  AO22X1 U559 ( .A0(n727), .A1(n634), .B0(Match_list[217]), .B1(n633), .Y(n203) );
  AO22X1 U560 ( .A0(n744), .A1(n634), .B0(Match_list[233]), .B1(n633), .Y(n187) );
  NAND3XL U561 ( .A(n556), .B(n760), .C(n555), .Y(n464) );
  OAI21X1 U563 ( .A0(cs[1]), .A1(\W[0]_BAR ), .B0(cs[0]), .Y(n662) );
  NOR2X2 U564 ( .A(\W[1]_BAR ), .B(\W[2]_BAR ), .Y(n583) );
  NAND2XL U565 ( .A(cs[1]), .B(done), .Y(n556) );
  NAND4XL U566 ( .A(n664), .B(n662), .C(n542), .D(n556), .Y(n543) );
  INVXL U567 ( .A(n543), .Y(n754) );
  NAND2X1 U568 ( .A(n757), .B(cs[0]), .Y(n761) );
  NAND2XL U569 ( .A(cs[1]), .B(cs[0]), .Y(n760) );
  OAI22XL U570 ( .A0(TempAcc[3]), .A1(\MinCost[3]_BAR ), .B0(TempAcc[4]), .B1(
        \MinCost[4]_BAR ), .Y(n596) );
  OAI222XL U571 ( .A0(n669), .A1(n606), .B0(n669), .B1(MinCost[1]), .C0(n606), 
        .C1(MinCost[1]), .Y(n545) );
  OAI22XL U572 ( .A0(n544), .A1(n769), .B0(n670), .B1(MinCost[3]), .Y(n598) );
  AO21X1 U573 ( .A0(n593), .A1(n545), .B0(n598), .Y(n548) );
  NOR2XL U574 ( .A(MinCost[5]), .B(n671), .Y(n547) );
  AOI2BB2X1 U575 ( .B0(n673), .B1(TempAcc[6]), .A0N(n607), .A1N(n550), .Y(n552) );
  OA21XL U576 ( .A0(n605), .A1(n552), .B0(n603), .Y(n553) );
  AO21X2 U577 ( .A0(in_use), .A1(n680), .B0(n756), .Y(n675) );
  NAND3XL U578 ( .A(cs[0]), .B(W[0]), .C(n583), .Y(n555) );
  NAND2X2 U579 ( .A(Acc), .B(n180), .Y(n557) );
  NOR2BX1 U580 ( .AN(n558), .B(n557), .Y(N113) );
  ADDHXL U581 ( .A(Cost[0]), .B(TempAcc[0]), .CO(n560), .S(n558) );
  NOR2BX1 U582 ( .AN(n559), .B(n557), .Y(N114) );
  NOR2BX1 U583 ( .AN(n561), .B(n557), .Y(N115) );
  NOR2BX1 U584 ( .AN(n563), .B(n557), .Y(N116) );
  NOR2BX1 U585 ( .AN(n565), .B(n557), .Y(N117) );
  NOR2BX1 U586 ( .AN(n567), .B(n557), .Y(N118) );
  NOR2BX1 U587 ( .AN(n569), .B(n557), .Y(N119) );
  NOR2BX1 U588 ( .AN(n571), .B(n557), .Y(N120) );
  NOR2X1 U589 ( .A(W[1]), .B(W[2]), .Y(n582) );
  NOR2X2 U590 ( .A(W[1]), .B(\W[2]_BAR ), .Y(n660) );
  NOR2X2 U591 ( .A(W[2]), .B(\W[1]_BAR ), .Y(n661) );
  AO22X1 U592 ( .A0(n582), .A1(\Array[0][0] ), .B0(n660), .B1(\Array[4][0] ), 
        .Y(n573) );
  AO22X1 U593 ( .A0(n661), .A1(\Array[2][0] ), .B0(n583), .B1(\Array[6][0] ), 
        .Y(n572) );
  AO22X1 U594 ( .A0(n582), .A1(\Array[0][2] ), .B0(n660), .B1(\Array[4][2] ), 
        .Y(n578) );
  AO22X1 U595 ( .A0(n661), .A1(\Array[2][2] ), .B0(n583), .B1(\Array[6][2] ), 
        .Y(n577) );
  AO22X1 U596 ( .A0(n582), .A1(\Array[0][1] ), .B0(n660), .B1(\Array[4][1] ), 
        .Y(n585) );
  AO22X1 U597 ( .A0(n661), .A1(\Array[2][1] ), .B0(n583), .B1(\Array[6][1] ), 
        .Y(n584) );
  ADDHXL U598 ( .A(TempAcc[7]), .B(n589), .CO(n617), .S(n571) );
  NOR2BX1 U599 ( .AN(n590), .B(n557), .Y(N121) );
  NAND2XL U600 ( .A(n755), .B(n756), .Y(n435) );
  OAI22XL U601 ( .A0(TempAcc[1]), .A1(\MinCost[1]_BAR ), .B0(n669), .B1(
        MinCost[1]), .Y(n599) );
  NOR2X4 U602 ( .A(n612), .B(n677), .Y(n610) );
  OAI2BB2X4 U603 ( .B0(n707), .B1(n643), .A0N(n610), .A1N(n615), .Y(n611) );
  NAND2XL U604 ( .A(N1527), .B(n435), .Y(n613) );
  OAI211X4 U605 ( .A0(n615), .A1(n718), .B0(n614), .C0(n645), .Y(n616) );
  NOR2BX1 U606 ( .AN(n619), .B(n557), .Y(N122) );
  INVXL U607 ( .A(n651), .Y(n623) );
  OAI211X4 U608 ( .A0(n623), .A1(n718), .B0(n629), .C0(n622), .Y(n631) );
  OAI211X4 U609 ( .A0(n630), .A1(n718), .B0(n629), .C0(n628), .Y(n633) );
  OAI22X4 U610 ( .A0(n642), .A1(n682), .B0(n717), .B1(n690), .Y(n636) );
  OAI22X2 U611 ( .A0(n643), .A1(n717), .B0(n642), .B1(n641), .Y(n644) );
  OAI211X4 U612 ( .A0(n646), .A1(n718), .B0(n655), .C0(n645), .Y(n648) );
  OAI22XL U613 ( .A0(n686), .A1(n651), .B0(n650), .B1(n649), .Y(n705) );
  NOR2XL U614 ( .A(cs[0]), .B(n757), .Y(n465) );
  OAI22XL U615 ( .A0(W[0]), .A1(n761), .B0(\W[0]_BAR ), .B1(n760), .Y(n462) );
  AOI21XL U616 ( .A0(n661), .A1(W[0]), .B0(n660), .Y(n663) );
  OAI22XL U617 ( .A0(n663), .A1(n761), .B0(\W[2]_BAR ), .B1(n662), .Y(n461) );
  AO22X1 U618 ( .A0(\Array[7][0] ), .A1(n665), .B0(n666), .B1(permutation[21]), 
        .Y(n460) );
  AO22X1 U619 ( .A0(\Array[0][2] ), .A1(n665), .B0(n666), .B1(permutation[2]), 
        .Y(n459) );
  AO22X1 U620 ( .A0(\Array[0][1] ), .A1(n665), .B0(n666), .B1(permutation[1]), 
        .Y(n458) );
  AO22X1 U621 ( .A0(\Array[0][0] ), .A1(n665), .B0(n666), .B1(permutation[0]), 
        .Y(n457) );
  AO22X1 U622 ( .A0(\Array[1][2] ), .A1(n665), .B0(n666), .B1(permutation[5]), 
        .Y(n456) );
  AO22X1 U623 ( .A0(\Array[1][1] ), .A1(n665), .B0(n666), .B1(permutation[4]), 
        .Y(n455) );
  AO22X1 U624 ( .A0(\Array[1][0] ), .A1(n665), .B0(n666), .B1(permutation[3]), 
        .Y(n454) );
  AO22X1 U625 ( .A0(\Array[2][2] ), .A1(n665), .B0(n666), .B1(permutation[8]), 
        .Y(n453) );
  AO22X1 U626 ( .A0(\Array[2][1] ), .A1(n665), .B0(n666), .B1(permutation[7]), 
        .Y(n452) );
  AO22X1 U627 ( .A0(\Array[2][0] ), .A1(n665), .B0(n666), .B1(permutation[6]), 
        .Y(n451) );
  AO22X1 U628 ( .A0(\Array[3][2] ), .A1(n665), .B0(n666), .B1(permutation[11]), 
        .Y(n450) );
  AO22X1 U629 ( .A0(\Array[3][1] ), .A1(n665), .B0(n666), .B1(permutation[10]), 
        .Y(n449) );
  AO22X1 U630 ( .A0(\Array[3][0] ), .A1(n665), .B0(n666), .B1(permutation[9]), 
        .Y(n448) );
  AO22X1 U631 ( .A0(\Array[4][2] ), .A1(n665), .B0(n666), .B1(permutation[14]), 
        .Y(n447) );
  AO22X1 U632 ( .A0(\Array[4][1] ), .A1(n665), .B0(n666), .B1(permutation[13]), 
        .Y(n446) );
  AO22X1 U633 ( .A0(\Array[4][0] ), .A1(n665), .B0(n666), .B1(permutation[12]), 
        .Y(n445) );
  AO22X1 U634 ( .A0(\Array[5][2] ), .A1(n665), .B0(n666), .B1(permutation[17]), 
        .Y(n444) );
  AO22X1 U635 ( .A0(\Array[5][1] ), .A1(n665), .B0(n666), .B1(permutation[16]), 
        .Y(n443) );
  AO22X1 U636 ( .A0(\Array[5][0] ), .A1(n665), .B0(n666), .B1(permutation[15]), 
        .Y(n442) );
  AO22X1 U637 ( .A0(\Array[6][2] ), .A1(n665), .B0(n666), .B1(permutation[20]), 
        .Y(n441) );
  AO22X1 U638 ( .A0(\Array[6][1] ), .A1(n665), .B0(n666), .B1(permutation[19]), 
        .Y(n440) );
  AO22X1 U639 ( .A0(\Array[6][0] ), .A1(n665), .B0(n666), .B1(permutation[18]), 
        .Y(n439) );
  AO22X1 U640 ( .A0(\Array[7][2] ), .A1(n665), .B0(n666), .B1(permutation[23]), 
        .Y(n438) );
  AO22X1 U641 ( .A0(\Array[7][1] ), .A1(n665), .B0(n666), .B1(permutation[22]), 
        .Y(n437) );
  OAI22XL U642 ( .A0(n554), .A1(n668), .B0(n675), .B1(n667), .Y(n434) );
  OAI2BB2XL U643 ( .B0(n554), .B1(\MinCost[9]_BAR ), .A0N(n554), .A1N(
        TempAcc[9]), .Y(n433) );
  OAI22XL U644 ( .A0(n554), .A1(\MinCost[1]_BAR ), .B0(n675), .B1(n669), .Y(
        n432) );
  OAI22XL U645 ( .A0(n554), .A1(\MinCost[3]_BAR ), .B0(n675), .B1(n670), .Y(
        n430) );
  OAI2BB2XL U646 ( .B0(n554), .B1(\MinCost[4]_BAR ), .A0N(n554), .A1N(
        TempAcc[4]), .Y(n429) );
  OAI22XL U647 ( .A0(n554), .A1(\MinCost[5]_BAR ), .B0(n675), .B1(n671), .Y(
        n428) );
  OAI22XL U648 ( .A0(n554), .A1(n673), .B0(n675), .B1(n672), .Y(n427) );
  OAI22XL U649 ( .A0(n554), .A1(n676), .B0(n675), .B1(n674), .Y(n426) );
  OAI2BB2XL U650 ( .B0(n554), .B1(\MinCost[8]_BAR ), .A0N(n554), .A1N(
        TempAcc[8]), .Y(n425) );
  NAND3BX1 U651 ( .AN(n677), .B(in_use), .C(Update), .Y(n685) );
  AO22X1 U652 ( .A0(n688), .A1(n685), .B0(n766), .B1(n681), .Y(n679) );
  OAI211XL U653 ( .A0(n680), .A1(n756), .B0(in_use), .C0(n679), .Y(n424) );
  OAI22XL U654 ( .A0(n1), .A1(n681), .B0(n704), .B1(n685), .Y(n423) );
  OAI21XL U655 ( .A0(n684), .A1(n685), .B0(n681), .Y(n683) );
  OAI2BB2XL U656 ( .B0(n682), .B1(n685), .A0N(MatchCount[2]), .A1N(n683), .Y(
        n422) );
  AOI2BB1X1 U657 ( .A0N(n685), .A1N(MatchCount[2]), .B0(n683), .Y(n687) );
  OAI22XL U658 ( .A0(n687), .A1(n686), .B0(n685), .B1(n722), .Y(n421) );
  OAI22X1 U659 ( .A0(MatchCount[2]), .A1(n706), .B0(n707), .B1(n690), .Y(n691)
         );
  BUFX4 U660 ( .A(n694), .Y(n696) );
  AO22X1 U661 ( .A0(n725), .A1(n695), .B0(Match_list[48]), .B1(n696), .Y(n372)
         );
  AO22X1 U662 ( .A0(n727), .A1(n695), .B0(Match_list[49]), .B1(n696), .Y(n371)
         );
  AO22X1 U663 ( .A0(n728), .A1(n695), .B0(Match_list[50]), .B1(n696), .Y(n370)
         );
  AO22X1 U664 ( .A0(n729), .A1(n695), .B0(Match_list[51]), .B1(n696), .Y(n369)
         );
  AO22X1 U665 ( .A0(n730), .A1(n695), .B0(Match_list[52]), .B1(n696), .Y(n368)
         );
  AO22X1 U666 ( .A0(n731), .A1(n695), .B0(Match_list[53]), .B1(n696), .Y(n367)
         );
  AO22X1 U667 ( .A0(n732), .A1(n695), .B0(Match_list[54]), .B1(n696), .Y(n366)
         );
  AO22X1 U668 ( .A0(n733), .A1(n695), .B0(Match_list[55]), .B1(n696), .Y(n365)
         );
  AO22X1 U669 ( .A0(n735), .A1(n695), .B0(Match_list[56]), .B1(n696), .Y(n364)
         );
  AO22X1 U670 ( .A0(n736), .A1(n695), .B0(Match_list[57]), .B1(n696), .Y(n363)
         );
  AO22X1 U671 ( .A0(n737), .A1(n695), .B0(Match_list[58]), .B1(n696), .Y(n362)
         );
  AO22X1 U672 ( .A0(n738), .A1(n695), .B0(Match_list[59]), .B1(n696), .Y(n361)
         );
  AO22X1 U673 ( .A0(n739), .A1(n691), .B0(Match_list[60]), .B1(n696), .Y(n360)
         );
  AO22X1 U674 ( .A0(n740), .A1(n691), .B0(Match_list[61]), .B1(n696), .Y(n359)
         );
  AO22X1 U675 ( .A0(n741), .A1(n691), .B0(Match_list[62]), .B1(n696), .Y(n358)
         );
  AO22X1 U676 ( .A0(n742), .A1(n691), .B0(Match_list[63]), .B1(n696), .Y(n357)
         );
  AO22X1 U677 ( .A0(n743), .A1(n695), .B0(Match_list[64]), .B1(n696), .Y(n356)
         );
  AO22X1 U678 ( .A0(n744), .A1(n695), .B0(Match_list[65]), .B1(n696), .Y(n355)
         );
  AO22X1 U679 ( .A0(n745), .A1(n695), .B0(Match_list[66]), .B1(n696), .Y(n354)
         );
  AO22X1 U680 ( .A0(n746), .A1(n695), .B0(Match_list[67]), .B1(n696), .Y(n353)
         );
  AO22X1 U681 ( .A0(n747), .A1(n695), .B0(Match_list[68]), .B1(n696), .Y(n352)
         );
  AO22X1 U682 ( .A0(n748), .A1(n695), .B0(Match_list[69]), .B1(n696), .Y(n351)
         );
  AO22X1 U683 ( .A0(n749), .A1(n695), .B0(Match_list[70]), .B1(n696), .Y(n350)
         );
  AO22X1 U684 ( .A0(n752), .A1(n695), .B0(Match_list[71]), .B1(n696), .Y(n349)
         );
  OAI22X1 U685 ( .A0(n766), .A1(n698), .B0(n697), .B1(n707), .Y(n699) );
  AO22X1 U686 ( .A0(n725), .A1(n702), .B0(Match_list[96]), .B1(n701), .Y(n324)
         );
  AO22X1 U687 ( .A0(n727), .A1(n702), .B0(Match_list[97]), .B1(n701), .Y(n323)
         );
  AO22X1 U688 ( .A0(n728), .A1(n702), .B0(Match_list[98]), .B1(n701), .Y(n322)
         );
  AO22X1 U689 ( .A0(n729), .A1(n702), .B0(Match_list[99]), .B1(n701), .Y(n321)
         );
  AO22X1 U690 ( .A0(n730), .A1(n702), .B0(Match_list[100]), .B1(n701), .Y(n320) );
  AO22X1 U691 ( .A0(n731), .A1(n702), .B0(Match_list[101]), .B1(n701), .Y(n319) );
  AO22X1 U692 ( .A0(n732), .A1(n702), .B0(Match_list[102]), .B1(n701), .Y(n318) );
  AO22X1 U693 ( .A0(n733), .A1(n702), .B0(Match_list[103]), .B1(n701), .Y(n317) );
  AO22X1 U694 ( .A0(n735), .A1(n702), .B0(Match_list[104]), .B1(n701), .Y(n316) );
  AO22X1 U695 ( .A0(n736), .A1(n702), .B0(Match_list[105]), .B1(n701), .Y(n315) );
  AO22X1 U696 ( .A0(n737), .A1(n702), .B0(Match_list[106]), .B1(n701), .Y(n314) );
  AO22X1 U697 ( .A0(n738), .A1(n702), .B0(Match_list[107]), .B1(n701), .Y(n313) );
  AO22X1 U698 ( .A0(n739), .A1(n699), .B0(Match_list[108]), .B1(n701), .Y(n312) );
  AO22X1 U699 ( .A0(n740), .A1(n699), .B0(Match_list[109]), .B1(n701), .Y(n311) );
  AO22X1 U700 ( .A0(n741), .A1(n699), .B0(Match_list[110]), .B1(n701), .Y(n310) );
  AO22X1 U701 ( .A0(n742), .A1(n699), .B0(Match_list[111]), .B1(n701), .Y(n309) );
  AO22X1 U702 ( .A0(n743), .A1(n702), .B0(Match_list[112]), .B1(n701), .Y(n308) );
  AO22X1 U703 ( .A0(n744), .A1(n702), .B0(Match_list[113]), .B1(n701), .Y(n307) );
  AO22X1 U704 ( .A0(n745), .A1(n702), .B0(Match_list[114]), .B1(n701), .Y(n306) );
  AO22X1 U705 ( .A0(n746), .A1(n702), .B0(Match_list[115]), .B1(n701), .Y(n305) );
  AO22X1 U706 ( .A0(n747), .A1(n702), .B0(Match_list[116]), .B1(n701), .Y(n304) );
  AO22X1 U707 ( .A0(n748), .A1(n702), .B0(Match_list[117]), .B1(n701), .Y(n303) );
  AO22X1 U708 ( .A0(n749), .A1(n702), .B0(Match_list[118]), .B1(n701), .Y(n302) );
  AO22X1 U709 ( .A0(n752), .A1(n702), .B0(Match_list[119]), .B1(n701), .Y(n301) );
  OAI21XL U710 ( .A0(n1), .A1(n709), .B0(n610), .Y(n710) );
  AO22X1 U711 ( .A0(n725), .A1(n715), .B0(Match_list[144]), .B1(n714), .Y(n276) );
  AO22X1 U712 ( .A0(n727), .A1(n715), .B0(Match_list[145]), .B1(n714), .Y(n275) );
  AO22X1 U713 ( .A0(n728), .A1(n713), .B0(Match_list[146]), .B1(n714), .Y(n274) );
  AO22X1 U714 ( .A0(n729), .A1(n713), .B0(Match_list[147]), .B1(n714), .Y(n273) );
  AO22X1 U715 ( .A0(n730), .A1(n713), .B0(Match_list[148]), .B1(n714), .Y(n272) );
  AO22X1 U716 ( .A0(n731), .A1(n713), .B0(Match_list[149]), .B1(n714), .Y(n271) );
  AO22X1 U717 ( .A0(n732), .A1(n715), .B0(Match_list[150]), .B1(n714), .Y(n270) );
  AO22X1 U718 ( .A0(n733), .A1(n715), .B0(Match_list[151]), .B1(n714), .Y(n269) );
  AO22X1 U719 ( .A0(n735), .A1(n715), .B0(Match_list[152]), .B1(n714), .Y(n268) );
  AO22X1 U720 ( .A0(n736), .A1(n715), .B0(Match_list[153]), .B1(n714), .Y(n267) );
  AO22X1 U721 ( .A0(n737), .A1(n715), .B0(Match_list[154]), .B1(n714), .Y(n266) );
  AO22X1 U722 ( .A0(n738), .A1(n715), .B0(Match_list[155]), .B1(n714), .Y(n265) );
  AO22X1 U723 ( .A0(n739), .A1(n715), .B0(Match_list[156]), .B1(n714), .Y(n264) );
  AO22X1 U724 ( .A0(n740), .A1(n715), .B0(Match_list[157]), .B1(n714), .Y(n263) );
  AO22X1 U725 ( .A0(n741), .A1(n715), .B0(Match_list[158]), .B1(n714), .Y(n262) );
  AO22X1 U726 ( .A0(n742), .A1(n715), .B0(Match_list[159]), .B1(n714), .Y(n261) );
  AO22X1 U727 ( .A0(n743), .A1(n715), .B0(Match_list[160]), .B1(n714), .Y(n260) );
  AO22X1 U728 ( .A0(n744), .A1(n715), .B0(Match_list[161]), .B1(n714), .Y(n259) );
  AO22X1 U729 ( .A0(n745), .A1(n715), .B0(Match_list[162]), .B1(n714), .Y(n258) );
  AO22X1 U730 ( .A0(n746), .A1(n715), .B0(Match_list[163]), .B1(n714), .Y(n257) );
  AO22X1 U731 ( .A0(n747), .A1(n715), .B0(Match_list[164]), .B1(n714), .Y(n256) );
  AO22X1 U732 ( .A0(n748), .A1(n715), .B0(Match_list[165]), .B1(n714), .Y(n255) );
  AO22X1 U733 ( .A0(n749), .A1(n715), .B0(Match_list[166]), .B1(n714), .Y(n254) );
  AO22X1 U734 ( .A0(n752), .A1(n715), .B0(Match_list[167]), .B1(n714), .Y(n253) );
  OAI22XL U735 ( .A0(n718), .A1(n722), .B0(n717), .B1(n716), .Y(n726) );
  BUFX2 U736 ( .A(n726), .Y(n734) );
  AO22X1 U737 ( .A0(n725), .A1(n734), .B0(Match_list[168]), .B1(n724), .Y(n252) );
  AO22X1 U738 ( .A0(n727), .A1(n726), .B0(Match_list[169]), .B1(n724), .Y(n251) );
  AO22X1 U739 ( .A0(n728), .A1(n734), .B0(Match_list[170]), .B1(n724), .Y(n250) );
  AO22X1 U740 ( .A0(n729), .A1(n734), .B0(Match_list[171]), .B1(n724), .Y(n249) );
  AO22X1 U741 ( .A0(n730), .A1(n734), .B0(Match_list[172]), .B1(n724), .Y(n248) );
  AO22X1 U742 ( .A0(n731), .A1(n734), .B0(Match_list[173]), .B1(n724), .Y(n247) );
  AO22X1 U743 ( .A0(n732), .A1(n734), .B0(Match_list[174]), .B1(n724), .Y(n246) );
  AO22X1 U744 ( .A0(n733), .A1(n734), .B0(Match_list[175]), .B1(n724), .Y(n245) );
  CLKBUFX3 U745 ( .A(n734), .Y(n751) );
  AO22X1 U746 ( .A0(n735), .A1(n751), .B0(Match_list[176]), .B1(n724), .Y(n244) );
  AO22X1 U747 ( .A0(n736), .A1(n751), .B0(Match_list[177]), .B1(n724), .Y(n243) );
  AO22X1 U748 ( .A0(n737), .A1(n751), .B0(Match_list[178]), .B1(n724), .Y(n242) );
  AO22X1 U749 ( .A0(n738), .A1(n751), .B0(Match_list[179]), .B1(n724), .Y(n241) );
  AO22X1 U750 ( .A0(n739), .A1(n751), .B0(Match_list[180]), .B1(n724), .Y(n240) );
  AO22X1 U751 ( .A0(n740), .A1(n751), .B0(Match_list[181]), .B1(n724), .Y(n239) );
  AO22X1 U752 ( .A0(n741), .A1(n751), .B0(Match_list[182]), .B1(n724), .Y(n238) );
  AO22X1 U753 ( .A0(n742), .A1(n751), .B0(Match_list[183]), .B1(n724), .Y(n237) );
  AO22X1 U754 ( .A0(n743), .A1(n751), .B0(Match_list[184]), .B1(n724), .Y(n236) );
  AO22X1 U755 ( .A0(n744), .A1(n751), .B0(Match_list[185]), .B1(n724), .Y(n235) );
  AO22X1 U756 ( .A0(n745), .A1(n751), .B0(Match_list[186]), .B1(n724), .Y(n234) );
  AO22X1 U757 ( .A0(n746), .A1(n751), .B0(Match_list[187]), .B1(n724), .Y(n233) );
  AO22X1 U758 ( .A0(n747), .A1(n751), .B0(Match_list[188]), .B1(n724), .Y(n232) );
  AO22X1 U759 ( .A0(n748), .A1(n751), .B0(Match_list[189]), .B1(n724), .Y(n231) );
  AO22X1 U760 ( .A0(n749), .A1(n751), .B0(Match_list[190]), .B1(n724), .Y(n230) );
  AO22X1 U761 ( .A0(n752), .A1(n751), .B0(Match_list[191]), .B1(n724), .Y(n229) );
endmodule


module JAM ( CLK, RST, W, J, Cost, MatchCount, MinCost, Match_list, Valid );
  output [2:0] W;
  output [2:0] J;
  input [6:0] Cost;
  output [3:0] MatchCount;
  output [9:0] MinCost;
  output [239:0] Match_list;
  input CLK, RST;
  output Valid;
  wire   n644, n645, n646, n647, n648, n649, n650, n651, n652, n653, n654,
         n655, n656, w2, w3, \P0/ns[2] , n281, n287, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n399, n400, n401, n402, n403, n404, n405,
         n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427,
         n428, n429, n430, n431, n432, n433, n434, n435, n436, n437, n438,
         n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449,
         n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, n460,
         n461, n462, n463, n464, n465, n466, n467, n468, n469, n470, n471,
         n472, n473, n474, n475, n476, n477, n478, n479, n480, n481, n482,
         n483, n484, n485, n486, n487, n488, n489, n490, n491, n492, n493,
         n494, n495, n496, n497, n498, n499, n500, n501, n502, n503, n504,
         n505, n506, n507, n508, n509, n510, n511, n512, n513, n514, n515,
         n516, n517, n518, n519, n520, n521, n522, n523, n524, n525, n526,
         n527, n528, n529, n530, n531, n532, n533, n534, n535, n536, n537,
         n538, n539, n540, n541, n542, n543, n544, n545, n546, n547, n548,
         n549, n550, n551, n552, n553, n554, n555, n556, n557, n558, n559,
         n560, n561, n562, n563, n564, n565, n566, n567, n568, n569, n570,
         n571, n572, n573, n574, n575, n576, n577, n578, n579, n580, n581,
         n582, n583, n584, n585, n586, n587, n588, n589, n590, n591, n592,
         n593, n594, n595, n596, n597, n598, n599, n600, n601, n602, n603,
         n604, n605, n606, n607, n608, n609, n610, n611, n612, n613, n614,
         n615, n616, n617, n618, n619, n620, n621, n622, n623, n624, n625,
         n626, n627, n632, n633;
  wire   [23:0] list;
  wire   [23:0] list1;
  wire   [7:0] \P0/Direction ;
  wire   [2:0] \P0/SearchNum ;
  wire   [2:0] \P0/cs ;

  MinFinder M0 ( .CLK(CLK), .RST(RST), .permutation(list), .fake_permutation(
        list1), .valid(n339), .ready(w2), .done(w3), .J({n647, n648, n649}), 
        .Cost(Cost), .MatchCount(MatchCount), .Match_list(Match_list), 
        .\W[2]_BAR (n644), .\W[1]_BAR (n645), .\W[0]_BAR (n646), 
        .\MinCost[9]_BAR (n650), .\MinCost[7] (MinCost[7]), .\MinCost[6] (
        MinCost[6]), .\MinCost[2] (MinCost[2]), .\MinCost[0] (MinCost[0]), 
        .\MinCost[8]_BAR (n651), .\MinCost[5]_BAR (n652), .\MinCost[4]_BAR (
        n653), .\MinCost[3]_BAR (n654), .\MinCost[1]_BAR (n655), .Valid_BAR(
        n656) );
  DFFRX1 \P0/Direction_reg[6]  ( .D(n329), .CK(CLK), .RN(n343), .QN(n619) );
  DFFRX1 \P0/Direction_reg[3]  ( .D(n332), .CK(CLK), .RN(n343), .Q(
        \P0/Direction [3]), .QN(n626) );
  DFFRX1 \P0/Direction_reg[7]  ( .D(n336), .CK(CLK), .RN(n343), .Q(
        \P0/Direction [7]), .QN(n627) );
  DFFRX1 \P0/Direction_reg[0]  ( .D(n335), .CK(CLK), .RN(n343), .QN(n608) );
  DFFRX1 \P0/Direction_reg[1]  ( .D(n334), .CK(CLK), .RN(n343), .Q(
        \P0/Direction [1]), .QN(n614) );
  DFFRX1 \P0/Direction_reg[2]  ( .D(n333), .CK(CLK), .RN(n343), .Q(
        \P0/Direction [2]), .QN(n620) );
  DFFRX1 \P0/Direction_reg[4]  ( .D(n331), .CK(CLK), .RN(n343), .Q(
        \P0/Direction [4]), .QN(n625) );
  DFFRX1 \P0/Direction_reg[5]  ( .D(n330), .CK(CLK), .RN(n343), .QN(n609) );
  AOI2BB2X1 U342 ( .B0(n632), .B1(n610), .A0N(n633), .A1N(list1[23]), .Y(
        list1[23]) );
  AOI2BB2X1 U343 ( .B0(n633), .B1(n611), .A0N(n633), .A1N(list1[22]), .Y(
        list1[22]) );
  AOI2BB2X1 U344 ( .B0(n633), .B1(n622), .A0N(n633), .A1N(list1[21]), .Y(
        list1[21]) );
  AOI2BB2X1 U345 ( .B0(n633), .B1(n616), .A0N(n633), .A1N(list1[20]), .Y(
        list1[20]) );
  AOI2BB2X1 U346 ( .B0(n632), .B1(n607), .A0N(n633), .A1N(list1[19]), .Y(
        list1[19]) );
  AOI2BB2X1 U347 ( .B0(n633), .B1(n281), .A0N(n633), .A1N(list1[18]), .Y(
        list1[18]) );
  AOI2BB2X1 U348 ( .B0(n633), .B1(n597), .A0N(n633), .A1N(list1[17]), .Y(
        list1[17]) );
  AOI2BB2X1 U349 ( .B0(n633), .B1(n598), .A0N(n633), .A1N(list1[16]), .Y(
        list1[16]) );
  AOI2BB2X1 U350 ( .B0(n633), .B1(n601), .A0N(n633), .A1N(list1[15]), .Y(
        list1[15]) );
  AOI2BB2X1 U351 ( .B0(n633), .B1(n606), .A0N(n633), .A1N(list1[14]), .Y(
        list1[14]) );
  AOI2BB2X1 U352 ( .B0(n633), .B1(n618), .A0N(n633), .A1N(list1[13]), .Y(
        list1[13]) );
  AOI2BB2X1 U353 ( .B0(n633), .B1(n287), .A0N(n633), .A1N(list1[12]), .Y(
        list1[12]) );
  AOI2BB2X1 U354 ( .B0(n633), .B1(n603), .A0N(n633), .A1N(list1[11]), .Y(
        list1[11]) );
  AOI2BB2X1 U355 ( .B0(n632), .B1(n623), .A0N(n633), .A1N(list1[10]), .Y(
        list1[10]) );
  AOI2BB2X1 U356 ( .B0(n633), .B1(n604), .A0N(n633), .A1N(list1[9]), .Y(
        list1[9]) );
  AOI2BB2X1 U357 ( .B0(n633), .B1(n617), .A0N(n633), .A1N(list1[8]), .Y(
        list1[8]) );
  AOI2BB2X1 U358 ( .B0(n632), .B1(n613), .A0N(n633), .A1N(list1[7]), .Y(
        list1[7]) );
  AOI2BB2X1 U359 ( .B0(n632), .B1(n605), .A0N(n633), .A1N(list1[6]), .Y(
        list1[6]) );
  AOI2BB2X1 U360 ( .B0(n632), .B1(n594), .A0N(n633), .A1N(list1[5]), .Y(
        list1[5]) );
  AOI2BB2X1 U361 ( .B0(n632), .B1(n612), .A0N(n633), .A1N(list1[4]), .Y(
        list1[4]) );
  AOI2BB2X1 U362 ( .B0(n632), .B1(n600), .A0N(n633), .A1N(list1[3]), .Y(
        list1[3]) );
  AOI2BB2X1 U363 ( .B0(n632), .B1(n595), .A0N(n633), .A1N(list1[2]), .Y(
        list1[2]) );
  AOI2BB2X1 U364 ( .B0(n632), .B1(n599), .A0N(n633), .A1N(list1[1]), .Y(
        list1[1]) );
  AOI2BB2X1 U365 ( .B0(n632), .B1(n596), .A0N(n633), .A1N(list1[0]), .Y(
        list1[0]) );
  DFFRX1 \P0/List_reg[0][0]  ( .D(n328), .CK(CLK), .RN(n343), .Q(list[0]), 
        .QN(n622) );
  DFFRX1 \P0/List_reg[0][1]  ( .D(n326), .CK(CLK), .RN(n343), .Q(list[1]), 
        .QN(n611) );
  DFFRX1 \P0/List_reg[0][2]  ( .D(n327), .CK(CLK), .RN(n343), .Q(list[2]), 
        .QN(n610) );
  DFFRX1 \P0/List_reg[1][1]  ( .D(n324), .CK(CLK), .RN(n343), .Q(list[4]), 
        .QN(n607) );
  DFFSX1 \P0/List_reg[7][0]  ( .D(n314), .CK(CLK), .SN(n343), .Q(list[21]), 
        .QN(n596) );
  DFFRX1 \P0/cs_reg[0]  ( .D(n338), .CK(CLK), .RN(n343), .Q(\P0/cs [0]), .QN(
        n624) );
  DFFRX1 \P0/cs_reg[2]  ( .D(\P0/ns[2] ), .CK(CLK), .RN(n343), .Q(\P0/cs [2]), 
        .QN(n621) );
  DFFSX2 \P0/SearchNum_reg[2]  ( .D(n302), .CK(CLK), .SN(n343), .Q(
        \P0/SearchNum [2]), .QN(n602) );
  DFFRX1 \P0/List_reg[1][2]  ( .D(n325), .CK(CLK), .RN(n343), .Q(list[5]), 
        .QN(n616) );
  DFFSX1 \P0/cs_reg[1]  ( .D(n593), .CK(CLK), .SN(n343), .QN(\P0/cs [1]) );
  DFFSX1 \P0/List_reg[7][2]  ( .D(n316), .CK(CLK), .SN(n343), .Q(list[23]), 
        .QN(n595) );
  DFFSX1 \P0/List_reg[3][0]  ( .D(n305), .CK(CLK), .SN(n343), .Q(list[9]), 
        .QN(n287) );
  DFFSX1 \P0/List_reg[1][0]  ( .D(n323), .CK(CLK), .SN(n343), .Q(list[3]), 
        .QN(n281) );
  DFFSX1 \P0/SearchNum_reg[0]  ( .D(n303), .CK(CLK), .SN(n343), .Q(
        \P0/SearchNum [0]), .QN(n340) );
  DFFRX1 \P0/List_reg[2][2]  ( .D(n322), .CK(CLK), .RN(n343), .Q(list[8]), 
        .QN(n597) );
  DFFSX1 \P0/List_reg[3][1]  ( .D(n318), .CK(CLK), .SN(n343), .Q(list[10]), 
        .QN(n618) );
  DFFRX1 \P0/List_reg[4][1]  ( .D(n307), .CK(CLK), .RN(n343), .Q(list[13]), 
        .QN(n623) );
  DFFRX1 \P0/List_reg[5][1]  ( .D(n309), .CK(CLK), .RN(n343), .Q(list[16]), 
        .QN(n613) );
  DFFRX1 \P0/List_reg[2][0]  ( .D(n320), .CK(CLK), .RN(n343), .Q(list[6]), 
        .QN(n601) );
  DFFRX1 \P0/List_reg[6][0]  ( .D(n311), .CK(CLK), .RN(n343), .Q(list[18]), 
        .QN(n600) );
  DFFRX1 \P0/List_reg[4][0]  ( .D(n306), .CK(CLK), .RN(n343), .Q(list[12]), 
        .QN(n604) );
  DFFRX1 \P0/List_reg[3][2]  ( .D(n319), .CK(CLK), .RN(n343), .Q(list[11]), 
        .QN(n606) );
  DFFSX1 \P0/List_reg[2][1]  ( .D(n321), .CK(CLK), .SN(n343), .Q(list[7]), 
        .QN(n598) );
  DFFSX1 \P0/List_reg[6][1]  ( .D(n312), .CK(CLK), .SN(n343), .Q(list[19]), 
        .QN(n612) );
  DFFSX1 \P0/List_reg[7][1]  ( .D(n315), .CK(CLK), .SN(n343), .Q(list[22]), 
        .QN(n599) );
  DFFSX1 \P0/List_reg[5][0]  ( .D(n308), .CK(CLK), .SN(n343), .Q(list[15]), 
        .QN(n605) );
  DFFSX4 \P0/SearchNum_reg[1]  ( .D(n304), .CK(CLK), .SN(n343), .Q(
        \P0/SearchNum [1]), .QN(n615) );
  DFFSX2 \P0/List_reg[5][2]  ( .D(n310), .CK(CLK), .SN(n343), .Q(list[17]), 
        .QN(n617) );
  DFFSX2 \P0/List_reg[4][2]  ( .D(n317), .CK(CLK), .SN(n343), .Q(list[14]), 
        .QN(n603) );
  DFFSX1 \P0/List_reg[6][2]  ( .D(n313), .CK(CLK), .SN(n343), .Q(list[20]), 
        .QN(n594) );
  INVX8 U366 ( .A(RST), .Y(n343) );
  OR2X1 U367 ( .A(n571), .B(n570), .Y(n572) );
  OAI2BB1X2 U368 ( .A0N(n566), .A1N(n565), .B0(n564), .Y(n567) );
  OAI22XL U369 ( .A0(n594), .A1(n492), .B0(n597), .B1(n479), .Y(n426) );
  CLKBUFX3 U370 ( .A(n386), .Y(n552) );
  BUFX16 U371 ( .A(n358), .Y(n435) );
  INVX4 U372 ( .A(n411), .Y(n417) );
  BUFX4 U373 ( .A(\P0/SearchNum [0]), .Y(n583) );
  OAI22XL U374 ( .A0(n287), .A1(n515), .B0(n281), .B1(n528), .Y(n406) );
  NAND2XL U375 ( .A(list[22]), .B(n615), .Y(n458) );
  INVX2 U376 ( .A(n562), .Y(n505) );
  AOI211X2 U377 ( .A0(n570), .A1(n465), .B0(n624), .C0(n576), .Y(n469) );
  NAND2X4 U378 ( .A(n570), .B(n357), .Y(n411) );
  INVX6 U379 ( .A(n502), .Y(n633) );
  NOR2X1 U380 ( .A(n583), .B(n601), .Y(n473) );
  NAND2X2 U381 ( .A(\P0/SearchNum [2]), .B(n606), .Y(n511) );
  INVX3 U382 ( .A(n416), .Y(n498) );
  NOR2X1 U383 ( .A(n562), .B(n561), .Y(n563) );
  NAND2XL U384 ( .A(n383), .B(n392), .Y(n405) );
  INVXL U385 ( .A(n479), .Y(n478) );
  BUFX2 U386 ( .A(n382), .Y(n537) );
  CLKBUFX3 U387 ( .A(n378), .Y(n465) );
  NAND2XL U388 ( .A(n390), .B(n383), .Y(n378) );
  BUFX2 U389 ( .A(n405), .Y(n451) );
  NAND2XL U390 ( .A(n435), .B(n400), .Y(n401) );
  NAND2X1 U391 ( .A(n498), .B(n435), .Y(n412) );
  NAND2XL U392 ( .A(\P0/SearchNum [2]), .B(n617), .Y(n441) );
  NAND2XL U393 ( .A(list[16]), .B(n615), .Y(n436) );
  NAND2XL U394 ( .A(list[15]), .B(n340), .Y(n437) );
  NAND2XL U395 ( .A(list[13]), .B(n615), .Y(n543) );
  NAND2XL U396 ( .A(list[12]), .B(n340), .Y(n544) );
  NAND2XL U397 ( .A(list[8]), .B(n602), .Y(n477) );
  NOR2XL U398 ( .A(n583), .B(n281), .Y(n522) );
  NOR2XL U399 ( .A(list[4]), .B(n615), .Y(n521) );
  NAND2XL U400 ( .A(\P0/SearchNum [2]), .B(n616), .Y(n523) );
  NOR2XL U401 ( .A(\P0/SearchNum [1]), .B(n607), .Y(n524) );
  NAND2XL U402 ( .A(\P0/SearchNum [1]), .B(n599), .Y(n459) );
  NAND2XL U403 ( .A(list[23]), .B(n602), .Y(n464) );
  NAND2XL U404 ( .A(list[10]), .B(n615), .Y(n508) );
  NAND2XL U405 ( .A(list[11]), .B(n602), .Y(n514) );
  NAND2XL U406 ( .A(\P0/SearchNum [2]), .B(n594), .Y(n490) );
  NAND2XL U407 ( .A(list[19]), .B(n615), .Y(n485) );
  NAND2XL U408 ( .A(list[18]), .B(n340), .Y(n486) );
  NOR2XL U409 ( .A(n583), .B(\P0/SearchNum [1]), .Y(n584) );
  AND2X2 U410 ( .A(n573), .B(n572), .Y(n574) );
  INVXL U411 ( .A(n451), .Y(n448) );
  BUFX2 U412 ( .A(n380), .Y(n479) );
  NAND2XL U413 ( .A(n384), .B(n387), .Y(n380) );
  AOI2BB1X1 U414 ( .A0N(n413), .A1N(n448), .B0(n502), .Y(n455) );
  OAI211XL U415 ( .A0(n492), .A1(n619), .B0(n444), .C0(n443), .Y(n445) );
  CLKBUFX3 U416 ( .A(n388), .Y(n492) );
  NAND2XL U417 ( .A(n387), .B(n389), .Y(n388) );
  NAND4XL U418 ( .A(n344), .B(n437), .C(n441), .D(n436), .Y(n353) );
  NAND4XL U419 ( .A(n345), .B(n544), .C(n548), .D(n543), .Y(n355) );
  OAI211XL U420 ( .A0(\P0/SearchNum [2]), .A1(n616), .B0(n349), .C0(n523), .Y(
        n352) );
  INVXL U421 ( .A(n351), .Y(n360) );
  AOI211XL U422 ( .A0(n583), .A1(n287), .B0(n510), .C0(n350), .Y(n351) );
  NAND4XL U423 ( .A(n511), .B(n508), .C(n514), .D(n509), .Y(n350) );
  NAND2XL U424 ( .A(n435), .B(n363), .Y(n364) );
  AOI222X1 U425 ( .A0(\P0/Direction [1]), .A1(n501), .B0(\P0/Direction [7]), 
        .B1(n411), .C0(\P0/Direction [3]), .C1(n433), .Y(n571) );
  NAND2X1 U426 ( .A(n501), .B(n373), .Y(n573) );
  NOR2XL U427 ( .A(n621), .B(n577), .Y(w3) );
  NAND4XL U428 ( .A(n461), .B(n458), .C(n464), .D(n459), .Y(n346) );
  OAI22XL U429 ( .A0(n606), .A1(n515), .B0(n616), .B1(n528), .Y(n424) );
  NOR2XL U430 ( .A(n415), .B(n414), .Y(n423) );
  OR3X2 U431 ( .A(n410), .B(n409), .C(n408), .Y(n562) );
  OR2X2 U432 ( .A(n407), .B(n406), .Y(n408) );
  OAI21XL U433 ( .A0(n605), .A1(n412), .B0(n404), .Y(n560) );
  INVXL U434 ( .A(n412), .Y(n413) );
  NOR2X1 U435 ( .A(n435), .B(n502), .Y(n500) );
  NAND2XL U436 ( .A(\P0/Direction [2]), .B(n478), .Y(n443) );
  NOR2XL U437 ( .A(n624), .B(n590), .Y(n339) );
  NAND2X1 U438 ( .A(\P0/cs [1]), .B(n621), .Y(n576) );
  NAND2XL U439 ( .A(\P0/cs [0]), .B(\P0/cs [1]), .Y(n577) );
  NAND2BX1 U440 ( .AN(\P0/cs [1]), .B(n621), .Y(n590) );
  INVXL U441 ( .A(w3), .Y(n581) );
  NAND3XL U442 ( .A(n340), .B(n602), .C(n615), .Y(n592) );
  NAND2XL U443 ( .A(n379), .B(n633), .Y(n429) );
  NOR2XL U444 ( .A(n442), .B(n549), .Y(n456) );
  NOR2XL U445 ( .A(n550), .B(n549), .Y(n559) );
  AOI21XL U446 ( .A0(n477), .A1(n476), .B0(n549), .Y(n484) );
  AOI21XL U447 ( .A0(n527), .A1(n526), .B0(n549), .Y(n533) );
  AOI21XL U448 ( .A0(n464), .A1(n463), .B0(n549), .Y(n470) );
  AOI21XL U449 ( .A0(n514), .A1(n513), .B0(n549), .Y(n520) );
  CLKBUFX3 U450 ( .A(n428), .Y(n569) );
  NOR4XL U451 ( .A(n427), .B(n426), .C(n425), .D(n424), .Y(n428) );
  OAI22XL U452 ( .A0(n595), .A1(n465), .B0(n610), .B1(n537), .Y(n425) );
  NAND2X2 U453 ( .A(n568), .B(n633), .Y(n507) );
  NAND2X2 U454 ( .A(n632), .B(n560), .Y(n504) );
  NAND2XL U455 ( .A(n413), .B(n633), .Y(n430) );
  NAND2X2 U456 ( .A(n632), .B(n566), .Y(n503) );
  NOR2XL U457 ( .A(n491), .B(n549), .Y(n497) );
  OAI222XL U458 ( .A0(n503), .A1(n515), .B0(n434), .B1(n565), .C0(n618), .C1(
        n519), .Y(n318) );
  OAI222XL U459 ( .A0(n507), .A1(n479), .B0(n432), .B1(n569), .C0(n597), .C1(
        n483), .Y(n322) );
  OAI222XL U460 ( .A0(n504), .A1(n515), .B0(n434), .B1(n505), .C0(n287), .C1(
        n519), .Y(n305) );
  OAI222XL U461 ( .A0(n507), .A1(n465), .B0(n429), .B1(n569), .C0(n595), .C1(
        n469), .Y(n316) );
  OAI222XL U462 ( .A0(n507), .A1(n528), .B0(n457), .B1(n569), .C0(n616), .C1(
        n532), .Y(n325) );
  NAND2XL U463 ( .A(\P0/SearchNum [2]), .B(n588), .Y(n589) );
  OAI211XL U464 ( .A0(w2), .A1(n590), .B0(n581), .C0(n580), .Y(n338) );
  OAI222XL U465 ( .A0(n504), .A1(n465), .B0(n429), .B1(n505), .C0(n596), .C1(
        n469), .Y(n314) );
  OAI222XL U466 ( .A0(n503), .A1(n528), .B0(n457), .B1(n565), .C0(n607), .C1(
        n532), .Y(n324) );
  OAI222XL U467 ( .A0(n541), .A1(n611), .B0(n506), .B1(n565), .C0(n537), .C1(
        n503), .Y(n326) );
  OAI222XL U468 ( .A0(n541), .A1(n622), .B0(n506), .B1(n505), .C0(n537), .C1(
        n504), .Y(n328) );
  INVX3 U469 ( .A(n502), .Y(n632) );
  OAI222XL U470 ( .A0(n507), .A1(n492), .B0(n431), .B1(n569), .C0(n594), .C1(
        n496), .Y(n313) );
  OAI222XL U471 ( .A0(n507), .A1(n552), .B0(n499), .B1(n569), .C0(n603), .C1(
        n558), .Y(n317) );
  OAI222XL U472 ( .A0(n507), .A1(n451), .B0(n430), .B1(n569), .C0(n617), .C1(
        n455), .Y(n310) );
  OAI222XL U473 ( .A0(n504), .A1(n451), .B0(n430), .B1(n505), .C0(n605), .C1(
        n455), .Y(n308) );
  OAI222XL U474 ( .A0(n503), .A1(n465), .B0(n429), .B1(n565), .C0(n599), .C1(
        n469), .Y(n315) );
  OAI222XL U475 ( .A0(n503), .A1(n492), .B0(n431), .B1(n565), .C0(n612), .C1(
        n496), .Y(n312) );
  OAI222XL U476 ( .A0(n503), .A1(n479), .B0(n432), .B1(n565), .C0(n598), .C1(
        n483), .Y(n321) );
  OAI31XL U477 ( .A0(n456), .A1(n455), .A2(n609), .B0(n454), .Y(n330) );
  NOR2XL U478 ( .A(n448), .B(n551), .Y(n453) );
  OAI31XL U479 ( .A0(n559), .A1(n625), .A2(n558), .B0(n557), .Y(n331) );
  OAI31XL U480 ( .A0(n484), .A1(n620), .A2(n483), .B0(n482), .Y(n333) );
  NOR2XL U481 ( .A(n478), .B(n551), .Y(n481) );
  OAI31XL U482 ( .A0(n542), .A1(n608), .A2(n541), .B0(n540), .Y(n335) );
  OAI31XL U483 ( .A0(n470), .A1(n469), .A2(n627), .B0(n468), .Y(n336) );
  OAI31XL U484 ( .A0(n520), .A1(n626), .A2(n519), .B0(n518), .Y(n332) );
  OAI222XL U485 ( .A0(n507), .A1(n515), .B0(n434), .B1(n569), .C0(n606), .C1(
        n519), .Y(n319) );
  OAI222XL U486 ( .A0(n504), .A1(n552), .B0(n499), .B1(n505), .C0(n604), .C1(
        n558), .Y(n306) );
  OAI222XL U487 ( .A0(n504), .A1(n492), .B0(n431), .B1(n505), .C0(n600), .C1(
        n496), .Y(n311) );
  OAI222XL U488 ( .A0(n504), .A1(n479), .B0(n432), .B1(n505), .C0(n601), .C1(
        n483), .Y(n320) );
  OAI222XL U489 ( .A0(n503), .A1(n451), .B0(n430), .B1(n565), .C0(n613), .C1(
        n455), .Y(n309) );
  OAI222XL U490 ( .A0(n503), .A1(n552), .B0(n499), .B1(n565), .C0(n623), .C1(
        n558), .Y(n307) );
  OAI31XL U491 ( .A0(n497), .A1(n619), .A2(n496), .B0(n495), .Y(n329) );
  OAI21X2 U492 ( .A0(n450), .A1(n449), .B0(n633), .Y(n553) );
  OR2X2 U493 ( .A(n624), .B(n576), .Y(n502) );
  INVXL U494 ( .A(n560), .Y(n561) );
  OAI21X2 U495 ( .A0(n565), .A1(n566), .B0(n563), .Y(n564) );
  INVXL U496 ( .A(n359), .Y(n362) );
  NAND2XL U497 ( .A(\P0/SearchNum [1]), .B(n618), .Y(n509) );
  NOR2X1 U498 ( .A(n373), .B(n449), .Y(n371) );
  NAND2XL U499 ( .A(\P0/SearchNum [2]), .B(n603), .Y(n548) );
  OAI22XL U500 ( .A0(n617), .A1(n451), .B0(n603), .B1(n552), .Y(n427) );
  NAND2XL U501 ( .A(n393), .B(n392), .Y(n394) );
  NAND2XL U502 ( .A(list[5]), .B(n602), .Y(n527) );
  NAND2XL U503 ( .A(n512), .B(n511), .Y(n513) );
  AOI211XL U504 ( .A0(n610), .A1(n536), .B0(n535), .C0(n549), .Y(n542) );
  OAI222XL U505 ( .A0(n504), .A1(n528), .B0(n457), .B1(n505), .C0(n281), .C1(
        n532), .Y(n323) );
  OAI222XL U506 ( .A0(n507), .A1(n537), .B0(n506), .B1(n569), .C0(n610), .C1(
        n541), .Y(n327) );
  OAI31XL U507 ( .A0(n533), .A1(n614), .A2(n532), .B0(n531), .Y(n334) );
  INVX12 U508 ( .A(n656), .Y(Valid) );
  INVX12 U509 ( .A(n650), .Y(MinCost[9]) );
  NAND2XL U510 ( .A(w2), .B(n339), .Y(n341) );
  OAI211XL U511 ( .A0(\P0/cs [0]), .A1(n576), .B0(n341), .C0(n581), .Y(n342)
         );
  INVXL U512 ( .A(n342), .Y(n593) );
  INVX12 U513 ( .A(n651), .Y(MinCost[8]) );
  INVX12 U514 ( .A(n653), .Y(MinCost[4]) );
  INVX12 U515 ( .A(n654), .Y(MinCost[3]) );
  INVX12 U516 ( .A(n652), .Y(MinCost[5]) );
  INVX12 U517 ( .A(n644), .Y(W[2]) );
  INVX12 U518 ( .A(n655), .Y(MinCost[1]) );
  INVX12 U519 ( .A(n646), .Y(W[0]) );
  INVX12 U520 ( .A(n645), .Y(W[1]) );
  NOR2X1 U521 ( .A(list[16]), .B(n615), .Y(n438) );
  NOR2X1 U522 ( .A(\P0/SearchNum [2]), .B(n617), .Y(n439) );
  AOI211X1 U523 ( .A0(n583), .A1(n605), .B0(n438), .C0(n439), .Y(n344) );
  NOR2X1 U524 ( .A(\P0/SearchNum [2]), .B(n603), .Y(n546) );
  NOR2X1 U525 ( .A(list[13]), .B(n615), .Y(n545) );
  AOI211X1 U526 ( .A0(n583), .A1(n604), .B0(n546), .C0(n545), .Y(n345) );
  NAND2X2 U527 ( .A(n353), .B(n355), .Y(n361) );
  NOR2X1 U528 ( .A(n583), .B(n596), .Y(n460) );
  NAND2X1 U529 ( .A(\P0/SearchNum [2]), .B(n595), .Y(n461) );
  AOI211X4 U530 ( .A0(n583), .A1(n596), .B0(n460), .C0(n346), .Y(n379) );
  INVX3 U531 ( .A(n379), .Y(n570) );
  NOR2X1 U532 ( .A(\P0/SearchNum [2]), .B(n594), .Y(n488) );
  NOR2X1 U533 ( .A(list[19]), .B(n615), .Y(n487) );
  AOI211X1 U534 ( .A0(n583), .A1(n600), .B0(n488), .C0(n487), .Y(n347) );
  NAND4X1 U535 ( .A(n347), .B(n486), .C(n490), .D(n485), .Y(n357) );
  NAND2X1 U536 ( .A(n361), .B(n417), .Y(n416) );
  NAND2X1 U537 ( .A(\P0/SearchNum [2]), .B(n597), .Y(n474) );
  NAND2X1 U538 ( .A(list[7]), .B(n615), .Y(n471) );
  NAND2X1 U539 ( .A(\P0/SearchNum [1]), .B(n598), .Y(n472) );
  NAND4X1 U540 ( .A(n474), .B(n471), .C(n477), .D(n472), .Y(n348) );
  AOI211X1 U541 ( .A0(n583), .A1(n601), .B0(n473), .C0(n348), .Y(n359) );
  AOI211X1 U542 ( .A0(n583), .A1(n281), .B0(n359), .C0(n522), .Y(n349) );
  NOR2X1 U543 ( .A(n583), .B(n287), .Y(n510) );
  OAI31X1 U544 ( .A0(n521), .A1(n524), .A2(n352), .B0(n360), .Y(n354) );
  OAI2BB1X1 U545 ( .A0N(n355), .A1N(n354), .B0(n353), .Y(n356) );
  AO21X4 U546 ( .A0(n357), .A1(n356), .B0(n379), .Y(n358) );
  NOR2X2 U547 ( .A(n361), .B(n411), .Y(n375) );
  OAI221X4 U548 ( .A0(n362), .A1(n361), .B0(n360), .B1(n361), .C0(n417), .Y(
        n370) );
  NOR2BX4 U549 ( .AN(n375), .B(n370), .Y(n501) );
  INVX3 U550 ( .A(n501), .Y(n418) );
  OAI22XL U551 ( .A0(n623), .A1(n416), .B0(n418), .B1(n611), .Y(n366) );
  NAND2X4 U552 ( .A(n375), .B(n370), .Y(n419) );
  OAI22XL U553 ( .A0(n417), .A1(n612), .B0(n598), .B1(n419), .Y(n365) );
  INVX2 U554 ( .A(n419), .Y(n433) );
  AOI222XL U555 ( .A0(n411), .A1(list[22]), .B0(list[10]), .B1(n433), .C0(n501), .C1(list[4]), .Y(n363) );
  OAI31XL U556 ( .A0(n366), .A1(n365), .A2(n435), .B0(n364), .Y(n367) );
  OAI21X1 U557 ( .A0(n613), .A1(n412), .B0(n367), .Y(n566) );
  NOR2X1 U558 ( .A(n417), .B(n619), .Y(n369) );
  OAI22X2 U559 ( .A0(n418), .A1(n608), .B0(n419), .B1(n620), .Y(n368) );
  AOI211X1 U560 ( .A0(\P0/Direction [4]), .A1(n498), .B0(n369), .C0(n368), .Y(
        n372) );
  CLKINVX1 U561 ( .A(n435), .Y(n381) );
  AND2X2 U562 ( .A(n372), .B(n381), .Y(n373) );
  OAI22X4 U563 ( .A0(n381), .A1(n571), .B0(n609), .B1(n412), .Y(n449) );
  AOI2BB2X2 U564 ( .B0(n371), .B1(n370), .A0N(n371), .A1N(n370), .Y(n392) );
  INVX3 U565 ( .A(n392), .Y(n390) );
  NOR2X1 U566 ( .A(n435), .B(n372), .Y(n450) );
  INVX3 U567 ( .A(n450), .Y(n374) );
  OAI211X1 U568 ( .A0(n375), .A1(n374), .B0(n412), .C0(n573), .Y(n377) );
  NOR2XL U569 ( .A(n417), .B(n449), .Y(n376) );
  AOI211X4 U570 ( .A0(n449), .A1(n433), .B0(n377), .C0(n376), .Y(n384) );
  NOR2X1 U571 ( .A(n384), .B(n435), .Y(n383) );
  NOR2X1 U572 ( .A(n381), .B(n392), .Y(n387) );
  NOR2X4 U573 ( .A(n381), .B(n390), .Y(n385) );
  NAND2X1 U574 ( .A(n384), .B(n385), .Y(n382) );
  OAI22XL U575 ( .A0(n598), .A1(n479), .B0(n537), .B1(n611), .Y(n398) );
  OAI22X1 U576 ( .A0(n613), .A1(n451), .B0(n599), .B1(n465), .Y(n397) );
  INVX1 U577 ( .A(n384), .Y(n389) );
  NAND2X1 U578 ( .A(n385), .B(n389), .Y(n386) );
  OAI22X1 U579 ( .A0(n623), .A1(n552), .B0(n612), .B1(n492), .Y(n396) );
  NOR2X1 U580 ( .A(n435), .B(n389), .Y(n393) );
  NAND2X1 U581 ( .A(n390), .B(n393), .Y(n391) );
  BUFX3 U582 ( .A(n391), .Y(n515) );
  BUFX3 U583 ( .A(n394), .Y(n528) );
  OAI22X1 U584 ( .A0(n618), .A1(n515), .B0(n607), .B1(n528), .Y(n395) );
  NOR4X1 U585 ( .A(n398), .B(n397), .C(n396), .D(n395), .Y(n399) );
  BUFX3 U586 ( .A(n399), .Y(n565) );
  OAI22XL U587 ( .A0(n416), .A1(n604), .B0(n418), .B1(n622), .Y(n403) );
  OAI22XL U588 ( .A0(n417), .A1(n600), .B0(n601), .B1(n419), .Y(n402) );
  AOI222XL U589 ( .A0(n411), .A1(list[21]), .B0(list[9]), .B1(n433), .C0(n501), 
        .C1(list[3]), .Y(n400) );
  OAI31XL U590 ( .A0(n403), .A1(n402), .A2(n435), .B0(n401), .Y(n404) );
  OAI22XL U591 ( .A0(n605), .A1(n405), .B0(n596), .B1(n465), .Y(n410) );
  OAI22XL U592 ( .A0(n604), .A1(n552), .B0(n600), .B1(n492), .Y(n409) );
  OAI22XL U593 ( .A0(n601), .A1(n479), .B0(n537), .B1(n622), .Y(n407) );
  NAND2X1 U594 ( .A(n500), .B(n411), .Y(n431) );
  OAI21X1 U595 ( .A0(n502), .A1(n492), .B0(n431), .Y(n496) );
  NAND2X1 U596 ( .A(n433), .B(n500), .Y(n432) );
  OAI21X1 U597 ( .A0(n502), .A1(n479), .B0(n432), .Y(n483) );
  OAI22XL U598 ( .A0(n417), .A1(n594), .B0(n603), .B1(n416), .Y(n415) );
  OAI22XL U599 ( .A0(n597), .A1(n419), .B0(n418), .B1(n610), .Y(n414) );
  OAI22XL U600 ( .A0(n417), .A1(n595), .B0(n617), .B1(n416), .Y(n421) );
  OAI22XL U601 ( .A0(n606), .A1(n419), .B0(n418), .B1(n616), .Y(n420) );
  OAI21XL U602 ( .A0(n421), .A1(n420), .B0(n435), .Y(n422) );
  OAI21X1 U603 ( .A0(n423), .A1(n435), .B0(n422), .Y(n568) );
  NAND3X1 U604 ( .A(n433), .B(n632), .C(n435), .Y(n434) );
  OAI21X1 U605 ( .A0(n502), .A1(n515), .B0(n434), .Y(n519) );
  NAND3X1 U606 ( .A(n501), .B(n632), .C(n435), .Y(n457) );
  OAI21X1 U607 ( .A0(n502), .A1(n528), .B0(n457), .Y(n532) );
  OAI21XL U608 ( .A0(n438), .A1(n437), .B0(n436), .Y(n440) );
  AOI21XL U609 ( .A0(n441), .A1(n440), .B0(n439), .Y(n442) );
  NOR3X2 U610 ( .A(n621), .B(\P0/cs [0]), .C(\P0/cs [1]), .Y(n554) );
  INVX2 U611 ( .A(n554), .Y(n549) );
  OAI22XL U612 ( .A0(n626), .A1(n515), .B0(n614), .B1(n528), .Y(n447) );
  OAI22XL U613 ( .A0(n625), .A1(n552), .B0(n609), .B1(n451), .Y(n446) );
  OA22X1 U614 ( .A0(n627), .A1(n465), .B0(n608), .B1(n537), .Y(n444) );
  OAI31X4 U615 ( .A0(n447), .A1(n446), .A2(n445), .B0(n633), .Y(n551) );
  OAI2BB2XL U616 ( .B0(n553), .B1(n451), .A0N(n609), .A1N(n456), .Y(n452) );
  OAI22XL U617 ( .A0(n453), .A1(n452), .B0(n554), .B1(n455), .Y(n454) );
  OAI2BB1XL U618 ( .A0N(n460), .A1N(n459), .B0(n458), .Y(n462) );
  NAND2XL U619 ( .A(n462), .B(n461), .Y(n463) );
  NOR2BX1 U620 ( .AN(n465), .B(n551), .Y(n467) );
  OAI2BB2XL U621 ( .B0(n553), .B1(n465), .A0N(n627), .A1N(n470), .Y(n466) );
  OAI22XL U622 ( .A0(n554), .A1(n469), .B0(n467), .B1(n466), .Y(n468) );
  OAI2BB1XL U623 ( .A0N(n473), .A1N(n472), .B0(n471), .Y(n475) );
  NAND2XL U624 ( .A(n475), .B(n474), .Y(n476) );
  OAI2BB2XL U625 ( .B0(n553), .B1(n479), .A0N(n620), .A1N(n484), .Y(n480) );
  OAI22XL U626 ( .A0(n481), .A1(n480), .B0(n554), .B1(n483), .Y(n482) );
  OAI21XL U627 ( .A0(n487), .A1(n486), .B0(n485), .Y(n489) );
  AOI21XL U628 ( .A0(n490), .A1(n489), .B0(n488), .Y(n491) );
  NOR2BX1 U629 ( .AN(n492), .B(n551), .Y(n494) );
  OAI2BB2XL U630 ( .B0(n553), .B1(n492), .A0N(n619), .A1N(n497), .Y(n493) );
  OAI22XL U631 ( .A0(n494), .A1(n493), .B0(n554), .B1(n496), .Y(n495) );
  NAND2X1 U632 ( .A(n498), .B(n500), .Y(n499) );
  OAI21X1 U633 ( .A0(n502), .A1(n552), .B0(n499), .Y(n558) );
  NAND2X1 U634 ( .A(n501), .B(n500), .Y(n506) );
  OAI21X1 U635 ( .A0(n502), .A1(n537), .B0(n506), .Y(n541) );
  OAI2BB1XL U636 ( .A0N(n510), .A1N(n509), .B0(n508), .Y(n512) );
  NOR2BX1 U637 ( .AN(n515), .B(n551), .Y(n517) );
  OAI2BB2XL U638 ( .B0(n553), .B1(n515), .A0N(n626), .A1N(n520), .Y(n516) );
  OAI22XL U639 ( .A0(n517), .A1(n516), .B0(n554), .B1(n519), .Y(n518) );
  NOR2BX1 U640 ( .AN(n522), .B(n521), .Y(n525) );
  OAI21XL U641 ( .A0(n525), .A1(n524), .B0(n523), .Y(n526) );
  NOR2BX1 U642 ( .AN(n528), .B(n551), .Y(n530) );
  OAI2BB2XL U643 ( .B0(n553), .B1(n528), .A0N(n614), .A1N(n533), .Y(n529) );
  OAI22XL U644 ( .A0(n530), .A1(n529), .B0(n554), .B1(n532), .Y(n531) );
  OAI22XL U645 ( .A0(\P0/SearchNum [1]), .A1(n611), .B0(n622), .B1(n583), .Y(
        n534) );
  OAI21XL U646 ( .A0(list[1]), .A1(n615), .B0(n534), .Y(n536) );
  OA21XL U647 ( .A0(n536), .A1(n610), .B0(\P0/SearchNum [2]), .Y(n535) );
  NOR2BX1 U648 ( .AN(n537), .B(n551), .Y(n539) );
  OAI2BB2XL U649 ( .B0(n553), .B1(n537), .A0N(n608), .A1N(n542), .Y(n538) );
  OAI22XL U650 ( .A0(n539), .A1(n538), .B0(n554), .B1(n541), .Y(n540) );
  OAI21XL U651 ( .A0(n545), .A1(n544), .B0(n543), .Y(n547) );
  AOI21XL U652 ( .A0(n548), .A1(n547), .B0(n546), .Y(n550) );
  NOR2BX1 U653 ( .AN(n552), .B(n551), .Y(n556) );
  OAI2BB2XL U654 ( .B0(n553), .B1(n552), .A0N(n625), .A1N(n559), .Y(n555) );
  OAI22XL U655 ( .A0(n556), .A1(n555), .B0(n554), .B1(n558), .Y(n557) );
  AOI222X1 U656 ( .A0(n569), .A1(n568), .B0(n569), .B1(n567), .C0(n568), .C1(
        n567), .Y(n575) );
  NAND2BX4 U657 ( .AN(n575), .B(n574), .Y(n578) );
  NAND2BX4 U658 ( .AN(n576), .B(n578), .Y(n582) );
  OAI21XL U659 ( .A0(n592), .A1(n582), .B0(n577), .Y(\P0/ns[2] ) );
  BUFX12 U660 ( .A(n649), .Y(J[0]) );
  BUFX12 U661 ( .A(n647), .Y(J[2]) );
  BUFX12 U662 ( .A(n648), .Y(J[1]) );
  AO21X1 U663 ( .A0(n578), .A1(n592), .B0(\P0/cs [2]), .Y(n579) );
  AO21X1 U664 ( .A0(\P0/cs [1]), .A1(n579), .B0(\P0/cs [0]), .Y(n580) );
  NOR2X8 U665 ( .A(n582), .B(\P0/cs [0]), .Y(n587) );
  INVX4 U666 ( .A(n587), .Y(n591) );
  NOR2X1 U667 ( .A(n583), .B(n591), .Y(n585) );
  NAND2X1 U668 ( .A(n584), .B(n587), .Y(n588) );
  OAI211XL U669 ( .A0(n585), .A1(n615), .B0(n588), .C0(n590), .Y(n304) );
  INVX1 U670 ( .A(n585), .Y(n586) );
  OAI211XL U671 ( .A0(n587), .A1(n340), .B0(n590), .C0(n586), .Y(n303) );
  OAI211XL U672 ( .A0(n592), .A1(n591), .B0(n590), .C0(n589), .Y(n302) );
endmodule

