extern network na210 (terminal A, B, Y, vss, vdd)
extern network na310 (terminal A, B, C, Y, vss, vdd)
extern network no210 (terminal A, B, Y, vss, vdd)
extern network iv110 (terminal A, Y, vss, vdd)
extern network no310 (terminal A, B, C, Y, vss, vdd)
network rammux (terminal clk, d_out_muxed_7_0_7, d_out_muxed_7_0_6, 
                         d_out_muxed_7_0_5, d_out_muxed_7_0_4, 
                         d_out_muxed_7_0_3, d_out_muxed_7_0_2, 
                         d_out_muxed_7_0_1, d_out_muxed_7_0_0, d_out_63_0_63, 
                         d_out_63_0_62, d_out_63_0_61, d_out_63_0_60, 
                         d_out_63_0_59, d_out_63_0_58, d_out_63_0_57, 
                         d_out_63_0_56, d_out_63_0_55, d_out_63_0_54, 
                         d_out_63_0_53, d_out_63_0_52, d_out_63_0_51, 
                         d_out_63_0_50, d_out_63_0_49, d_out_63_0_48, 
                         d_out_63_0_47, d_out_63_0_46, d_out_63_0_45, 
                         d_out_63_0_44, d_out_63_0_43, d_out_63_0_42, 
                         d_out_63_0_41, d_out_63_0_40, d_out_63_0_39, 
                         d_out_63_0_38, d_out_63_0_37, d_out_63_0_36, 
                         d_out_63_0_35, d_out_63_0_34, d_out_63_0_33, 
                         d_out_63_0_32, d_out_63_0_31, d_out_63_0_30, 
                         d_out_63_0_29, d_out_63_0_28, d_out_63_0_27, 
                         d_out_63_0_26, d_out_63_0_25, d_out_63_0_24, 
                         d_out_63_0_23, d_out_63_0_22, d_out_63_0_21, 
                         d_out_63_0_20, d_out_63_0_19, d_out_63_0_18, 
                         d_out_63_0_17, d_out_63_0_16, d_out_63_0_15, 
                         d_out_63_0_14, d_out_63_0_13, d_out_63_0_12, 
                         d_out_63_0_11, d_out_63_0_10, d_out_63_0_9, 
                         d_out_63_0_8, d_out_63_0_7, d_out_63_0_6, 
                         d_out_63_0_5, d_out_63_0_4, d_out_63_0_3, 
                         d_out_63_0_2, d_out_63_0_1, d_out_63_0_0, 
                         d_in_muxed_7_0_7, d_in_muxed_7_0_6, d_in_muxed_7_0_5, 
                         d_in_muxed_7_0_4, d_in_muxed_7_0_3, d_in_muxed_7_0_2, 
                         d_in_muxed_7_0_1, d_in_muxed_7_0_0, d_in_63_0_63, 
                         d_in_63_0_62, d_in_63_0_61, d_in_63_0_60, 
                         d_in_63_0_59, d_in_63_0_58, d_in_63_0_57, 
                         d_in_63_0_56, d_in_63_0_55, d_in_63_0_54, 
                         d_in_63_0_53, d_in_63_0_52, d_in_63_0_51, 
                         d_in_63_0_50, d_in_63_0_49, d_in_63_0_48, 
                         d_in_63_0_47, d_in_63_0_46, d_in_63_0_45, 
                         d_in_63_0_44, d_in_63_0_43, d_in_63_0_42, 
                         d_in_63_0_41, d_in_63_0_40, d_in_63_0_39, 
                         d_in_63_0_38, d_in_63_0_37, d_in_63_0_36, 
                         d_in_63_0_35, d_in_63_0_34, d_in_63_0_33, 
                         d_in_63_0_32, d_in_63_0_31, d_in_63_0_30, 
                         d_in_63_0_29, d_in_63_0_28, d_in_63_0_27, 
                         d_in_63_0_26, d_in_63_0_25, d_in_63_0_24, 
                         d_in_63_0_23, d_in_63_0_22, d_in_63_0_21, 
                         d_in_63_0_20, d_in_63_0_19, d_in_63_0_18, 
                         d_in_63_0_17, d_in_63_0_16, d_in_63_0_15, 
                         d_in_63_0_14, d_in_63_0_13, d_in_63_0_12, 
                         d_in_63_0_11, d_in_63_0_10, d_in_63_0_9, d_in_63_0_8, 
                         d_in_63_0_7, d_in_63_0_6, d_in_63_0_5, d_in_63_0_4, 
                         d_in_63_0_3, d_in_63_0_2, d_in_63_0_1, d_in_63_0_0, 
                         sel_2_0_2, sel_2_0_1, sel_2_0_0, write, 
                         write_out_7_0_7, write_out_7_0_6, write_out_7_0_5, 
                         write_out_7_0_4, write_out_7_0_3, write_out_7_0_2, 
                         write_out_7_0_1, write_out_7_0_0, vss, vdd)
{
   {U221} no210 (n140, n141, write_out_7_0_7, vss, vdd);
   {U222} no210 (n141, n142, write_out_7_0_6, vss, vdd);
   {U223} no210 (n141, n143, write_out_7_0_5, vss, vdd);
   {U224} no210 (n141, n144, write_out_7_0_4, vss, vdd);
   {U225} no210 (n141, n145, write_out_7_0_3, vss, vdd);
   {U226} no210 (n141, n146, write_out_7_0_2, vss, vdd);
   {U227} no210 (n141, n147, write_out_7_0_1, vss, vdd);
   {U228} no210 (n141, n148, write_out_7_0_0, vss, vdd);
   {U229} iv110 (write, n141, vss, vdd);
   {U230} na210 (n149, n150, d_out_muxed_7_0_7, vss, vdd);
   {U231} no210 (n151, n152, n150, vss, vdd);
   {U232} na210 (n153, n154, n152, vss, vdd);
   {U233} na210 (d_out_63_0_47, n155, n154, vss, vdd);
   {U234} na210 (d_out_63_0_39, n156, n153, vss, vdd);
   {U235} na210 (n157, n158, n151, vss, vdd);
   {U236} na210 (d_out_63_0_63, n159, n158, vss, vdd);
   {U237} na210 (d_out_63_0_55, n160, n157, vss, vdd);
   {U238} no210 (n161, n162, n149, vss, vdd);
   {U239} na210 (n163, n164, n162, vss, vdd);
   {U240} na210 (d_out_63_0_15, n165, n164, vss, vdd);
   {U241} na210 (d_out_63_0_7, n166, n163, vss, vdd);
   {U242} na210 (n167, n168, n161, vss, vdd);
   {U243} na210 (d_out_63_0_31, n169, n168, vss, vdd);
   {U244} na210 (d_out_63_0_23, n170, n167, vss, vdd);
   {U245} na210 (n171, n172, d_out_muxed_7_0_6, vss, vdd);
   {U246} no210 (n173, n174, n172, vss, vdd);
   {U247} na210 (n175, n176, n174, vss, vdd);
   {U248} na210 (d_out_63_0_46, n155, n176, vss, vdd);
   {U249} na210 (d_out_63_0_38, n156, n175, vss, vdd);
   {U250} na210 (n177, n178, n173, vss, vdd);
   {U251} na210 (d_out_63_0_62, n159, n178, vss, vdd);
   {U252} na210 (d_out_63_0_54, n160, n177, vss, vdd);
   {U253} no210 (n179, n180, n171, vss, vdd);
   {U254} na210 (n181, n182, n180, vss, vdd);
   {U255} na210 (d_out_63_0_14, n165, n182, vss, vdd);
   {U256} na210 (d_out_63_0_6, n166, n181, vss, vdd);
   {U257} na210 (n183, n184, n179, vss, vdd);
   {U258} na210 (d_out_63_0_30, n169, n184, vss, vdd);
   {U259} na210 (d_out_63_0_22, n170, n183, vss, vdd);
   {U260} na210 (n185, n186, d_out_muxed_7_0_5, vss, vdd);
   {U261} no210 (n187, n188, n186, vss, vdd);
   {U262} na210 (n189, n190, n188, vss, vdd);
   {U263} na210 (d_out_63_0_45, n155, n190, vss, vdd);
   {U264} na210 (d_out_63_0_37, n156, n189, vss, vdd);
   {U265} na210 (n191, n192, n187, vss, vdd);
   {U266} na210 (d_out_63_0_61, n159, n192, vss, vdd);
   {U267} na210 (d_out_63_0_53, n160, n191, vss, vdd);
   {U268} no210 (n193, n194, n185, vss, vdd);
   {U269} na210 (n195, n196, n194, vss, vdd);
   {U270} na210 (d_out_63_0_13, n165, n196, vss, vdd);
   {U271} na210 (d_out_63_0_5, n166, n195, vss, vdd);
   {U272} na210 (n197, n198, n193, vss, vdd);
   {U273} na210 (d_out_63_0_29, n169, n198, vss, vdd);
   {U274} na210 (d_out_63_0_21, n170, n197, vss, vdd);
   {U275} na210 (n199, n200, d_out_muxed_7_0_4, vss, vdd);
   {U276} no210 (n201, n202, n200, vss, vdd);
   {U277} na210 (n203, n204, n202, vss, vdd);
   {U278} na210 (d_out_63_0_44, n155, n204, vss, vdd);
   {U279} na210 (d_out_63_0_36, n156, n203, vss, vdd);
   {U280} na210 (n205, n206, n201, vss, vdd);
   {U281} na210 (d_out_63_0_60, n159, n206, vss, vdd);
   {U282} na210 (d_out_63_0_52, n160, n205, vss, vdd);
   {U283} no210 (n207, n208, n199, vss, vdd);
   {U284} na210 (n209, n210, n208, vss, vdd);
   {U285} na210 (d_out_63_0_12, n165, n210, vss, vdd);
   {U286} na210 (d_out_63_0_4, n166, n209, vss, vdd);
   {U287} na210 (n211, n212, n207, vss, vdd);
   {U288} na210 (d_out_63_0_28, n169, n212, vss, vdd);
   {U289} na210 (d_out_63_0_20, n170, n211, vss, vdd);
   {U290} na210 (n213, n214, d_out_muxed_7_0_3, vss, vdd);
   {U291} no210 (n215, n216, n214, vss, vdd);
   {U292} na210 (n217, n218, n216, vss, vdd);
   {U293} na210 (d_out_63_0_43, n155, n218, vss, vdd);
   {U294} na210 (d_out_63_0_35, n156, n217, vss, vdd);
   {U295} na210 (n219, n220, n215, vss, vdd);
   {U296} na210 (d_out_63_0_59, n159, n220, vss, vdd);
   {U297} na210 (d_out_63_0_51, n160, n219, vss, vdd);
   {U298} no210 (n221, n222, n213, vss, vdd);
   {U299} na210 (n223, n224, n222, vss, vdd);
   {U300} na210 (d_out_63_0_11, n165, n224, vss, vdd);
   {U301} na210 (d_out_63_0_3, n166, n223, vss, vdd);
   {U302} na210 (n225, n226, n221, vss, vdd);
   {U303} na210 (d_out_63_0_27, n169, n226, vss, vdd);
   {U304} na210 (d_out_63_0_19, n170, n225, vss, vdd);
   {U305} na210 (n227, n228, d_out_muxed_7_0_2, vss, vdd);
   {U306} no210 (n229, n230, n228, vss, vdd);
   {U307} na210 (n231, n232, n230, vss, vdd);
   {U308} na210 (d_out_63_0_42, n155, n232, vss, vdd);
   {U309} na210 (d_out_63_0_34, n156, n231, vss, vdd);
   {U310} na210 (n233, n234, n229, vss, vdd);
   {U311} na210 (d_out_63_0_58, n159, n234, vss, vdd);
   {U312} na210 (d_out_63_0_50, n160, n233, vss, vdd);
   {U313} no210 (n235, n236, n227, vss, vdd);
   {U314} na210 (n237, n238, n236, vss, vdd);
   {U315} na210 (d_out_63_0_10, n165, n238, vss, vdd);
   {U316} na210 (d_out_63_0_2, n166, n237, vss, vdd);
   {U317} na210 (n239, n240, n235, vss, vdd);
   {U318} na210 (d_out_63_0_26, n169, n240, vss, vdd);
   {U319} na210 (d_out_63_0_18, n170, n239, vss, vdd);
   {U320} na210 (n241, n242, d_out_muxed_7_0_1, vss, vdd);
   {U321} no210 (n243, n244, n242, vss, vdd);
   {U322} na210 (n245, n246, n244, vss, vdd);
   {U323} na210 (d_out_63_0_41, n155, n246, vss, vdd);
   {U324} na210 (d_out_63_0_33, n156, n245, vss, vdd);
   {U325} na210 (n247, n248, n243, vss, vdd);
   {U326} na210 (d_out_63_0_57, n159, n248, vss, vdd);
   {U327} na210 (d_out_63_0_49, n160, n247, vss, vdd);
   {U328} no210 (n249, n250, n241, vss, vdd);
   {U329} na210 (n251, n252, n250, vss, vdd);
   {U330} na210 (d_out_63_0_9, n165, n252, vss, vdd);
   {U331} na210 (d_out_63_0_1, n166, n251, vss, vdd);
   {U332} na210 (n253, n254, n249, vss, vdd);
   {U333} na210 (d_out_63_0_25, n169, n254, vss, vdd);
   {U334} na210 (d_out_63_0_17, n170, n253, vss, vdd);
   {U335} na210 (n255, n256, d_out_muxed_7_0_0, vss, vdd);
   {U336} no210 (n257, n258, n256, vss, vdd);
   {U337} na210 (n259, n260, n258, vss, vdd);
   {U338} na210 (d_out_63_0_40, n155, n260, vss, vdd);
   {U339} iv110 (n143, n155, vss, vdd);
   {U340} na210 (d_out_63_0_32, n156, n259, vss, vdd);
   {U341} iv110 (n144, n156, vss, vdd);
   {U342} na210 (n261, n262, n257, vss, vdd);
   {U343} na210 (d_out_63_0_56, n159, n262, vss, vdd);
   {U344} iv110 (n140, n159, vss, vdd);
   {U345} na210 (d_out_63_0_48, n160, n261, vss, vdd);
   {U346} iv110 (n142, n160, vss, vdd);
   {U347} no210 (n263, n264, n255, vss, vdd);
   {U348} na210 (n265, n266, n264, vss, vdd);
   {U349} na210 (d_out_63_0_8, n165, n266, vss, vdd);
   {U350} na210 (d_out_63_0_0, n166, n265, vss, vdd);
   {U351} na210 (n267, n268, n263, vss, vdd);
   {U352} na210 (d_out_63_0_24, n169, n268, vss, vdd);
   {U353} na210 (d_out_63_0_16, n170, n267, vss, vdd);
   {U354} no210 (n147, n269, d_in_63_0_9, vss, vdd);
   {U355} no210 (n147, n270, d_in_63_0_8, vss, vdd);
   {U356} no210 (n148, n271, d_in_63_0_7, vss, vdd);
   {U357} no210 (n148, n272, d_in_63_0_6, vss, vdd);
   {U358} no210 (n140, n271, d_in_63_0_63, vss, vdd);
   {U359} no210 (n140, n272, d_in_63_0_62, vss, vdd);
   {U360} no210 (n140, n273, d_in_63_0_61, vss, vdd);
   {U361} no210 (n140, n274, d_in_63_0_60, vss, vdd);
   {U362} no210 (n148, n273, d_in_63_0_5, vss, vdd);
   {U363} no210 (n140, n275, d_in_63_0_59, vss, vdd);
   {U364} no210 (n140, n276, d_in_63_0_58, vss, vdd);
   {U365} no210 (n140, n269, d_in_63_0_57, vss, vdd);
   {U366} no210 (n140, n270, d_in_63_0_56, vss, vdd);
   {U367} na310 (sel_2_0_1, sel_2_0_0, sel_2_0_2, n140, vss, vdd);
   {U368} no210 (n142, n271, d_in_63_0_55, vss, vdd);
   {U369} no210 (n142, n272, d_in_63_0_54, vss, vdd);
   {U370} no210 (n142, n273, d_in_63_0_53, vss, vdd);
   {U371} no210 (n142, n274, d_in_63_0_52, vss, vdd);
   {U372} no210 (n142, n275, d_in_63_0_51, vss, vdd);
   {U373} no210 (n142, n276, d_in_63_0_50, vss, vdd);
   {U374} no210 (n148, n274, d_in_63_0_4, vss, vdd);
   {U375} no210 (n142, n269, d_in_63_0_49, vss, vdd);
   {U376} no210 (n142, n270, d_in_63_0_48, vss, vdd);
   {U377} na310 (sel_2_0_1, n277, sel_2_0_2, n142, vss, vdd);
   {U378} no210 (n143, n271, d_in_63_0_47, vss, vdd);
   {U379} no210 (n143, n272, d_in_63_0_46, vss, vdd);
   {U380} no210 (n143, n273, d_in_63_0_45, vss, vdd);
   {U381} no210 (n143, n274, d_in_63_0_44, vss, vdd);
   {U382} no210 (n143, n275, d_in_63_0_43, vss, vdd);
   {U383} no210 (n143, n276, d_in_63_0_42, vss, vdd);
   {U384} no210 (n143, n269, d_in_63_0_41, vss, vdd);
   {U385} no210 (n143, n270, d_in_63_0_40, vss, vdd);
   {U386} na310 (sel_2_0_0, n278, sel_2_0_2, n143, vss, vdd);
   {U387} no210 (n148, n275, d_in_63_0_3, vss, vdd);
   {U388} no210 (n144, n271, d_in_63_0_39, vss, vdd);
   {U389} no210 (n144, n272, d_in_63_0_38, vss, vdd);
   {U390} no210 (n144, n273, d_in_63_0_37, vss, vdd);
   {U391} no210 (n144, n274, d_in_63_0_36, vss, vdd);
   {U392} no210 (n144, n275, d_in_63_0_35, vss, vdd);
   {U393} no210 (n144, n276, d_in_63_0_34, vss, vdd);
   {U394} no210 (n144, n269, d_in_63_0_33, vss, vdd);
   {U395} no210 (n144, n270, d_in_63_0_32, vss, vdd);
   {U396} na310 (n277, n278, sel_2_0_2, n144, vss, vdd);
   {U397} no210 (n145, n271, d_in_63_0_31, vss, vdd);
   {U398} no210 (n145, n272, d_in_63_0_30, vss, vdd);
   {U399} no210 (n148, n276, d_in_63_0_2, vss, vdd);
   {U400} no210 (n145, n273, d_in_63_0_29, vss, vdd);
   {U401} no210 (n145, n274, d_in_63_0_28, vss, vdd);
   {U402} no210 (n145, n275, d_in_63_0_27, vss, vdd);
   {U403} no210 (n145, n276, d_in_63_0_26, vss, vdd);
   {U404} no210 (n145, n269, d_in_63_0_25, vss, vdd);
   {U405} no210 (n145, n270, d_in_63_0_24, vss, vdd);
   {U406} iv110 (n169, n145, vss, vdd);
   {U407} no310 (n277, sel_2_0_2, n278, n169, vss, vdd);
   {U408} no210 (n146, n271, d_in_63_0_23, vss, vdd);
   {U409} no210 (n146, n272, d_in_63_0_22, vss, vdd);
   {U410} no210 (n146, n273, d_in_63_0_21, vss, vdd);
   {U411} no210 (n146, n274, d_in_63_0_20, vss, vdd);
   {U412} no210 (n148, n269, d_in_63_0_1, vss, vdd);
   {U413} no210 (n146, n275, d_in_63_0_19, vss, vdd);
   {U414} no210 (n146, n276, d_in_63_0_18, vss, vdd);
   {U415} no210 (n146, n269, d_in_63_0_17, vss, vdd);
   {U416} iv110 (d_in_muxed_7_0_1, n269, vss, vdd);
   {U417} no210 (n146, n270, d_in_63_0_16, vss, vdd);
   {U418} iv110 (n170, n146, vss, vdd);
   {U419} no310 (sel_2_0_0, sel_2_0_2, n278, n170, vss, vdd);
   {U420} iv110 (sel_2_0_1, n278, vss, vdd);
   {U421} no210 (n147, n271, d_in_63_0_15, vss, vdd);
   {U422} iv110 (d_in_muxed_7_0_7, n271, vss, vdd);
   {U423} no210 (n147, n272, d_in_63_0_14, vss, vdd);
   {U424} iv110 (d_in_muxed_7_0_6, n272, vss, vdd);
   {U425} no210 (n147, n273, d_in_63_0_13, vss, vdd);
   {U426} iv110 (d_in_muxed_7_0_5, n273, vss, vdd);
   {U427} no210 (n147, n274, d_in_63_0_12, vss, vdd);
   {U428} iv110 (d_in_muxed_7_0_4, n274, vss, vdd);
   {U429} no210 (n147, n275, d_in_63_0_11, vss, vdd);
   {U430} iv110 (d_in_muxed_7_0_3, n275, vss, vdd);
   {U431} no210 (n147, n276, d_in_63_0_10, vss, vdd);
   {U432} iv110 (d_in_muxed_7_0_2, n276, vss, vdd);
   {U433} iv110 (n165, n147, vss, vdd);
   {U434} no310 (sel_2_0_1, sel_2_0_2, n277, n165, vss, vdd);
   {U435} iv110 (sel_2_0_0, n277, vss, vdd);
   {U436} no210 (n148, n270, d_in_63_0_0, vss, vdd);
   {U437} iv110 (d_in_muxed_7_0_0, n270, vss, vdd);
   {U438} iv110 (n166, n148, vss, vdd);
   {U439} no310 (sel_2_0_1, sel_2_0_2, sel_2_0_0, n166, vss, vdd);
}



