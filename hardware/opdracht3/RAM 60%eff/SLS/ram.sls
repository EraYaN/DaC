extern network rambank (terminal clk, write_7_0_7, write_7_0_6, write_7_0_5, 
                                 write_7_0_4, write_7_0_3, write_7_0_2, 
                                 write_7_0_1, write_7_0_0, in_lines_63_0_63, 
                                 in_lines_63_0_62, in_lines_63_0_61, 
                                 in_lines_63_0_60, in_lines_63_0_59, 
                                 in_lines_63_0_58, in_lines_63_0_57, 
                                 in_lines_63_0_56, in_lines_63_0_55, 
                                 in_lines_63_0_54, in_lines_63_0_53, 
                                 in_lines_63_0_52, in_lines_63_0_51, 
                                 in_lines_63_0_50, in_lines_63_0_49, 
                                 in_lines_63_0_48, in_lines_63_0_47, 
                                 in_lines_63_0_46, in_lines_63_0_45, 
                                 in_lines_63_0_44, in_lines_63_0_43, 
                                 in_lines_63_0_42, in_lines_63_0_41, 
                                 in_lines_63_0_40, in_lines_63_0_39, 
                                 in_lines_63_0_38, in_lines_63_0_37, 
                                 in_lines_63_0_36, in_lines_63_0_35, 
                                 in_lines_63_0_34, in_lines_63_0_33, 
                                 in_lines_63_0_32, in_lines_63_0_31, 
                                 in_lines_63_0_30, in_lines_63_0_29, 
                                 in_lines_63_0_28, in_lines_63_0_27, 
                                 in_lines_63_0_26, in_lines_63_0_25, 
                                 in_lines_63_0_24, in_lines_63_0_23, 
                                 in_lines_63_0_22, in_lines_63_0_21, 
                                 in_lines_63_0_20, in_lines_63_0_19, 
                                 in_lines_63_0_18, in_lines_63_0_17, 
                                 in_lines_63_0_16, in_lines_63_0_15, 
                                 in_lines_63_0_14, in_lines_63_0_13, 
                                 in_lines_63_0_12, in_lines_63_0_11, 
                                 in_lines_63_0_10, in_lines_63_0_9, 
                                 in_lines_63_0_8, in_lines_63_0_7, 
                                 in_lines_63_0_6, in_lines_63_0_5, 
                                 in_lines_63_0_4, in_lines_63_0_3, 
                                 in_lines_63_0_2, in_lines_63_0_1, 
                                 in_lines_63_0_0, out_lines_63_0_63, 
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
                                 out_lines_63_0_8, out_lines_63_0_7, 
                                 out_lines_63_0_6, out_lines_63_0_5, 
                                 out_lines_63_0_4, out_lines_63_0_3, 
                                 out_lines_63_0_2, out_lines_63_0_1, 
                                 out_lines_63_0_0, vss, vdd)
extern network rammux (terminal clk, d_out_muxed_7_0_7, d_out_muxed_7_0_6, 
                                d_out_muxed_7_0_5, d_out_muxed_7_0_4, 
                                d_out_muxed_7_0_3, d_out_muxed_7_0_2, 
                                d_out_muxed_7_0_1, d_out_muxed_7_0_0, 
                                d_out_63_0_63, d_out_63_0_62, d_out_63_0_61, 
                                d_out_63_0_60, d_out_63_0_59, d_out_63_0_58, 
                                d_out_63_0_57, d_out_63_0_56, d_out_63_0_55, 
                                d_out_63_0_54, d_out_63_0_53, d_out_63_0_52, 
                                d_out_63_0_51, d_out_63_0_50, d_out_63_0_49, 
                                d_out_63_0_48, d_out_63_0_47, d_out_63_0_46, 
                                d_out_63_0_45, d_out_63_0_44, d_out_63_0_43, 
                                d_out_63_0_42, d_out_63_0_41, d_out_63_0_40, 
                                d_out_63_0_39, d_out_63_0_38, d_out_63_0_37, 
                                d_out_63_0_36, d_out_63_0_35, d_out_63_0_34, 
                                d_out_63_0_33, d_out_63_0_32, d_out_63_0_31, 
                                d_out_63_0_30, d_out_63_0_29, d_out_63_0_28, 
                                d_out_63_0_27, d_out_63_0_26, d_out_63_0_25, 
                                d_out_63_0_24, d_out_63_0_23, d_out_63_0_22, 
                                d_out_63_0_21, d_out_63_0_20, d_out_63_0_19, 
                                d_out_63_0_18, d_out_63_0_17, d_out_63_0_16, 
                                d_out_63_0_15, d_out_63_0_14, d_out_63_0_13, 
                                d_out_63_0_12, d_out_63_0_11, d_out_63_0_10, 
                                d_out_63_0_9, d_out_63_0_8, d_out_63_0_7, 
                                d_out_63_0_6, d_out_63_0_5, d_out_63_0_4, 
                                d_out_63_0_3, d_out_63_0_2, d_out_63_0_1, 
                                d_out_63_0_0, d_in_muxed_7_0_7, 
                                d_in_muxed_7_0_6, d_in_muxed_7_0_5, 
                                d_in_muxed_7_0_4, d_in_muxed_7_0_3, 
                                d_in_muxed_7_0_2, d_in_muxed_7_0_1, 
                                d_in_muxed_7_0_0, d_in_63_0_63, d_in_63_0_62, 
                                d_in_63_0_61, d_in_63_0_60, d_in_63_0_59, 
                                d_in_63_0_58, d_in_63_0_57, d_in_63_0_56, 
                                d_in_63_0_55, d_in_63_0_54, d_in_63_0_53, 
                                d_in_63_0_52, d_in_63_0_51, d_in_63_0_50, 
                                d_in_63_0_49, d_in_63_0_48, d_in_63_0_47, 
                                d_in_63_0_46, d_in_63_0_45, d_in_63_0_44, 
                                d_in_63_0_43, d_in_63_0_42, d_in_63_0_41, 
                                d_in_63_0_40, d_in_63_0_39, d_in_63_0_38, 
                                d_in_63_0_37, d_in_63_0_36, d_in_63_0_35, 
                                d_in_63_0_34, d_in_63_0_33, d_in_63_0_32, 
                                d_in_63_0_31, d_in_63_0_30, d_in_63_0_29, 
                                d_in_63_0_28, d_in_63_0_27, d_in_63_0_26, 
                                d_in_63_0_25, d_in_63_0_24, d_in_63_0_23, 
                                d_in_63_0_22, d_in_63_0_21, d_in_63_0_20, 
                                d_in_63_0_19, d_in_63_0_18, d_in_63_0_17, 
                                d_in_63_0_16, d_in_63_0_15, d_in_63_0_14, 
                                d_in_63_0_13, d_in_63_0_12, d_in_63_0_11, 
                                d_in_63_0_10, d_in_63_0_9, d_in_63_0_8, 
                                d_in_63_0_7, d_in_63_0_6, d_in_63_0_5, 
                                d_in_63_0_4, d_in_63_0_3, d_in_63_0_2, 
                                d_in_63_0_1, d_in_63_0_0, sel_2_0_2, sel_2_0_1, 
                                sel_2_0_0, write, write_out_7_0_7, 
                                write_out_7_0_6, write_out_7_0_5, 
                                write_out_7_0_4, write_out_7_0_3, 
                                write_out_7_0_2, write_out_7_0_1, 
                                write_out_7_0_0, vss, vdd)
network ram (terminal clk, a_2_0_2, a_2_0_1, a_2_0_0, d_in_7_0_7, d_in_7_0_6, 
                      d_in_7_0_5, d_in_7_0_4, d_in_7_0_3, d_in_7_0_2, 
                      d_in_7_0_1, d_in_7_0_0, write, d_out_7_0_7, d_out_7_0_6, 
                      d_out_7_0_5, d_out_7_0_4, d_out_7_0_3, d_out_7_0_2, 
                      d_out_7_0_1, d_out_7_0_0, vss, vdd)
{
   {rb} rambank (clk, write_out_7_port, write_out_6_port, write_out_5_port, 
                 write_out_4_port, write_out_3_port, write_out_2_port, 
                 write_out_1_port, write_out_0_port, in_lines_63_port, 
                 in_lines_62_port, in_lines_61_port, in_lines_60_port, 
                 in_lines_59_port, in_lines_58_port, in_lines_57_port, 
                 in_lines_56_port, in_lines_55_port, in_lines_54_port, 
                 in_lines_53_port, in_lines_52_port, in_lines_51_port, 
                 in_lines_50_port, in_lines_49_port, in_lines_48_port, 
                 in_lines_47_port, in_lines_46_port, in_lines_45_port, 
                 in_lines_44_port, in_lines_43_port, in_lines_42_port, 
                 in_lines_41_port, in_lines_40_port, in_lines_39_port, 
                 in_lines_38_port, in_lines_37_port, in_lines_36_port, 
                 in_lines_35_port, in_lines_34_port, in_lines_33_port, 
                 in_lines_32_port, in_lines_31_port, in_lines_30_port, 
                 in_lines_29_port, in_lines_28_port, in_lines_27_port, 
                 in_lines_26_port, in_lines_25_port, in_lines_24_port, 
                 in_lines_23_port, in_lines_22_port, in_lines_21_port, 
                 in_lines_20_port, in_lines_19_port, in_lines_18_port, 
                 in_lines_17_port, in_lines_16_port, in_lines_15_port, 
                 in_lines_14_port, in_lines_13_port, in_lines_12_port, 
                 in_lines_11_port, in_lines_10_port, in_lines_9_port, 
                 in_lines_8_port, in_lines_7_port, in_lines_6_port, 
                 in_lines_5_port, in_lines_4_port, in_lines_3_port, 
                 in_lines_2_port, in_lines_1_port, in_lines_0_port, 
                 out_lines_63_port, out_lines_62_port, out_lines_61_port, 
                 out_lines_60_port, out_lines_59_port, out_lines_58_port, 
                 out_lines_57_port, out_lines_56_port, out_lines_55_port, 
                 out_lines_54_port, out_lines_53_port, out_lines_52_port, 
                 out_lines_51_port, out_lines_50_port, out_lines_49_port, 
                 out_lines_48_port, out_lines_47_port, out_lines_46_port, 
                 out_lines_45_port, out_lines_44_port, out_lines_43_port, 
                 out_lines_42_port, out_lines_41_port, out_lines_40_port, 
                 out_lines_39_port, out_lines_38_port, out_lines_37_port, 
                 out_lines_36_port, out_lines_35_port, out_lines_34_port, 
                 out_lines_33_port, out_lines_32_port, out_lines_31_port, 
                 out_lines_30_port, out_lines_29_port, out_lines_28_port, 
                 out_lines_27_port, out_lines_26_port, out_lines_25_port, 
                 out_lines_24_port, out_lines_23_port, out_lines_22_port, 
                 out_lines_21_port, out_lines_20_port, out_lines_19_port, 
                 out_lines_18_port, out_lines_17_port, out_lines_16_port, 
                 out_lines_15_port, out_lines_14_port, out_lines_13_port, 
                 out_lines_12_port, out_lines_11_port, out_lines_10_port, 
                 out_lines_9_port, out_lines_8_port, out_lines_7_port, 
                 out_lines_6_port, out_lines_5_port, out_lines_4_port, 
                 out_lines_3_port, out_lines_2_port, out_lines_1_port, 
                 out_lines_0_port, vss, vdd);
   {rm} rammux (clk, d_out_7_0_7, d_out_7_0_6, d_out_7_0_5, d_out_7_0_4, 
                d_out_7_0_3, d_out_7_0_2, d_out_7_0_1, d_out_7_0_0, 
                out_lines_63_port, out_lines_62_port, out_lines_61_port, 
                out_lines_60_port, out_lines_59_port, out_lines_58_port, 
                out_lines_57_port, out_lines_56_port, out_lines_55_port, 
                out_lines_54_port, out_lines_53_port, out_lines_52_port, 
                out_lines_51_port, out_lines_50_port, out_lines_49_port, 
                out_lines_48_port, out_lines_47_port, out_lines_46_port, 
                out_lines_45_port, out_lines_44_port, out_lines_43_port, 
                out_lines_42_port, out_lines_41_port, out_lines_40_port, 
                out_lines_39_port, out_lines_38_port, out_lines_37_port, 
                out_lines_36_port, out_lines_35_port, out_lines_34_port, 
                out_lines_33_port, out_lines_32_port, out_lines_31_port, 
                out_lines_30_port, out_lines_29_port, out_lines_28_port, 
                out_lines_27_port, out_lines_26_port, out_lines_25_port, 
                out_lines_24_port, out_lines_23_port, out_lines_22_port, 
                out_lines_21_port, out_lines_20_port, out_lines_19_port, 
                out_lines_18_port, out_lines_17_port, out_lines_16_port, 
                out_lines_15_port, out_lines_14_port, out_lines_13_port, 
                out_lines_12_port, out_lines_11_port, out_lines_10_port, 
                out_lines_9_port, out_lines_8_port, out_lines_7_port, 
                out_lines_6_port, out_lines_5_port, out_lines_4_port, 
                out_lines_3_port, out_lines_2_port, out_lines_1_port, 
                out_lines_0_port, d_in_7_0_7, d_in_7_0_6, d_in_7_0_5, 
                d_in_7_0_4, d_in_7_0_3, d_in_7_0_2, d_in_7_0_1, d_in_7_0_0, 
                in_lines_63_port, in_lines_62_port, in_lines_61_port, 
                in_lines_60_port, in_lines_59_port, in_lines_58_port, 
                in_lines_57_port, in_lines_56_port, in_lines_55_port, 
                in_lines_54_port, in_lines_53_port, in_lines_52_port, 
                in_lines_51_port, in_lines_50_port, in_lines_49_port, 
                in_lines_48_port, in_lines_47_port, in_lines_46_port, 
                in_lines_45_port, in_lines_44_port, in_lines_43_port, 
                in_lines_42_port, in_lines_41_port, in_lines_40_port, 
                in_lines_39_port, in_lines_38_port, in_lines_37_port, 
                in_lines_36_port, in_lines_35_port, in_lines_34_port, 
                in_lines_33_port, in_lines_32_port, in_lines_31_port, 
                in_lines_30_port, in_lines_29_port, in_lines_28_port, 
                in_lines_27_port, in_lines_26_port, in_lines_25_port, 
                in_lines_24_port, in_lines_23_port, in_lines_22_port, 
                in_lines_21_port, in_lines_20_port, in_lines_19_port, 
                in_lines_18_port, in_lines_17_port, in_lines_16_port, 
                in_lines_15_port, in_lines_14_port, in_lines_13_port, 
                in_lines_12_port, in_lines_11_port, in_lines_10_port, 
                in_lines_9_port, in_lines_8_port, in_lines_7_port, 
                in_lines_6_port, in_lines_5_port, in_lines_4_port, 
                in_lines_3_port, in_lines_2_port, in_lines_1_port, 
                in_lines_0_port, a_2_0_2, a_2_0_1, a_2_0_0, write, 
                write_out_7_port, write_out_6_port, write_out_5_port, 
                write_out_4_port, write_out_3_port, write_out_2_port, 
                write_out_1_port, write_out_0_port, vss, vdd);
}



