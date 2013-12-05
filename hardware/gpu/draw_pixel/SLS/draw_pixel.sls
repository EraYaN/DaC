extern network dfn10 (terminal D, CK, Q, vss, vdd)
extern network tinv10 (terminal A, E, Y, vss, vdd)
extern network na310 (terminal A, B, C, Y, vss, vdd)
extern network no210 (terminal A, B, Y, vss, vdd)
extern network iv110 (terminal A, Y, vss, vdd)
network draw_pixel (terminal clk, reset, enable, x_7_0_7, x_7_0_6, x_7_0_5, 
                             x_7_0_4, x_7_0_3, x_7_0_2, x_7_0_1, x_7_0_0, 
                             y_6_0_6, y_6_0_5, y_6_0_4, y_6_0_3, y_6_0_2, 
                             y_6_0_1, y_6_0_0, color_3_0_3, color_3_0_2, 
                             color_3_0_1, color_3_0_0, asb, done, 
                             ramaddr_15_0_15, ramaddr_15_0_14, ramaddr_15_0_13, 
                             ramaddr_15_0_12, ramaddr_15_0_11, ramaddr_15_0_10, 
                             ramaddr_15_0_9, ramaddr_15_0_8, ramaddr_15_0_7, 
                             ramaddr_15_0_6, ramaddr_15_0_5, ramaddr_15_0_4, 
                             ramaddr_15_0_3, ramaddr_15_0_2, ramaddr_15_0_1, 
                             ramaddr_15_0_0, ramdata_3_0_3, ramdata_3_0_2, 
                             ramdata_3_0_1, ramdata_3_0_0, draw_write, 
                             draw_can_access, vss, vdd)
{
   net {draw_write, draw_write_port};
   {busy_reg} dfn10 (draw_write_port, clk, busy, vss, vdd);
   {ramdata_tri_0_inst} tinv10 (n40, draw_write_port, ramdata_3_0_0, vss, vdd);
   {ramdata_tri_1_inst} tinv10 (n38, draw_write_port, ramdata_3_0_1, vss, vdd);
   {ramdata_tri_2_inst} tinv10 (n36, draw_write_port, ramdata_3_0_2, vss, vdd);
   {ramdata_tri_3_inst} tinv10 (n34, draw_write_port, ramdata_3_0_3, vss, vdd);
   {ramaddr_tri_0_inst} tinv10 (n32, draw_write_port, ramaddr_15_0_0, vss, vdd);
   {ramaddr_tri_1_inst} tinv10 (n30, draw_write_port, ramaddr_15_0_1, vss, vdd);
   {ramaddr_tri_2_inst} tinv10 (n28, draw_write_port, ramaddr_15_0_2, vss, vdd);
   {ramaddr_tri_3_inst} tinv10 (n26, draw_write_port, ramaddr_15_0_3, vss, vdd);
   {ramaddr_tri_4_inst} tinv10 (n24, draw_write_port, ramaddr_15_0_4, vss, vdd);
   {ramaddr_tri_5_inst} tinv10 (n22, draw_write_port, ramaddr_15_0_5, vss, vdd);
   {ramaddr_tri_6_inst} tinv10 (n20, draw_write_port, ramaddr_15_0_6, vss, vdd);
   {ramaddr_tri_7_inst} tinv10 (n18, n50, ramaddr_15_0_7, vss, vdd);
   {ramaddr_tri_8_inst} tinv10 (n16, n50, ramaddr_15_0_8, vss, vdd);
   {ramaddr_tri_9_inst} tinv10 (n14, n50, ramaddr_15_0_9, vss, vdd);
   {ramaddr_tri_10_inst} tinv10 (n12, n50, ramaddr_15_0_10, vss, vdd);
   {ramaddr_tri_11_inst} tinv10 (n10, n50, ramaddr_15_0_11, vss, vdd);
   {ramaddr_tri_12_inst} tinv10 (n8, n50, ramaddr_15_0_12, vss, vdd);
   {ramaddr_tri_13_inst} tinv10 (n6, n50, ramaddr_15_0_13, vss, vdd);
   {ramaddr_tri_14_inst} tinv10 (n4, n50, ramaddr_15_0_14, vss, vdd);
   {ramaddr_tri_15_inst} tinv10 (asb, n50, ramaddr_15_0_15, vss, vdd);
   {U28} iv110 (n50, n45, vss, vdd);
   {U29} iv110 (n45, draw_write_port, vss, vdd);
   {U30} na310 (enable, busy, draw_can_access, n47, vss, vdd);
   {U31} no210 (reset, n47, done, vss, vdd);
   {U32} iv110 (reset, n48, vss, vdd);
   {U33} na310 (draw_can_access, enable, n48, n49, vss, vdd);
   {U34} no210 (busy, n49, n50, vss, vdd);
   {U35} iv110 (color_3_0_0, n40, vss, vdd);
   {U36} iv110 (color_3_0_1, n38, vss, vdd);
   {U37} iv110 (color_3_0_2, n36, vss, vdd);
   {U38} iv110 (color_3_0_3, n34, vss, vdd);
   {U39} iv110 (x_7_0_0, n32, vss, vdd);
   {U40} iv110 (x_7_0_1, n30, vss, vdd);
   {U41} iv110 (x_7_0_2, n28, vss, vdd);
   {U42} iv110 (x_7_0_3, n26, vss, vdd);
   {U43} iv110 (x_7_0_4, n24, vss, vdd);
   {U44} iv110 (x_7_0_5, n22, vss, vdd);
   {U45} iv110 (x_7_0_6, n20, vss, vdd);
   {U46} iv110 (x_7_0_7, n18, vss, vdd);
   {U47} iv110 (y_6_0_0, n16, vss, vdd);
   {U48} iv110 (y_6_0_1, n14, vss, vdd);
   {U49} iv110 (y_6_0_2, n12, vss, vdd);
   {U50} iv110 (y_6_0_3, n10, vss, vdd);
   {U51} iv110 (y_6_0_4, n8, vss, vdd);
   {U52} iv110 (y_6_0_5, n6, vss, vdd);
   {U53} iv110 (y_6_0_6, n4, vss, vdd);
}



