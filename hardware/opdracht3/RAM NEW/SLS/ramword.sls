extern network dfn10 (terminal D, CK, Q, vss, vdd)
extern network mu111 (terminal A, B, S, Y, vss, vdd)
network ramword (terminal clk, d_in_7_0_7, d_in_7_0_6, d_in_7_0_5, d_in_7_0_4, 
                          d_in_7_0_3, d_in_7_0_2, d_in_7_0_1, d_in_7_0_0, 
                          d_out_7_0_7, d_out_7_0_6, d_out_7_0_5, d_out_7_0_4, 
                          d_out_7_0_3, d_out_7_0_2, d_out_7_0_1, d_out_7_0_0, 
                          set, vss, vdd)
{
   net {d_out_7_0_7, d_out_7_port};
   net {d_out_7_0_6, d_out_6_port};
   net {d_out_7_0_5, d_out_5_port};
   net {d_out_7_0_4, d_out_4_port};
   net {d_out_7_0_3, d_out_3_port};
   net {d_out_7_0_2, d_out_2_port};
   net {d_out_7_0_1, d_out_1_port};
   net {d_out_7_0_0, d_out_0_port};
   {word_reg_7_inst} dfn10 (n25, clk, d_out_7_port, vss, vdd);
   {word_reg_6_inst} dfn10 (n24, clk, d_out_6_port, vss, vdd);
   {word_reg_5_inst} dfn10 (n23, clk, d_out_5_port, vss, vdd);
   {word_reg_4_inst} dfn10 (n22, clk, d_out_4_port, vss, vdd);
   {word_reg_3_inst} dfn10 (n21, clk, d_out_3_port, vss, vdd);
   {word_reg_2_inst} dfn10 (n20, clk, d_out_2_port, vss, vdd);
   {word_reg_1_inst} dfn10 (n19, clk, d_out_1_port, vss, vdd);
   {word_reg_0_inst} dfn10 (n18, clk, d_out_0_port, vss, vdd);
   {U27} mu111 (d_out_7_port, d_in_7_0_7, set, n25, vss, vdd);
   {U28} mu111 (d_out_6_port, d_in_7_0_6, set, n24, vss, vdd);
   {U29} mu111 (d_out_5_port, d_in_7_0_5, set, n23, vss, vdd);
   {U30} mu111 (d_out_4_port, d_in_7_0_4, set, n22, vss, vdd);
   {U31} mu111 (d_out_3_port, d_in_7_0_3, set, n21, vss, vdd);
   {U32} mu111 (d_out_2_port, d_in_7_0_2, set, n20, vss, vdd);
   {U33} mu111 (d_out_1_port, d_in_7_0_1, set, n19, vss, vdd);
   {U34} mu111 (d_out_0_port, d_in_7_0_0, set, n18, vss, vdd);
}



