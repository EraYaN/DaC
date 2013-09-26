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
extern network no310 (terminal A, B, C, Y, vss, vdd)
extern network na310 (terminal A, B, C, Y, vss, vdd)
extern network na210 (terminal A, B, Y, vss, vdd)
extern network iv110 (terminal A, Y, vss, vdd)
extern network no210 (terminal A, B, Y, vss, vdd)
extern network buf40 (terminal A, Y, vss, vdd)
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
   {rm_U228} no310 (a_2_0_1, a_2_0_2, a_2_0_0, rm_n35, vss, vdd);
   {rm_U227} iv110 (rm_n35, rm_n17, vss, vdd);
   {rm_U226} iv110 (d_in_7_0_0, rm_n139, vss, vdd);
   {rm_U225} no210 (rm_n17, rm_n139, in_lines_0_port, vss, vdd);
   {rm_U224} iv110 (a_2_0_0, rm_n146, vss, vdd);
   {rm_U223} no310 (a_2_0_1, a_2_0_2, rm_n146, rm_n34, vss, vdd);
   {rm_U222} iv110 (rm_n34, rm_n16, vss, vdd);
   {rm_U221} iv110 (d_in_7_0_2, rm_n145, vss, vdd);
   {rm_U220} no210 (rm_n16, rm_n145, in_lines_10_port, vss, vdd);
   {rm_U219} iv110 (d_in_7_0_3, rm_n144, vss, vdd);
   {rm_U218} no210 (rm_n16, rm_n144, in_lines_11_port, vss, vdd);
   {rm_U217} iv110 (d_in_7_0_4, rm_n143, vss, vdd);
   {rm_U216} no210 (rm_n16, rm_n143, in_lines_12_port, vss, vdd);
   {rm_U215} iv110 (d_in_7_0_5, rm_n142, vss, vdd);
   {rm_U214} no210 (rm_n16, rm_n142, in_lines_13_port, vss, vdd);
   {rm_U213} iv110 (d_in_7_0_6, rm_n141, vss, vdd);
   {rm_U212} no210 (rm_n16, rm_n141, in_lines_14_port, vss, vdd);
   {rm_U211} iv110 (d_in_7_0_7, rm_n140, vss, vdd);
   {rm_U210} no210 (rm_n16, rm_n140, in_lines_15_port, vss, vdd);
   {rm_U209} iv110 (a_2_0_1, rm_n147, vss, vdd);
   {rm_U208} no310 (a_2_0_0, a_2_0_2, rm_n147, rm_n39, vss, vdd);
   {rm_U207} iv110 (rm_n39, rm_n15, vss, vdd);
   {rm_U206} no210 (rm_n15, rm_n139, in_lines_16_port, vss, vdd);
   {rm_U205} iv110 (d_in_7_0_1, rm_n138, vss, vdd);
   {rm_U204} no210 (rm_n15, rm_n138, in_lines_17_port, vss, vdd);
   {rm_U203} no210 (rm_n15, rm_n145, in_lines_18_port, vss, vdd);
   {rm_U202} no210 (rm_n15, rm_n144, in_lines_19_port, vss, vdd);
   {rm_U201} no210 (rm_n17, rm_n138, in_lines_1_port, vss, vdd);
   {rm_U200} no210 (rm_n15, rm_n143, in_lines_20_port, vss, vdd);
   {rm_U199} no210 (rm_n15, rm_n142, in_lines_21_port, vss, vdd);
   {rm_U198} no210 (rm_n15, rm_n141, in_lines_22_port, vss, vdd);
   {rm_U197} no210 (rm_n15, rm_n140, in_lines_23_port, vss, vdd);
   {rm_U196} no310 (rm_n146, a_2_0_2, rm_n147, rm_n38, vss, vdd);
   {rm_U195} iv110 (rm_n38, rm_n14, vss, vdd);
   {rm_U194} no210 (rm_n14, rm_n139, in_lines_24_port, vss, vdd);
   {rm_U193} no210 (rm_n14, rm_n138, in_lines_25_port, vss, vdd);
   {rm_U192} no210 (rm_n14, rm_n145, in_lines_26_port, vss, vdd);
   {rm_U191} no210 (rm_n14, rm_n144, in_lines_27_port, vss, vdd);
   {rm_U190} no210 (rm_n14, rm_n143, in_lines_28_port, vss, vdd);
   {rm_U189} no210 (rm_n14, rm_n142, in_lines_29_port, vss, vdd);
   {rm_U188} no210 (rm_n17, rm_n145, in_lines_2_port, vss, vdd);
   {rm_U187} no210 (rm_n14, rm_n141, in_lines_30_port, vss, vdd);
   {rm_U186} no210 (rm_n14, rm_n140, in_lines_31_port, vss, vdd);
   {rm_U185} na310 (rm_n146, rm_n147, a_2_0_2, rm_n13, vss, vdd);
   {rm_U184} no210 (rm_n13, rm_n139, in_lines_32_port, vss, vdd);
   {rm_U183} no210 (rm_n13, rm_n138, in_lines_33_port, vss, vdd);
   {rm_U182} no210 (rm_n13, rm_n145, in_lines_34_port, vss, vdd);
   {rm_U181} no210 (rm_n13, rm_n144, in_lines_35_port, vss, vdd);
   {rm_U180} no210 (rm_n13, rm_n143, in_lines_36_port, vss, vdd);
   {rm_U179} no210 (rm_n13, rm_n142, in_lines_37_port, vss, vdd);
   {rm_U178} no210 (rm_n13, rm_n141, in_lines_38_port, vss, vdd);
   {rm_U177} no210 (rm_n13, rm_n140, in_lines_39_port, vss, vdd);
   {rm_U176} no210 (rm_n17, rm_n144, in_lines_3_port, vss, vdd);
   {rm_U175} na310 (a_2_0_0, rm_n147, a_2_0_2, rm_n12, vss, vdd);
   {rm_U174} no210 (rm_n12, rm_n139, in_lines_40_port, vss, vdd);
   {rm_U173} no210 (rm_n12, rm_n138, in_lines_41_port, vss, vdd);
   {rm_U172} no210 (rm_n12, rm_n145, in_lines_42_port, vss, vdd);
   {rm_U171} no210 (rm_n12, rm_n144, in_lines_43_port, vss, vdd);
   {rm_U170} no210 (rm_n12, rm_n143, in_lines_44_port, vss, vdd);
   {rm_U169} no210 (rm_n12, rm_n142, in_lines_45_port, vss, vdd);
   {rm_U168} no210 (rm_n12, rm_n141, in_lines_46_port, vss, vdd);
   {rm_U167} no210 (rm_n12, rm_n140, in_lines_47_port, vss, vdd);
   {rm_U166} na310 (a_2_0_1, rm_n146, a_2_0_2, rm_n11, vss, vdd);
   {rm_U165} no210 (rm_n11, rm_n139, in_lines_48_port, vss, vdd);
   {rm_U164} no210 (rm_n11, rm_n138, in_lines_49_port, vss, vdd);
   {rm_U163} no210 (rm_n17, rm_n143, in_lines_4_port, vss, vdd);
   {rm_U162} no210 (rm_n11, rm_n145, in_lines_50_port, vss, vdd);
   {rm_U161} no210 (rm_n11, rm_n144, in_lines_51_port, vss, vdd);
   {rm_U160} no210 (rm_n11, rm_n143, in_lines_52_port, vss, vdd);
   {rm_U159} no210 (rm_n11, rm_n142, in_lines_53_port, vss, vdd);
   {rm_U158} no210 (rm_n11, rm_n141, in_lines_54_port, vss, vdd);
   {rm_U157} no210 (rm_n11, rm_n140, in_lines_55_port, vss, vdd);
   {rm_U156} na310 (a_2_0_1, a_2_0_0, a_2_0_2, rm_n9, vss, vdd);
   {rm_U155} no210 (rm_n9, rm_n139, in_lines_56_port, vss, vdd);
   {rm_U154} no210 (rm_n9, rm_n138, in_lines_57_port, vss, vdd);
   {rm_U153} no210 (rm_n9, rm_n145, in_lines_58_port, vss, vdd);
   {rm_U152} no210 (rm_n9, rm_n144, in_lines_59_port, vss, vdd);
   {rm_U151} no210 (rm_n17, rm_n142, in_lines_5_port, vss, vdd);
   {rm_U150} no210 (rm_n9, rm_n143, in_lines_60_port, vss, vdd);
   {rm_U149} no210 (rm_n9, rm_n142, in_lines_61_port, vss, vdd);
   {rm_U148} no210 (rm_n9, rm_n141, in_lines_62_port, vss, vdd);
   {rm_U147} no210 (rm_n9, rm_n140, in_lines_63_port, vss, vdd);
   {rm_U146} no210 (rm_n17, rm_n141, in_lines_6_port, vss, vdd);
   {rm_U145} no210 (rm_n17, rm_n140, in_lines_7_port, vss, vdd);
   {rm_U144} no210 (rm_n16, rm_n139, in_lines_8_port, vss, vdd);
   {rm_U143} no210 (rm_n16, rm_n138, in_lines_9_port, vss, vdd);
   {rm_U142} na210 (out_lines_16_port, rm_n39, rm_n136, vss, vdd);
   {rm_U141} na210 (out_lines_24_port, rm_n38, rm_n137, vss, vdd);
   {rm_U140} na210 (rm_n136, rm_n137, rm_n132, vss, vdd);
   {rm_U139} na210 (out_lines_0_port, rm_n35, rm_n134, vss, vdd);
   {rm_U138} na210 (out_lines_8_port, rm_n34, rm_n135, vss, vdd);
   {rm_U137} na210 (rm_n134, rm_n135, rm_n133, vss, vdd);
   {rm_U136} no210 (rm_n132, rm_n133, rm_n124, vss, vdd);
   {rm_U135} iv110 (rm_n11, rm_n29, vss, vdd);
   {rm_U134} na210 (out_lines_48_port, rm_n29, rm_n130, vss, vdd);
   {rm_U133} iv110 (rm_n9, rm_n28, vss, vdd);
   {rm_U132} na210 (out_lines_56_port, rm_n28, rm_n131, vss, vdd);
   {rm_U131} na210 (rm_n130, rm_n131, rm_n126, vss, vdd);
   {rm_U130} iv110 (rm_n13, rm_n25, vss, vdd);
   {rm_U129} na210 (out_lines_32_port, rm_n25, rm_n128, vss, vdd);
   {rm_U128} iv110 (rm_n12, rm_n24, vss, vdd);
   {rm_U127} na210 (out_lines_40_port, rm_n24, rm_n129, vss, vdd);
   {rm_U126} na210 (rm_n128, rm_n129, rm_n127, vss, vdd);
   {rm_U125} no210 (rm_n126, rm_n127, rm_n125, vss, vdd);
   {rm_U124} na210 (rm_n124, rm_n125, d_out_7_0_0, vss, vdd);
   {rm_U123} na210 (out_lines_17_port, rm_n39, rm_n122, vss, vdd);
   {rm_U122} na210 (out_lines_25_port, rm_n38, rm_n123, vss, vdd);
   {rm_U121} na210 (rm_n122, rm_n123, rm_n118, vss, vdd);
   {rm_U120} na210 (out_lines_1_port, rm_n35, rm_n120, vss, vdd);
   {rm_U119} na210 (out_lines_9_port, rm_n34, rm_n121, vss, vdd);
   {rm_U118} na210 (rm_n120, rm_n121, rm_n119, vss, vdd);
   {rm_U117} no210 (rm_n118, rm_n119, rm_n110, vss, vdd);
   {rm_U116} na210 (out_lines_49_port, rm_n29, rm_n116, vss, vdd);
   {rm_U115} na210 (out_lines_57_port, rm_n28, rm_n117, vss, vdd);
   {rm_U114} na210 (rm_n116, rm_n117, rm_n112, vss, vdd);
   {rm_U113} na210 (out_lines_33_port, rm_n25, rm_n114, vss, vdd);
   {rm_U112} na210 (out_lines_41_port, rm_n24, rm_n115, vss, vdd);
   {rm_U111} na210 (rm_n114, rm_n115, rm_n113, vss, vdd);
   {rm_U110} no210 (rm_n112, rm_n113, rm_n111, vss, vdd);
   {rm_U109} na210 (rm_n110, rm_n111, d_out_7_0_1, vss, vdd);
   {rm_U108} na210 (out_lines_18_port, rm_n39, rm_n108, vss, vdd);
   {rm_U107} na210 (out_lines_26_port, rm_n38, rm_n109, vss, vdd);
   {rm_U106} na210 (rm_n108, rm_n109, rm_n104, vss, vdd);
   {rm_U105} na210 (out_lines_2_port, rm_n35, rm_n106, vss, vdd);
   {rm_U104} na210 (out_lines_10_port, rm_n34, rm_n107, vss, vdd);
   {rm_U103} na210 (rm_n106, rm_n107, rm_n105, vss, vdd);
   {rm_U102} no210 (rm_n104, rm_n105, rm_n96, vss, vdd);
   {rm_U101} na210 (out_lines_50_port, rm_n29, rm_n102, vss, vdd);
   {rm_U100} na210 (out_lines_58_port, rm_n28, rm_n103, vss, vdd);
   {rm_U99} na210 (rm_n102, rm_n103, rm_n98, vss, vdd);
   {rm_U98} na210 (out_lines_34_port, rm_n25, rm_n100, vss, vdd);
   {rm_U97} na210 (out_lines_42_port, rm_n24, rm_n101, vss, vdd);
   {rm_U96} na210 (rm_n100, rm_n101, rm_n99, vss, vdd);
   {rm_U95} no210 (rm_n98, rm_n99, rm_n97, vss, vdd);
   {rm_U94} na210 (rm_n96, rm_n97, d_out_7_0_2, vss, vdd);
   {rm_U93} na210 (out_lines_19_port, rm_n39, rm_n94, vss, vdd);
   {rm_U92} na210 (out_lines_27_port, rm_n38, rm_n95, vss, vdd);
   {rm_U91} na210 (rm_n94, rm_n95, rm_n90, vss, vdd);
   {rm_U90} na210 (out_lines_3_port, rm_n35, rm_n92, vss, vdd);
   {rm_U89} na210 (out_lines_11_port, rm_n34, rm_n93, vss, vdd);
   {rm_U88} na210 (rm_n92, rm_n93, rm_n91, vss, vdd);
   {rm_U87} no210 (rm_n90, rm_n91, rm_n82, vss, vdd);
   {rm_U86} na210 (out_lines_51_port, rm_n29, rm_n88, vss, vdd);
   {rm_U85} na210 (out_lines_59_port, rm_n28, rm_n89, vss, vdd);
   {rm_U84} na210 (rm_n88, rm_n89, rm_n84, vss, vdd);
   {rm_U83} na210 (out_lines_35_port, rm_n25, rm_n86, vss, vdd);
   {rm_U82} na210 (out_lines_43_port, rm_n24, rm_n87, vss, vdd);
   {rm_U81} na210 (rm_n86, rm_n87, rm_n85, vss, vdd);
   {rm_U80} no210 (rm_n84, rm_n85, rm_n83, vss, vdd);
   {rm_U79} na210 (rm_n82, rm_n83, d_out_7_0_3, vss, vdd);
   {rm_U78} na210 (out_lines_20_port, rm_n39, rm_n80, vss, vdd);
   {rm_U77} na210 (out_lines_28_port, rm_n38, rm_n81, vss, vdd);
   {rm_U76} na210 (rm_n80, rm_n81, rm_n76, vss, vdd);
   {rm_U75} na210 (out_lines_4_port, rm_n35, rm_n78, vss, vdd);
   {rm_U74} na210 (out_lines_12_port, rm_n34, rm_n79, vss, vdd);
   {rm_U73} na210 (rm_n78, rm_n79, rm_n77, vss, vdd);
   {rm_U72} no210 (rm_n76, rm_n77, rm_n68, vss, vdd);
   {rm_U71} na210 (out_lines_52_port, rm_n29, rm_n74, vss, vdd);
   {rm_U70} na210 (out_lines_60_port, rm_n28, rm_n75, vss, vdd);
   {rm_U69} na210 (rm_n74, rm_n75, rm_n70, vss, vdd);
   {rm_U68} na210 (out_lines_36_port, rm_n25, rm_n72, vss, vdd);
   {rm_U67} na210 (out_lines_44_port, rm_n24, rm_n73, vss, vdd);
   {rm_U66} na210 (rm_n72, rm_n73, rm_n71, vss, vdd);
   {rm_U65} no210 (rm_n70, rm_n71, rm_n69, vss, vdd);
   {rm_U64} na210 (rm_n68, rm_n69, d_out_7_0_4, vss, vdd);
   {rm_U63} na210 (out_lines_21_port, rm_n39, rm_n66, vss, vdd);
   {rm_U62} na210 (out_lines_29_port, rm_n38, rm_n67, vss, vdd);
   {rm_U61} na210 (rm_n66, rm_n67, rm_n62, vss, vdd);
   {rm_U60} na210 (out_lines_5_port, rm_n35, rm_n64, vss, vdd);
   {rm_U59} na210 (out_lines_13_port, rm_n34, rm_n65, vss, vdd);
   {rm_U58} na210 (rm_n64, rm_n65, rm_n63, vss, vdd);
   {rm_U57} no210 (rm_n62, rm_n63, rm_n54, vss, vdd);
   {rm_U56} na210 (out_lines_53_port, rm_n29, rm_n60, vss, vdd);
   {rm_U55} na210 (out_lines_61_port, rm_n28, rm_n61, vss, vdd);
   {rm_U54} na210 (rm_n60, rm_n61, rm_n56, vss, vdd);
   {rm_U53} na210 (out_lines_37_port, rm_n25, rm_n58, vss, vdd);
   {rm_U52} na210 (out_lines_45_port, rm_n24, rm_n59, vss, vdd);
   {rm_U51} na210 (rm_n58, rm_n59, rm_n57, vss, vdd);
   {rm_U50} no210 (rm_n56, rm_n57, rm_n55, vss, vdd);
   {rm_U49} na210 (rm_n54, rm_n55, d_out_7_0_5, vss, vdd);
   {rm_U48} na210 (out_lines_22_port, rm_n39, rm_n52, vss, vdd);
   {rm_U47} na210 (out_lines_30_port, rm_n38, rm_n53, vss, vdd);
   {rm_U46} na210 (rm_n52, rm_n53, rm_n48, vss, vdd);
   {rm_U45} na210 (out_lines_6_port, rm_n35, rm_n50, vss, vdd);
   {rm_U44} na210 (out_lines_14_port, rm_n34, rm_n51, vss, vdd);
   {rm_U43} na210 (rm_n50, rm_n51, rm_n49, vss, vdd);
   {rm_U42} no210 (rm_n48, rm_n49, rm_n40, vss, vdd);
   {rm_U41} na210 (out_lines_54_port, rm_n29, rm_n46, vss, vdd);
   {rm_U40} na210 (out_lines_62_port, rm_n28, rm_n47, vss, vdd);
   {rm_U39} na210 (rm_n46, rm_n47, rm_n42, vss, vdd);
   {rm_U38} na210 (out_lines_38_port, rm_n25, rm_n44, vss, vdd);
   {rm_U37} na210 (out_lines_46_port, rm_n24, rm_n45, vss, vdd);
   {rm_U36} na210 (rm_n44, rm_n45, rm_n43, vss, vdd);
   {rm_U35} no210 (rm_n42, rm_n43, rm_n41, vss, vdd);
   {rm_U34} na210 (rm_n40, rm_n41, d_out_7_0_6, vss, vdd);
   {rm_U33} na210 (out_lines_23_port, rm_n39, rm_n36, vss, vdd);
   {rm_U32} na210 (out_lines_31_port, rm_n38, rm_n37, vss, vdd);
   {rm_U31} na210 (rm_n36, rm_n37, rm_n30, vss, vdd);
   {rm_U30} na210 (out_lines_7_port, rm_n35, rm_n32, vss, vdd);
   {rm_U29} na210 (out_lines_15_port, rm_n34, rm_n33, vss, vdd);
   {rm_U28} na210 (rm_n32, rm_n33, rm_n31, vss, vdd);
   {rm_U27} no210 (rm_n30, rm_n31, rm_n18, vss, vdd);
   {rm_U26} na210 (out_lines_55_port, rm_n29, rm_n26, vss, vdd);
   {rm_U25} na210 (out_lines_63_port, rm_n28, rm_n27, vss, vdd);
   {rm_U24} na210 (rm_n26, rm_n27, rm_n20, vss, vdd);
   {rm_U23} na210 (out_lines_39_port, rm_n25, rm_n22, vss, vdd);
   {rm_U22} na210 (out_lines_47_port, rm_n24, rm_n23, vss, vdd);
   {rm_U21} na210 (rm_n22, rm_n23, rm_n21, vss, vdd);
   {rm_U20} no210 (rm_n20, rm_n21, rm_n19, vss, vdd);
   {rm_U19} na210 (rm_n18, rm_n19, d_out_7_0_7, vss, vdd);
   {rm_U18} iv110 (write, rm_n10, vss, vdd);
   {rm_U17} no210 (rm_n10, rm_n17, rm_n155, vss, vdd);
   {rm_U16} no210 (rm_n10, rm_n16, rm_n154, vss, vdd);
   {rm_U15} no210 (rm_n10, rm_n15, rm_n153, vss, vdd);
   {rm_U14} no210 (rm_n10, rm_n14, rm_n152, vss, vdd);
   {rm_U13} no210 (rm_n10, rm_n13, rm_n151, vss, vdd);
   {rm_U12} no210 (rm_n10, rm_n12, rm_n150, vss, vdd);
   {rm_U11} no210 (rm_n10, rm_n11, rm_n149, vss, vdd);
   {rm_U10} no210 (rm_n9, rm_n10, rm_n148, vss, vdd);
   {rm_U9} buf40 (rm_n155, write_out_0_port, vss, vdd);
   {rm_U8} buf40 (rm_n154, write_out_1_port, vss, vdd);
   {rm_U7} buf40 (rm_n153, write_out_2_port, vss, vdd);
   {rm_U6} buf40 (rm_n152, write_out_3_port, vss, vdd);
   {rm_U5} buf40 (rm_n151, write_out_4_port, vss, vdd);
   {rm_U4} buf40 (rm_n150, write_out_5_port, vss, vdd);
   {rm_U3} buf40 (rm_n149, write_out_6_port, vss, vdd);
   {rm_U2} buf40 (rm_n148, write_out_7_port, vss, vdd);
}



