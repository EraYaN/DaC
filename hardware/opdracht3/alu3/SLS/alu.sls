extern network mu111 (terminal A, B, S, Y, vss, vdd)
extern network na310 (terminal A, B, C, Y, vss, vdd)
extern network ex210 (terminal A, B, Y, vss, vdd)
extern network no210 (terminal A, B, Y, vss, vdd)
extern network no310 (terminal A, B, C, Y, vss, vdd)
extern network na210 (terminal A, B, Y, vss, vdd)
extern network iv110 (terminal A, Y, vss, vdd)
network alu (terminal input_a_11_0_11, input_a_11_0_10, input_a_11_0_9, 
                      input_a_11_0_8, input_a_11_0_7, input_a_11_0_6, 
                      input_a_11_0_5, input_a_11_0_4, input_a_11_0_3, 
                      input_a_11_0_2, input_a_11_0_1, input_a_11_0_0, 
                      input_b_11_0_11, input_b_11_0_10, input_b_11_0_9, 
                      input_b_11_0_8, input_b_11_0_7, input_b_11_0_6, 
                      input_b_11_0_5, input_b_11_0_4, input_b_11_0_3, 
                      input_b_11_0_2, input_b_11_0_1, input_b_11_0_0, op_3_0_3, 
                      op_3_0_2, op_3_0_1, op_3_0_0, output_r_11_0_11, 
                      output_r_11_0_10, output_r_11_0_9, output_r_11_0_8, 
                      output_r_11_0_7, output_r_11_0_6, output_r_11_0_5, 
                      output_r_11_0_4, output_r_11_0_3, output_r_11_0_2, 
                      output_r_11_0_1, output_r_11_0_0, status_d_3_0_3, 
                      status_d_3_0_2, status_d_3_0_1, status_d_3_0_0, vss, vdd)
{
   net {status_d_3_0_3, X_Logic0_port};
   net {status_d_3_0_2, X_Logic0_port};
   net {status_d_3_0_1, X_Logic0_port};
   net {status_d_3_0_0, status_d_0_port};
   net {X_Logic0_port, vss};
   {U37} no210 (n39, n40, n38, vss, vdd);
   {U38} na210 (n40, n39, n34, vss, vdd);
   {U248} no310 (n364, op_3_0_2, n362, n239, vss, vdd);
   {U249} no310 (n365, op_3_0_3, n364, n240, vss, vdd);
   {U250} na310 (n241, n242, n243, output_r_11_0_5, vss, vdd);
   {U251} iv110 (n244, n243, vss, vdd);
   {U252} na310 (n245, n246, n247, n244, vss, vdd);
   {U253} na210 (n248, input_b_11_0_4, n247, vss, vdd);
   {U254} na210 (n249, input_a_11_0_4, n246, vss, vdd);
   {U255} ex210 (n250, n251, n245, vss, vdd);
   {U256} ex210 (n40, n39, n251, vss, vdd);
   {U257} mu111 (n252, n253, input_b_11_0_5, n242, vss, vdd);
   {U258} no210 (n254, n255, n253, vss, vdd);
   {U259} mu111 (n239, n257, input_a_11_0_5, n255, vss, vdd);
   {U260} no210 (n258, n259, n252, vss, vdd);
   {U261} mu111 (n260, n256, input_a_11_0_5, n259, vss, vdd);
   {U262} mu111 (n261, n262, input_a_11_0_5, n241, vss, vdd);
   {U263} na310 (n263, n264, n265, output_r_11_0_4, vss, vdd);
   {U264} iv110 (n266, n265, vss, vdd);
   {U265} na310 (n267, n268, n269, n266, vss, vdd);
   {U266} na210 (n248, input_b_11_0_3, n269, vss, vdd);
   {U267} na210 (n249, input_a_11_0_3, n268, vss, vdd);
   {U268} iv110 (n270, n267, vss, vdd);
   {U269} na210 (n271, n272, n270, vss, vdd);
   {U270} na210 (n273, input_a_11_0_5, n272, vss, vdd);
   {U271} na210 (n274, input_b_11_0_5, n271, vss, vdd);
   {U272} mu111 (n275, n276, input_b_11_0_4, n264, vss, vdd);
   {U273} no210 (n254, n277, n276, vss, vdd);
   {U274} mu111 (n239, n257, input_a_11_0_4, n277, vss, vdd);
   {U275} no210 (n258, n278, n275, vss, vdd);
   {U276} mu111 (n260, n256, input_a_11_0_4, n278, vss, vdd);
   {U277} no210 (n279, n280, n263, vss, vdd);
   {U278} mu111 (n258, n254, input_a_11_0_4, n280, vss, vdd);
   {U279} ex210 (n281, n282, n279, vss, vdd);
   {U280} ex210 (n283, n284, n282, vss, vdd);
   {U281} na310 (n285, n286, n287, output_r_11_0_3, vss, vdd);
   {U282} iv110 (n288, n287, vss, vdd);
   {U283} na310 (n289, n290, n291, n288, vss, vdd);
   {U284} na210 (n248, input_b_11_0_2, n291, vss, vdd);
   {U285} na210 (n249, input_a_11_0_2, n290, vss, vdd);
   {U286} iv110 (n292, n289, vss, vdd);
   {U287} na210 (n293, n294, n292, vss, vdd);
   {U288} na210 (n273, input_a_11_0_4, n294, vss, vdd);
   {U289} na210 (n274, input_b_11_0_4, n293, vss, vdd);
   {U290} mu111 (n295, n296, input_b_11_0_3, n286, vss, vdd);
   {U291} no210 (n254, n297, n296, vss, vdd);
   {U292} mu111 (n239, n257, input_a_11_0_3, n297, vss, vdd);
   {U293} no210 (n258, n298, n295, vss, vdd);
   {U294} mu111 (n260, n256, input_a_11_0_3, n298, vss, vdd);
   {U295} no210 (n299, n300, n285, vss, vdd);
   {U296} mu111 (n258, n254, input_a_11_0_3, n300, vss, vdd);
   {U297} ex210 (n301, n302, n299, vss, vdd);
   {U298} ex210 (n303, n304, n302, vss, vdd);
   {U299} na310 (n305, n306, n307, output_r_11_0_2, vss, vdd);
   {U300} no310 (n308, n309, n310, n307, vss, vdd);
   {U301} iv110 (n311, n310, vss, vdd);
   {U302} na210 (n248, input_b_11_0_1, n311, vss, vdd);
   {U303} iv110 (n312, n309, vss, vdd);
   {U304} na210 (n249, input_a_11_0_1, n312, vss, vdd);
   {U305} na210 (n313, n314, n308, vss, vdd);
   {U306} na210 (n273, input_a_11_0_3, n314, vss, vdd);
   {U307} na210 (n274, input_b_11_0_3, n313, vss, vdd);
   {U308} mu111 (n315, n316, input_b_11_0_2, n306, vss, vdd);
   {U309} no210 (n254, n317, n316, vss, vdd);
   {U310} mu111 (n239, n257, input_a_11_0_2, n317, vss, vdd);
   {U311} no210 (n258, n318, n315, vss, vdd);
   {U312} mu111 (n260, n256, input_a_11_0_2, n318, vss, vdd);
   {U313} no210 (n319, n320, n305, vss, vdd);
   {U314} mu111 (n258, n254, input_a_11_0_2, n320, vss, vdd);
   {U315} ex210 (n321, n322, n319, vss, vdd);
   {U316} ex210 (n323, n324, n322, vss, vdd);
   {U317} na310 (n325, n326, n327, output_r_11_0_1, vss, vdd);
   {U318} iv110 (n328, n327, vss, vdd);
   {U319} na310 (n329, n330, n331, n328, vss, vdd);
   {U320} na210 (n248, input_b_11_0_0, n331, vss, vdd);
   {U321} na210 (n249, input_a_11_0_0, n330, vss, vdd);
   {U322} iv110 (n332, n329, vss, vdd);
   {U323} na210 (n333, n334, n332, vss, vdd);
   {U324} na210 (n273, input_a_11_0_2, n334, vss, vdd);
   {U325} na210 (n274, input_b_11_0_2, n333, vss, vdd);
   {U326} mu111 (n335, n336, input_b_11_0_1, n326, vss, vdd);
   {U327} no210 (n254, n337, n336, vss, vdd);
   {U328} mu111 (n239, n257, input_a_11_0_1, n337, vss, vdd);
   {U329} no210 (n258, n338, n335, vss, vdd);
   {U330} mu111 (n260, n256, input_a_11_0_1, n338, vss, vdd);
   {U331} no210 (n339, n340, n325, vss, vdd);
   {U332} mu111 (n258, n254, input_a_11_0_1, n340, vss, vdd);
   {U333} ex210 (n341, n342, n339, vss, vdd);
   {U334} ex210 (n343, n344, n342, vss, vdd);
   {U335} na310 (n345, n346, n347, output_r_11_0_0, vss, vdd);
   {U336} iv110 (n348, n347, vss, vdd);
   {U337} na310 (n349, n350, n351, n348, vss, vdd);
   {U338} na210 (input_b_11_0_1, n274, n351, vss, vdd);
   {U339} no310 (n352, op_3_0_0, n353, n274, vss, vdd);
   {U340} na210 (input_a_11_0_1, n273, n350, vss, vdd);
   {U341} no210 (n353, n354, n273, vss, vdd);
   {U342} ex210 (n355, n356, n349, vss, vdd);
   {U343} ex210 (n357, n358, n356, vss, vdd);
   {U344} mu111 (n359, n360, input_b_11_0_0, n346, vss, vdd);
   {U345} no210 (n254, n361, n360, vss, vdd);
   {U346} mu111 (n239, n257, input_a_11_0_0, n361, vss, vdd);
   {U347} no210 (n362, n354, n257, vss, vdd);
   {U348} iv110 (n262, n254, vss, vdd);
   {U349} no210 (n258, n363, n359, vss, vdd);
   {U350} mu111 (n260, n256, input_a_11_0_0, n363, vss, vdd);
   {U351} no310 (n364, op_3_0_2, n362, n256, vss, vdd);
   {U352} no310 (n365, op_3_0_0, n362, n260, vss, vdd);
   {U353} iv110 (n261, n258, vss, vdd);
   {U354} mu111 (n261, n262, input_a_11_0_0, n345, vss, vdd);
   {U355} na310 (op_3_0_3, op_3_0_1, n366, n262, vss, vdd);
   {U356} no210 (op_3_0_2, op_3_0_0, n366, vss, vdd);
   {U357} na310 (op_3_0_3, op_3_0_0, n367, n261, vss, vdd);
   {U358} no210 (op_3_0_1, n365, n367, vss, vdd);
   {U359} na210 (n368, n369, n40, vss, vdd);
   {U360} na210 (n370, n283, n369, vss, vdd);
   {U361} na210 (n371, n372, n283, vss, vdd);
   {U362} na210 (n373, n303, n372, vss, vdd);
   {U363} na210 (n374, n375, n303, vss, vdd);
   {U364} na210 (input_a_11_0_3, n376, n375, vss, vdd);
   {U365} na210 (input_b_11_0_3, n377, n374, vss, vdd);
   {U366} iv110 (n378, n373, vss, vdd);
   {U367} no210 (n304, n301, n378, vss, vdd);
   {U368} na210 (n301, n304, n371, vss, vdd);
   {U369} na210 (n379, n380, n304, vss, vdd);
   {U370} na210 (n381, n323, n380, vss, vdd);
   {U371} na210 (n382, n383, n323, vss, vdd);
   {U372} na210 (n384, n343, n383, vss, vdd);
   {U373} na210 (n385, n386, n343, vss, vdd);
   {U374} iv110 (n387, n386, vss, vdd);
   {U375} no210 (n355, n388, n387, vss, vdd);
   {U376} no210 (n357, n358, n388, vss, vdd);
   {U377} ex210 (n389, n390, n355, vss, vdd);
   {U378} na210 (n391, n392, n389, vss, vdd);
   {U379} na210 (input_b_11_0_0, n376, n392, vss, vdd);
   {U380} na210 (input_a_11_0_0, n240, n391, vss, vdd);
   {U381} na210 (n358, n357, n385, vss, vdd);
   {U382} na210 (n393, n394, n357, vss, vdd);
   {U383} na210 (input_a_11_0_0, n376, n394, vss, vdd);
   {U384} na210 (input_b_11_0_0, n377, n393, vss, vdd);
   {U385} na210 (n390, n395, n358, vss, vdd);
   {U386} na210 (n396, status_d_0_port, n395, vss, vdd);
   {U387} na310 (n397, n398, n399, status_d_0_port, vss, vdd);
   {U388} na210 (n248, input_b_11_0_5, n399, vss, vdd);
   {U389} no210 (n353, n364, n248, vss, vdd);
   {U390} na210 (n396, n400, n398, vss, vdd);
   {U391} na210 (n34, n401, n400, vss, vdd);
   {U392} iv110 (n402, n401, vss, vdd);
   {U393} no210 (n250, n38, n402, vss, vdd);
   {U394} ex210 (n403, n390, n250, vss, vdd);
   {U395} na210 (n404, n405, n403, vss, vdd);
   {U396} na210 (input_b_11_0_5, n376, n405, vss, vdd);
   {U397} na210 (input_a_11_0_5, n240, n404, vss, vdd);
   {U398} na210 (n249, input_a_11_0_5, n397, vss, vdd);
   {U399} no310 (n406, op_3_0_1, n353, n249, vss, vdd);
   {U400} na210 (n362, n365, n353, vss, vdd);
   {U401} na210 (n407, n408, n384, vss, vdd);
   {U402} iv110 (n344, n407, vss, vdd);
   {U403} na210 (n341, n344, n382, vss, vdd);
   {U404} na210 (n409, n410, n344, vss, vdd);
   {U405} na210 (input_a_11_0_1, n376, n410, vss, vdd);
   {U406} na210 (input_b_11_0_1, n377, n409, vss, vdd);
   {U407} iv110 (n408, n341, vss, vdd);
   {U408} ex210 (n411, n390, n408, vss, vdd);
   {U409} na210 (n412, n413, n411, vss, vdd);
   {U410} na210 (input_b_11_0_1, n376, n413, vss, vdd);
   {U411} na210 (input_a_11_0_1, n240, n412, vss, vdd);
   {U412} na210 (n414, n415, n381, vss, vdd);
   {U413} iv110 (n324, n414, vss, vdd);
   {U414} na210 (n321, n324, n379, vss, vdd);
   {U415} na210 (n416, n417, n324, vss, vdd);
   {U416} na210 (input_a_11_0_2, n376, n417, vss, vdd);
   {U417} na210 (input_b_11_0_2, n377, n416, vss, vdd);
   {U418} iv110 (n415, n321, vss, vdd);
   {U419} ex210 (n418, n390, n415, vss, vdd);
   {U420} na210 (n419, n420, n418, vss, vdd);
   {U421} na210 (input_b_11_0_2, n376, n420, vss, vdd);
   {U422} na210 (input_a_11_0_2, n240, n419, vss, vdd);
   {U423} iv110 (n421, n301, vss, vdd);
   {U424} ex210 (n422, n390, n421, vss, vdd);
   {U425} na210 (n423, n424, n422, vss, vdd);
   {U426} na210 (input_b_11_0_3, n376, n424, vss, vdd);
   {U427} na210 (input_a_11_0_3, n377, n423, vss, vdd);
   {U428} iv110 (n425, n370, vss, vdd);
   {U429} no210 (n284, n281, n425, vss, vdd);
   {U430} na210 (n281, n284, n368, vss, vdd);
   {U431} na210 (n426, n427, n284, vss, vdd);
   {U432} na210 (input_a_11_0_4, n376, n427, vss, vdd);
   {U433} na210 (input_b_11_0_4, n240, n426, vss, vdd);
   {U434} iv110 (n428, n281, vss, vdd);
   {U435} ex210 (n429, n390, n428, vss, vdd);
   {U436} no210 (n377, n430, n390, vss, vdd);
   {U437} na210 (n431, n432, n429, vss, vdd);
   {U438} na210 (input_b_11_0_4, n376, n432, vss, vdd);
   {U439} na210 (input_a_11_0_4, n240, n431, vss, vdd);
   {U440} na210 (n433, n434, n39, vss, vdd);
   {U441} na210 (input_a_11_0_5, n376, n434, vss, vdd);
   {U442} iv110 (n435, n376, vss, vdd);
   {U443} no210 (n396, n430, n435, vss, vdd);
   {U444} no310 (n406, n365, n436, n430, vss, vdd);
   {U445} na210 (n362, n352, n436, vss, vdd);
   {U446} iv110 (op_3_0_3, n362, vss, vdd);
   {U447} no310 (n354, op_3_0_3, n365, n396, vss, vdd);
   {U448} na210 (n352, n406, n354, vss, vdd);
   {U449} iv110 (op_3_0_0, n406, vss, vdd);
   {U450} iv110 (op_3_0_1, n352, vss, vdd);
   {U451} na210 (n377, input_b_11_0_5, n433, vss, vdd);
   {U452} no310 (n365, op_3_0_3, n364, n377, vss, vdd);
   {U453} na210 (op_3_0_1, op_3_0_0, n364, vss, vdd);
   {U454} iv110 (op_3_0_2, n365, vss, vdd);
}



