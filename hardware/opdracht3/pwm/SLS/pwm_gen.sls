extern network dfr11 (terminal D, R, CK, Q, vss, vdd)
extern network na310 (terminal A, B, C, Y, vss, vdd)
extern network na210 (terminal A, B, Y, vss, vdd)
extern network ex210 (terminal A, B, Y, vss, vdd)
extern network no210 (terminal A, B, Y, vss, vdd)
extern network iv110 (terminal A, Y, vss, vdd)
network pwm_gen (terminal clk, reset, enabled, width_3_0_3, width_3_0_2, 
                          width_3_0_1, width_3_0_0, pulse, vss, vdd)
{
   {count_reg_0_inst} dfr11 (N17, reset, clk, count_0_port, vss, vdd);
   {count_reg_1_inst} dfr11 (N18, reset, clk, count_1_port, vss, vdd);
   {count_reg_2_inst} dfr11 (N19, reset, clk, count_2_port, vss, vdd);
   {count_reg_3_inst} dfr11 (N20, reset, clk, count_3_port, vss, vdd);
   {pulse_reg} dfr11 (N26, n17_port, clk, pulse, vss, vdd);
   {U43} na210 (n44, n45, N26, vss, vdd);
   {U44} na210 (n46, n47, n45, vss, vdd);
   {U45} na210 (count_3_port, n48, n47, vss, vdd);
   {U46} iv110 (width_3_0_3, n48, vss, vdd);
   {U47} na210 (n49, n50, n46, vss, vdd);
   {U48} na210 (width_3_0_2, n51, n50, vss, vdd);
   {U49} na310 (n52, n53, n54, n49, vss, vdd);
   {U50} iv110 (n55, n54, vss, vdd);
   {U51} no210 (n51, width_3_0_2, n55, vss, vdd);
   {U52} iv110 (count_2_port, n51, vss, vdd);
   {U53} iv110 (n56, n53, vss, vdd);
   {U54} no210 (n57, width_3_0_1, n56, vss, vdd);
   {U55} no210 (n58, count_1_port, n57, vss, vdd);
   {U56} na210 (count_1_port, n58, n52, vss, vdd);
   {U57} na210 (width_3_0_0, n59, n58, vss, vdd);
   {U58} na210 (width_3_0_3, n60, n44, vss, vdd);
   {U59} na210 (count_3_port, n61, n60, vss, vdd);
   {U60} na310 (width_3_0_0, width_3_0_2, width_3_0_1, n61, vss, vdd);
   {U61} na210 (n62, n63, N20, vss, vdd);
   {U62} na310 (count_2_port, n64, n65, n63, vss, vdd);
   {U63} na210 (count_3_port, n66, n62, vss, vdd);
   {U64} iv110 (n67, n66, vss, vdd);
   {U65} no210 (n64, n68, n67, vss, vdd);
   {U66} iv110 (n65, n68, vss, vdd);
   {U67} na210 (count_2_port, count_3_port, n64, vss, vdd);
   {U68} ex210 (count_2_port, n65, N19, vss, vdd);
   {U69} no210 (n69, n70, n65, vss, vdd);
   {U70} iv110 (count_1_port, n70, vss, vdd);
   {U71} iv110 (n71, n69, vss, vdd);
   {U72} ex210 (count_1_port, n71, N18, vss, vdd);
   {U73} no210 (n59, n17_port, n71, vss, vdd);
   {U74} iv110 (n72, n17_port, vss, vdd);
   {U75} iv110 (count_0_port, n59, vss, vdd);
   {U76} ex210 (count_0_port, n72, N17, vss, vdd);
   {U77} no210 (n73, reset, n72, vss, vdd);
   {U78} iv110 (enabled, n73, vss, vdd);
}



