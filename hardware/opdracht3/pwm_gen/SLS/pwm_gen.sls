extern network dfr11 (terminal D, R, CK, Q, vss, vdd)
extern network na310 (terminal A, B, C, Y, vss, vdd)
extern network no210 (terminal A, B, Y, vss, vdd)
extern network na210 (terminal A, B, Y, vss, vdd)
extern network ex210 (terminal A, B, Y, vss, vdd)
extern network iv110 (terminal A, Y, vss, vdd)
network pwm_gen (terminal clk, reset, enabled, width_3_0_3, width_3_0_2, 
                          width_3_0_1, width_3_0_0, pulse, vss, vdd)
{
   {count_reg_0_inst} dfr11 (N16, reset, clk, count_0_port, vss, vdd);
   {count_reg_1_inst} dfr11 (N17, reset, clk, count_1_port, vss, vdd);
   {count_reg_2_inst} dfr11 (N18, reset, clk, count_2_port, vss, vdd);
   {count_reg_3_inst} dfr11 (N19, reset, clk, count_3_port, vss, vdd);
   {pulse_reg} dfr11 (N25, N26, clk, pulse, vss, vdd);
   {U38} na210 (enabled, n38, N26, vss, vdd);
   {U39} na210 (n39, n40, N25, vss, vdd);
   {U40} na210 (n41, n42, n40, vss, vdd);
   {U41} iv110 (n43, n42, vss, vdd);
   {U42} no210 (n44, width_3_0_3, n43, vss, vdd);
   {U43} na210 (n45, n46, n41, vss, vdd);
   {U44} iv110 (n47, n46, vss, vdd);
   {U45} no210 (n48, count_2_port, n47, vss, vdd);
   {U46} na310 (n49, n50, n51, n45, vss, vdd);
   {U47} na210 (count_2_port, n48, n51, vss, vdd);
   {U48} iv110 (width_3_0_2, n48, vss, vdd);
   {U49} iv110 (n52, n50, vss, vdd);
   {U50} no210 (n53, width_3_0_1, n52, vss, vdd);
   {U51} no210 (n54, count_1_port, n53, vss, vdd);
   {U52} na210 (count_1_port, n54, n49, vss, vdd);
   {U53} na210 (width_3_0_0, n55, n54, vss, vdd);
   {U54} na210 (width_3_0_3, n56, n39, vss, vdd);
   {U55} na210 (count_3_port, n57, n56, vss, vdd);
   {U56} na310 (width_3_0_0, width_3_0_2, width_3_0_1, n57, vss, vdd);
   {U57} ex210 (n44, n58, N19, vss, vdd);
   {U58} na210 (n59, count_2_port, n58, vss, vdd);
   {U59} iv110 (count_3_port, n44, vss, vdd);
   {U60} ex210 (count_2_port, n59, N18, vss, vdd);
   {U61} no210 (n60, n61, n59, vss, vdd);
   {U62} ex210 (n61, n60, N17, vss, vdd);
   {U63} na210 (count_0_port, n38, n60, vss, vdd);
   {U64} iv110 (reset, n38, vss, vdd);
   {U65} iv110 (count_1_port, n61, vss, vdd);
   {U66} ex210 (n55, reset, N16, vss, vdd);
   {U67} iv110 (count_0_port, n55, vss, vdd);
}



