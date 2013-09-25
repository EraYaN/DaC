extern network na310 (terminal A, B, C, Y, vss, vdd)
extern network na210 (terminal A, B, Y, vss, vdd)
extern network no210 (terminal A, B, Y, vss, vdd)
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
                         sel_1_0_0, vss, vdd)
{
   {U71} na310 (n62, n63, n64, d_out_muxed_7_0_7, vss, vdd);
   {U72} no210 (n65, n66, n64, vss, vdd);
   {U73} no210 (n67, n68, n66, vss, vdd);
   {U74} iv110 (d_out_31_0_23, n68, vss, vdd);
   {U75} no210 (n69, n70, n65, vss, vdd);
   {U76} iv110 (d_out_31_0_31, n70, vss, vdd);
   {U77} na210 (d_out_31_0_7, n71, n63, vss, vdd);
   {U78} na210 (d_out_31_0_15, n72, n62, vss, vdd);
   {U79} na310 (n73, n74, n75, d_out_muxed_7_0_6, vss, vdd);
   {U80} no210 (n76, n77, n75, vss, vdd);
   {U81} no210 (n67, n78, n77, vss, vdd);
   {U82} iv110 (d_out_31_0_22, n78, vss, vdd);
   {U83} no210 (n69, n79, n76, vss, vdd);
   {U84} iv110 (d_out_31_0_30, n79, vss, vdd);
   {U85} na210 (d_out_31_0_6, n71, n74, vss, vdd);
   {U86} na210 (d_out_31_0_14, n72, n73, vss, vdd);
   {U87} na310 (n80, n81, n82, d_out_muxed_7_0_5, vss, vdd);
   {U88} no210 (n83, n84, n82, vss, vdd);
   {U89} no210 (n67, n85, n84, vss, vdd);
   {U90} iv110 (d_out_31_0_21, n85, vss, vdd);
   {U91} no210 (n69, n86, n83, vss, vdd);
   {U92} iv110 (d_out_31_0_29, n86, vss, vdd);
   {U93} na210 (d_out_31_0_5, n71, n81, vss, vdd);
   {U94} na210 (d_out_31_0_13, n72, n80, vss, vdd);
   {U95} na310 (n87, n88, n89, d_out_muxed_7_0_4, vss, vdd);
   {U96} no210 (n90, n91, n89, vss, vdd);
   {U97} no210 (n67, n92, n91, vss, vdd);
   {U98} iv110 (d_out_31_0_20, n92, vss, vdd);
   {U99} no210 (n69, n93, n90, vss, vdd);
   {U100} iv110 (d_out_31_0_28, n93, vss, vdd);
   {U101} na210 (d_out_31_0_4, n71, n88, vss, vdd);
   {U102} na210 (d_out_31_0_12, n72, n87, vss, vdd);
   {U103} na310 (n94, n95, n96, d_out_muxed_7_0_3, vss, vdd);
   {U104} no210 (n97, n98, n96, vss, vdd);
   {U105} no210 (n67, n99, n98, vss, vdd);
   {U106} iv110 (d_out_31_0_19, n99, vss, vdd);
   {U107} no210 (n69, n100, n97, vss, vdd);
   {U108} iv110 (d_out_31_0_27, n100, vss, vdd);
   {U109} na210 (d_out_31_0_3, n71, n95, vss, vdd);
   {U110} na210 (d_out_31_0_11, n72, n94, vss, vdd);
   {U111} na310 (n101, n102, n103, d_out_muxed_7_0_2, vss, vdd);
   {U112} no210 (n104, n105, n103, vss, vdd);
   {U113} no210 (n67, n106, n105, vss, vdd);
   {U114} iv110 (d_out_31_0_18, n106, vss, vdd);
   {U115} no210 (n69, n107, n104, vss, vdd);
   {U116} iv110 (d_out_31_0_26, n107, vss, vdd);
   {U117} na210 (d_out_31_0_2, n71, n102, vss, vdd);
   {U118} na210 (d_out_31_0_10, n72, n101, vss, vdd);
   {U119} na310 (n108, n109, n110, d_out_muxed_7_0_1, vss, vdd);
   {U120} no210 (n111, n112, n110, vss, vdd);
   {U121} no210 (n67, n113, n112, vss, vdd);
   {U122} iv110 (d_out_31_0_17, n113, vss, vdd);
   {U123} no210 (n69, n114, n111, vss, vdd);
   {U124} iv110 (d_out_31_0_25, n114, vss, vdd);
   {U125} na210 (d_out_31_0_1, n71, n109, vss, vdd);
   {U126} na210 (d_out_31_0_9, n72, n108, vss, vdd);
   {U127} na310 (n115, n116, n117, d_out_muxed_7_0_0, vss, vdd);
   {U128} no210 (n118, n119, n117, vss, vdd);
   {U129} no210 (n67, n120, n119, vss, vdd);
   {U130} iv110 (d_out_31_0_16, n120, vss, vdd);
   {U131} na210 (sel_1_0_1, n121, n67, vss, vdd);
   {U132} no210 (n69, n122, n118, vss, vdd);
   {U133} iv110 (d_out_31_0_24, n122, vss, vdd);
   {U134} na210 (sel_1_0_1, sel_1_0_0, n69, vss, vdd);
   {U135} na210 (d_out_31_0_0, n71, n116, vss, vdd);
   {U136} no210 (sel_1_0_0, sel_1_0_1, n71, vss, vdd);
   {U137} na210 (d_out_31_0_8, n72, n115, vss, vdd);
   {U138} no210 (n121, sel_1_0_1, n72, vss, vdd);
   {U139} iv110 (sel_1_0_0, n121, vss, vdd);
}



