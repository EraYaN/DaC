extern network na310 (terminal A, B, C, Y, vss, vdd)
extern network no210 (terminal A, B, Y, vss, vdd)
extern network na210 (terminal A, B, Y, vss, vdd)
extern network iv110 (terminal A, Y, vss, vdd)
network rammux (terminal clk, d_out_muxed_7_0_7, d_out_muxed_7_0_6, 
                         d_out_muxed_7_0_5, d_out_muxed_7_0_4, 
                         d_out_muxed_7_0_3, d_out_muxed_7_0_2, 
                         d_out_muxed_7_0_1, d_out_muxed_7_0_0, d_out_31_0_31, 
                         d_out_31_0_30, d_out_31_0_29, d_out_31_0_28, 
                         d_out_31_0_27, d_out_31_0_26, d_out_31_0_25, 
                         d_out_31_0_24, d_out_31_0_23, d_out_31_0_22, 
                         d_out_31_0_21, d_out_31_0_20, d_out_31_0_19, 
                         d_out_31_0_18, d_out_31_0_17, d_out_31_0_16, 
                         d_out_31_0_15, d_out_31_0_14, d_out_31_0_13, 
                         d_out_31_0_12, d_out_31_0_11, d_out_31_0_10, 
                         d_out_31_0_9, d_out_31_0_8, d_out_31_0_7, 
                         d_out_31_0_6, d_out_31_0_5, d_out_31_0_4, 
                         d_out_31_0_3, d_out_31_0_2, d_out_31_0_1, 
                         d_out_31_0_0, d_in_muxed_7_0_7, d_in_muxed_7_0_6, 
                         d_in_muxed_7_0_5, d_in_muxed_7_0_4, d_in_muxed_7_0_3, 
                         d_in_muxed_7_0_2, d_in_muxed_7_0_1, d_in_muxed_7_0_0, 
                         d_in_31_0_31, d_in_31_0_30, d_in_31_0_29, 
                         d_in_31_0_28, d_in_31_0_27, d_in_31_0_26, 
                         d_in_31_0_25, d_in_31_0_24, d_in_31_0_23, 
                         d_in_31_0_22, d_in_31_0_21, d_in_31_0_20, 
                         d_in_31_0_19, d_in_31_0_18, d_in_31_0_17, 
                         d_in_31_0_16, d_in_31_0_15, d_in_31_0_14, 
                         d_in_31_0_13, d_in_31_0_12, d_in_31_0_11, 
                         d_in_31_0_10, d_in_31_0_9, d_in_31_0_8, d_in_31_0_7, 
                         d_in_31_0_6, d_in_31_0_5, d_in_31_0_4, d_in_31_0_3, 
                         d_in_31_0_2, d_in_31_0_1, d_in_31_0_0, sel_1_0_1, 
                         sel_1_0_0, write, write_out_3_0_3, write_out_3_0_2, 
                         write_out_3_0_1, write_out_3_0_0, vss, vdd)
{
   {U120} na210 (sel_1_0_1, sel_1_0_0, n75, vss, vdd);
   {U121} no210 (n75, n77, write_out_3_0_3, vss, vdd);
   {U122} no210 (n77, n78, write_out_3_0_2, vss, vdd);
   {U123} no210 (n77, n79, write_out_3_0_1, vss, vdd);
   {U124} no210 (n77, n80, write_out_3_0_0, vss, vdd);
   {U125} iv110 (write, n77, vss, vdd);
   {U126} na310 (n81, n82, n83, d_out_muxed_7_0_7, vss, vdd);
   {U127} no210 (n84, n85, n83, vss, vdd);
   {U128} no210 (n76, n86, n85, vss, vdd);
   {U129} iv110 (d_out_31_0_31, n86, vss, vdd);
   {U130} no210 (n87, n88, n84, vss, vdd);
   {U131} iv110 (d_out_31_0_7, n88, vss, vdd);
   {U132} na210 (d_out_31_0_23, n89, n82, vss, vdd);
   {U133} na210 (d_out_31_0_15, n90, n81, vss, vdd);
   {U134} na310 (n91, n92, n93, d_out_muxed_7_0_6, vss, vdd);
   {U135} no210 (n94, n95, n93, vss, vdd);
   {U136} no210 (n75, n96, n95, vss, vdd);
   {U137} iv110 (d_out_31_0_30, n96, vss, vdd);
   {U138} no210 (n87, n97, n94, vss, vdd);
   {U139} iv110 (d_out_31_0_6, n97, vss, vdd);
   {U140} na210 (d_out_31_0_22, n89, n92, vss, vdd);
   {U141} na210 (d_out_31_0_14, n90, n91, vss, vdd);
   {U142} na310 (n98, n99, n100, d_out_muxed_7_0_5, vss, vdd);
   {U143} no210 (n101, n102, n100, vss, vdd);
   {U144} no210 (n76, n103, n102, vss, vdd);
   {U145} iv110 (d_out_31_0_29, n103, vss, vdd);
   {U146} no210 (n87, n104, n101, vss, vdd);
   {U147} iv110 (d_out_31_0_5, n104, vss, vdd);
   {U148} na210 (d_out_31_0_21, n89, n99, vss, vdd);
   {U149} na210 (d_out_31_0_13, n90, n98, vss, vdd);
   {U150} na310 (n105, n106, n107, d_out_muxed_7_0_4, vss, vdd);
   {U151} no210 (n108, n109, n107, vss, vdd);
   {U152} no210 (n75, n110, n109, vss, vdd);
   {U153} iv110 (d_out_31_0_28, n110, vss, vdd);
   {U154} no210 (n87, n111, n108, vss, vdd);
   {U155} iv110 (d_out_31_0_4, n111, vss, vdd);
   {U156} na210 (d_out_31_0_20, n89, n106, vss, vdd);
   {U157} na210 (d_out_31_0_12, n90, n105, vss, vdd);
   {U158} na310 (n112, n113, n114, d_out_muxed_7_0_3, vss, vdd);
   {U159} no210 (n115, n116, n114, vss, vdd);
   {U160} no210 (n76, n117, n116, vss, vdd);
   {U161} iv110 (d_out_31_0_27, n117, vss, vdd);
   {U162} no210 (n87, n118, n115, vss, vdd);
   {U163} iv110 (d_out_31_0_3, n118, vss, vdd);
   {U164} na210 (d_out_31_0_19, n89, n113, vss, vdd);
   {U165} na210 (d_out_31_0_11, n90, n112, vss, vdd);
   {U166} na310 (n119, n120, n121, d_out_muxed_7_0_2, vss, vdd);
   {U167} no210 (n122, n123, n121, vss, vdd);
   {U168} no210 (n75, n124, n123, vss, vdd);
   {U169} iv110 (d_out_31_0_26, n124, vss, vdd);
   {U170} no210 (n87, n125, n122, vss, vdd);
   {U171} iv110 (d_out_31_0_2, n125, vss, vdd);
   {U172} na210 (d_out_31_0_18, n89, n120, vss, vdd);
   {U173} na210 (d_out_31_0_10, n90, n119, vss, vdd);
   {U174} na310 (n126, n127, n128, d_out_muxed_7_0_1, vss, vdd);
   {U175} no210 (n129, n130, n128, vss, vdd);
   {U176} no210 (n76, n131, n130, vss, vdd);
   {U177} iv110 (d_out_31_0_25, n131, vss, vdd);
   {U178} no210 (n87, n132, n129, vss, vdd);
   {U179} iv110 (d_out_31_0_1, n132, vss, vdd);
   {U180} na210 (d_out_31_0_17, n89, n127, vss, vdd);
   {U181} na210 (d_out_31_0_9, n90, n126, vss, vdd);
   {U182} na310 (n133, n134, n135, d_out_muxed_7_0_0, vss, vdd);
   {U183} no210 (n136, n137, n135, vss, vdd);
   {U184} no210 (n75, n138, n137, vss, vdd);
   {U185} iv110 (d_out_31_0_24, n138, vss, vdd);
   {U186} no210 (n87, n139, n136, vss, vdd);
   {U187} iv110 (d_out_31_0_0, n139, vss, vdd);
   {U188} na310 (n78, n76, n79, n87, vss, vdd);
   {U189} na210 (d_out_31_0_16, n89, n134, vss, vdd);
   {U190} iv110 (n78, n89, vss, vdd);
   {U191} na210 (d_out_31_0_8, n90, n133, vss, vdd);
   {U192} iv110 (n79, n90, vss, vdd);
   {U193} no210 (n79, n140, d_in_31_0_9, vss, vdd);
   {U194} no210 (n79, n141, d_in_31_0_8, vss, vdd);
   {U195} no210 (n80, n142, d_in_31_0_7, vss, vdd);
   {U196} no210 (n80, n143, d_in_31_0_6, vss, vdd);
   {U197} no210 (n80, n144, d_in_31_0_5, vss, vdd);
   {U198} no210 (n80, n145, d_in_31_0_4, vss, vdd);
   {U199} no210 (n80, n146, d_in_31_0_3, vss, vdd);
   {U200} no210 (n75, n142, d_in_31_0_31, vss, vdd);
   {U201} no210 (n76, n143, d_in_31_0_30, vss, vdd);
   {U202} no210 (n80, n147, d_in_31_0_2, vss, vdd);
   {U203} no210 (n75, n144, d_in_31_0_29, vss, vdd);
   {U204} no210 (n76, n145, d_in_31_0_28, vss, vdd);
   {U205} no210 (n75, n146, d_in_31_0_27, vss, vdd);
   {U206} no210 (n76, n147, d_in_31_0_26, vss, vdd);
   {U207} no210 (n75, n140, d_in_31_0_25, vss, vdd);
   {U208} no210 (n76, n141, d_in_31_0_24, vss, vdd);
   {U209} na210 (sel_1_0_1, sel_1_0_0, n76, vss, vdd);
   {U210} no210 (n78, n142, d_in_31_0_23, vss, vdd);
   {U211} no210 (n78, n143, d_in_31_0_22, vss, vdd);
   {U212} no210 (n78, n144, d_in_31_0_21, vss, vdd);
   {U213} no210 (n78, n145, d_in_31_0_20, vss, vdd);
   {U214} no210 (n80, n140, d_in_31_0_1, vss, vdd);
   {U215} no210 (n78, n146, d_in_31_0_19, vss, vdd);
   {U216} no210 (n78, n147, d_in_31_0_18, vss, vdd);
   {U217} no210 (n78, n140, d_in_31_0_17, vss, vdd);
   {U218} iv110 (d_in_muxed_7_0_1, n140, vss, vdd);
   {U219} no210 (n78, n141, d_in_31_0_16, vss, vdd);
   {U220} na210 (sel_1_0_1, n148, n78, vss, vdd);
   {U221} no210 (n79, n142, d_in_31_0_15, vss, vdd);
   {U222} iv110 (d_in_muxed_7_0_7, n142, vss, vdd);
   {U223} no210 (n79, n143, d_in_31_0_14, vss, vdd);
   {U224} iv110 (d_in_muxed_7_0_6, n143, vss, vdd);
   {U225} no210 (n79, n144, d_in_31_0_13, vss, vdd);
   {U226} iv110 (d_in_muxed_7_0_5, n144, vss, vdd);
   {U227} no210 (n79, n145, d_in_31_0_12, vss, vdd);
   {U228} iv110 (d_in_muxed_7_0_4, n145, vss, vdd);
   {U229} no210 (n79, n146, d_in_31_0_11, vss, vdd);
   {U230} iv110 (d_in_muxed_7_0_3, n146, vss, vdd);
   {U231} no210 (n79, n147, d_in_31_0_10, vss, vdd);
   {U232} iv110 (d_in_muxed_7_0_2, n147, vss, vdd);
   {U233} na210 (sel_1_0_0, n149, n79, vss, vdd);
   {U234} no210 (n80, n141, d_in_31_0_0, vss, vdd);
   {U235} iv110 (d_in_muxed_7_0_0, n141, vss, vdd);
   {U236} na210 (n149, n148, n80, vss, vdd);
   {U237} iv110 (sel_1_0_0, n148, vss, vdd);
   {U238} iv110 (sel_1_0_1, n149, vss, vdd);
}



