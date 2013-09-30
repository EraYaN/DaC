extern network ramword (terminal clk, d_in_7_0_7, d_in_7_0_6, d_in_7_0_5, 
                                 d_in_7_0_4, d_in_7_0_3, d_in_7_0_2, 
                                 d_in_7_0_1, d_in_7_0_0, d_out_7_0_7, 
                                 d_out_7_0_6, d_out_7_0_5, d_out_7_0_4, 
                                 d_out_7_0_3, d_out_7_0_2, d_out_7_0_1, 
                                 d_out_7_0_0, set, vss, vdd)
network rambank (terminal clk, write_7_0_7, write_7_0_6, write_7_0_5, 
                          write_7_0_4, write_7_0_3, write_7_0_2, write_7_0_1, 
                          write_7_0_0, in_lines_63_0_63, in_lines_63_0_62, 
                          in_lines_63_0_61, in_lines_63_0_60, in_lines_63_0_59, 
                          in_lines_63_0_58, in_lines_63_0_57, in_lines_63_0_56, 
                          in_lines_63_0_55, in_lines_63_0_54, in_lines_63_0_53, 
                          in_lines_63_0_52, in_lines_63_0_51, in_lines_63_0_50, 
                          in_lines_63_0_49, in_lines_63_0_48, in_lines_63_0_47, 
                          in_lines_63_0_46, in_lines_63_0_45, in_lines_63_0_44, 
                          in_lines_63_0_43, in_lines_63_0_42, in_lines_63_0_41, 
                          in_lines_63_0_40, in_lines_63_0_39, in_lines_63_0_38, 
                          in_lines_63_0_37, in_lines_63_0_36, in_lines_63_0_35, 
                          in_lines_63_0_34, in_lines_63_0_33, in_lines_63_0_32, 
                          in_lines_63_0_31, in_lines_63_0_30, in_lines_63_0_29, 
                          in_lines_63_0_28, in_lines_63_0_27, in_lines_63_0_26, 
                          in_lines_63_0_25, in_lines_63_0_24, in_lines_63_0_23, 
                          in_lines_63_0_22, in_lines_63_0_21, in_lines_63_0_20, 
                          in_lines_63_0_19, in_lines_63_0_18, in_lines_63_0_17, 
                          in_lines_63_0_16, in_lines_63_0_15, in_lines_63_0_14, 
                          in_lines_63_0_13, in_lines_63_0_12, in_lines_63_0_11, 
                          in_lines_63_0_10, in_lines_63_0_9, in_lines_63_0_8, 
                          in_lines_63_0_7, in_lines_63_0_6, in_lines_63_0_5, 
                          in_lines_63_0_4, in_lines_63_0_3, in_lines_63_0_2, 
                          in_lines_63_0_1, in_lines_63_0_0, out_lines_63_0_63, 
                          out_lines_63_0_62, out_lines_63_0_61, 
                          out_lines_63_0_60, out_lines_63_0_59, 
                          out_lines_63_0_58, out_lines_63_0_57, 
                          out_lines_63_0_56, out_lines_63_0_55, 
                          out_lines_63_0_54, out_lines_63_0_53, 
                          out_lines_63_0_52, out_lines_63_0_51, 
                          out_lines_63_0_50, out_lines_63_0_49, 
                          out_lines_63_0_48, out_lines_63_0_47, 
                          out_lines_63_0_46, out_lines_63_0_45, 
                          out_lines_63_0_44, out_lines_63_0_43, 
                          out_lines_63_0_42, out_lines_63_0_41, 
                          out_lines_63_0_40, out_lines_63_0_39, 
                          out_lines_63_0_38, out_lines_63_0_37, 
                          out_lines_63_0_36, out_lines_63_0_35, 
                          out_lines_63_0_34, out_lines_63_0_33, 
                          out_lines_63_0_32, out_lines_63_0_31, 
                          out_lines_63_0_30, out_lines_63_0_29, 
                          out_lines_63_0_28, out_lines_63_0_27, 
                          out_lines_63_0_26, out_lines_63_0_25, 
                          out_lines_63_0_24, out_lines_63_0_23, 
                          out_lines_63_0_22, out_lines_63_0_21, 
                          out_lines_63_0_20, out_lines_63_0_19, 
                          out_lines_63_0_18, out_lines_63_0_17, 
                          out_lines_63_0_16, out_lines_63_0_15, 
                          out_lines_63_0_14, out_lines_63_0_13, 
                          out_lines_63_0_12, out_lines_63_0_11, 
                          out_lines_63_0_10, out_lines_63_0_9, 
                          out_lines_63_0_8, out_lines_63_0_7, out_lines_63_0_6, 
                          out_lines_63_0_5, out_lines_63_0_4, out_lines_63_0_3, 
                          out_lines_63_0_2, out_lines_63_0_1, out_lines_63_0_0, 
                          vss, vdd)
{
   {REGX_7} ramword (clk, in_lines_63_0_63, in_lines_63_0_62, in_lines_63_0_61, 
                     in_lines_63_0_60, in_lines_63_0_59, in_lines_63_0_58, 
                     in_lines_63_0_57, in_lines_63_0_56, out_lines_63_0_63, 
                     out_lines_63_0_62, out_lines_63_0_61, out_lines_63_0_60, 
                     out_lines_63_0_59, out_lines_63_0_58, out_lines_63_0_57, 
                     out_lines_63_0_56, write_7_0_7, vss, vdd);
   {REGX_6} ramword (clk, in_lines_63_0_55, in_lines_63_0_54, in_lines_63_0_53, 
                     in_lines_63_0_52, in_lines_63_0_51, in_lines_63_0_50, 
                     in_lines_63_0_49, in_lines_63_0_48, out_lines_63_0_55, 
                     out_lines_63_0_54, out_lines_63_0_53, out_lines_63_0_52, 
                     out_lines_63_0_51, out_lines_63_0_50, out_lines_63_0_49, 
                     out_lines_63_0_48, write_7_0_6, vss, vdd);
   {REGX_5} ramword (clk, in_lines_63_0_47, in_lines_63_0_46, in_lines_63_0_45, 
                     in_lines_63_0_44, in_lines_63_0_43, in_lines_63_0_42, 
                     in_lines_63_0_41, in_lines_63_0_40, out_lines_63_0_47, 
                     out_lines_63_0_46, out_lines_63_0_45, out_lines_63_0_44, 
                     out_lines_63_0_43, out_lines_63_0_42, out_lines_63_0_41, 
                     out_lines_63_0_40, write_7_0_5, vss, vdd);
   {REGX_4} ramword (clk, in_lines_63_0_39, in_lines_63_0_38, in_lines_63_0_37, 
                     in_lines_63_0_36, in_lines_63_0_35, in_lines_63_0_34, 
                     in_lines_63_0_33, in_lines_63_0_32, out_lines_63_0_39, 
                     out_lines_63_0_38, out_lines_63_0_37, out_lines_63_0_36, 
                     out_lines_63_0_35, out_lines_63_0_34, out_lines_63_0_33, 
                     out_lines_63_0_32, write_7_0_4, vss, vdd);
   {REGX_3} ramword (clk, in_lines_63_0_31, in_lines_63_0_30, in_lines_63_0_29, 
                     in_lines_63_0_28, in_lines_63_0_27, in_lines_63_0_26, 
                     in_lines_63_0_25, in_lines_63_0_24, out_lines_63_0_31, 
                     out_lines_63_0_30, out_lines_63_0_29, out_lines_63_0_28, 
                     out_lines_63_0_27, out_lines_63_0_26, out_lines_63_0_25, 
                     out_lines_63_0_24, write_7_0_3, vss, vdd);
   {REGX_2} ramword (clk, in_lines_63_0_23, in_lines_63_0_22, in_lines_63_0_21, 
                     in_lines_63_0_20, in_lines_63_0_19, in_lines_63_0_18, 
                     in_lines_63_0_17, in_lines_63_0_16, out_lines_63_0_23, 
                     out_lines_63_0_22, out_lines_63_0_21, out_lines_63_0_20, 
                     out_lines_63_0_19, out_lines_63_0_18, out_lines_63_0_17, 
                     out_lines_63_0_16, write_7_0_2, vss, vdd);
   {REGX_1} ramword (clk, in_lines_63_0_15, in_lines_63_0_14, in_lines_63_0_13, 
                     in_lines_63_0_12, in_lines_63_0_11, in_lines_63_0_10, 
                     in_lines_63_0_9, in_lines_63_0_8, out_lines_63_0_15, 
                     out_lines_63_0_14, out_lines_63_0_13, out_lines_63_0_12, 
                     out_lines_63_0_11, out_lines_63_0_10, out_lines_63_0_9, 
                     out_lines_63_0_8, write_7_0_1, vss, vdd);
   {REGX_0} ramword (clk, in_lines_63_0_7, in_lines_63_0_6, in_lines_63_0_5, 
                     in_lines_63_0_4, in_lines_63_0_3, in_lines_63_0_2, 
                     in_lines_63_0_1, in_lines_63_0_0, out_lines_63_0_7, 
                     out_lines_63_0_6, out_lines_63_0_5, out_lines_63_0_4, 
                     out_lines_63_0_3, out_lines_63_0_2, out_lines_63_0_1, 
                     out_lines_63_0_0, write_7_0_0, vss, vdd);
}



