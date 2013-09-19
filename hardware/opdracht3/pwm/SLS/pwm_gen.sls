extern network dfr11 (terminal D, R, CK, Q, vss, vdd)
extern network na310 (terminal A, B, C, Y, vss, vdd)
extern network mu111 (terminal A, B, S, Y, vss, vdd)
extern network na210 (terminal A, B, Y, vss, vdd)
extern network no310 (terminal A, B, C, Y, vss, vdd)
extern network no210 (terminal A, B, Y, vss, vdd)
extern network iv110 (terminal A, Y, vss, vdd)
network pwm_gen (terminal clk, reset, enabled, width_9_0_9, width_9_0_8, 
                          width_9_0_7, width_9_0_6, width_9_0_5, width_9_0_4, 
                          width_9_0_3, width_9_0_2, width_9_0_1, width_9_0_0, 
                          pulse, vss, vdd)
{
   {count_reg_0_inst} dfr11 (N31, reset, clk, count_0_port, vss, vdd);
   {count_reg_9_inst} dfr11 (N40, reset, clk, count_9_port, vss, vdd);
   {count_reg_1_inst} dfr11 (N32, reset, clk, count_1_port, vss, vdd);
   {count_reg_2_inst} dfr11 (N33, reset, clk, count_2_port, vss, vdd);
   {count_reg_3_inst} dfr11 (N34, reset, clk, count_3_port, vss, vdd);
   {count_reg_4_inst} dfr11 (N35, reset, clk, count_4_port, vss, vdd);
   {count_reg_5_inst} dfr11 (N36, reset, clk, count_5_port, vss, vdd);
   {count_reg_6_inst} dfr11 (N37, reset, clk, count_6_port, vss, vdd);
   {count_reg_7_inst} dfr11 (N38, reset, clk, count_7_port, vss, vdd);
   {count_reg_8_inst} dfr11 (N39, reset, clk, count_8_port, vss, vdd);
   {U43} no210 (n33_port, n34_port, pulse, vss, vdd);
   {U44} no210 (n35_port, n36_port, n33_port, vss, vdd);
   {U45} no310 (n37_port, n38_port, n39_port, n36_port, vss, vdd);
   {U46} no210 (width_9_0_8, n40_port, n39_port, vss, vdd);
   {U47} no210 (n41, n42, n38_port, vss, vdd);
   {U48} no210 (n43, n44, n42, vss, vdd);
   {U49} no210 (width_9_0_7, n45, n44, vss, vdd);
   {U50} no310 (n46, n47, n48, n43, vss, vdd);
   {U51} iv110 (n49, n48, vss, vdd);
   {U52} na210 (n45, width_9_0_7, n49, vss, vdd);
   {U53} no210 (count_6_port, n50, n47, vss, vdd);
   {U54} no310 (n51, n52, n53, n46, vss, vdd);
   {U55} no210 (width_9_0_5, n54, n53, vss, vdd);
   {U56} no310 (n55, n56, n57, n52, vss, vdd);
   {U57} no210 (count_5_port, n58, n57, vss, vdd);
   {U58} no210 (count_4_port, n59, n56, vss, vdd);
   {U59} iv110 (width_9_0_4, n59, vss, vdd);
   {U60} no310 (n60, n61, n62, n55, vss, vdd);
   {U61} no210 (width_9_0_3, n63, n62, vss, vdd);
   {U62} no310 (n64, n65, n66, n61, vss, vdd);
   {U63} no210 (count_3_port, n67, n66, vss, vdd);
   {U64} no210 (count_2_port, n68, n65, vss, vdd);
   {U65} no310 (n69, n70, n71, n64, vss, vdd);
   {U66} no210 (n72, n73, n71, vss, vdd);
   {U67} iv110 (n74, n72, vss, vdd);
   {U68} no210 (width_9_0_1, n75, n70, vss, vdd);
   {U69} no210 (count_1_port, n74, n75, vss, vdd);
   {U70} na210 (width_9_0_0, n76, n74, vss, vdd);
   {U71} iv110 (n77, n69, vss, vdd);
   {U72} na210 (n68, count_2_port, n77, vss, vdd);
   {U73} iv110 (width_9_0_2, n68, vss, vdd);
   {U74} no210 (width_9_0_4, n78, n60, vss, vdd);
   {U75} no210 (width_9_0_6, n79, n51, vss, vdd);
   {U76} iv110 (n80, n41, vss, vdd);
   {U77} na210 (n40_port, width_9_0_8, n80, vss, vdd);
   {U78} no210 (width_9_0_9, n81, n37_port, vss, vdd);
   {U79} iv110 (n82, n35_port, vss, vdd);
   {U80} na210 (n83, width_9_0_9, n82, vss, vdd);
   {U81} na210 (n84, count_9_port, n83, vss, vdd);
   {U82} na310 (n85, width_9_0_7, width_9_0_8, n84, vss, vdd);
   {U83} no310 (n58, n86, n50, n85, vss, vdd);
   {U84} iv110 (width_9_0_6, n50, vss, vdd);
   {U85} no210 (n87, width_9_0_4, n86, vss, vdd);
   {U86} no210 (n67, n88, n87, vss, vdd);
   {U87} no310 (width_9_0_1, width_9_0_2, width_9_0_0, n88, vss, vdd);
   {U88} iv110 (width_9_0_3, n67, vss, vdd);
   {U89} iv110 (width_9_0_5, n58, vss, vdd);
   {U90} na210 (n89, n90, N40, vss, vdd);
   {U91} na210 (n91, count_8_port, n90, vss, vdd);
   {U92} na210 (count_9_port, n92, n89, vss, vdd);
   {U93} na210 (n93, n94, n92, vss, vdd);
   {U94} mu111 (n95, n91, n40_port, N39, vss, vdd);
   {U95} no310 (n96, n45, n94, n91, vss, vdd);
   {U96} iv110 (n93, n95, vss, vdd);
   {U97} no210 (n97, n45, n93, vss, vdd);
   {U98} mu111 (n97, n98, n45, N38, vss, vdd);
   {U99} no210 (n96, n94, n98, vss, vdd);
   {U100} na210 (n99, n100, n97, vss, vdd);
   {U101} na210 (n101, n96, n100, vss, vdd);
   {U102} na310 (count_6_port, count_5_port, n102, n96, vss, vdd);
   {U103} mu111 (n103, n104, n79, N37, vss, vdd);
   {U104} no310 (n94, n54, n105, n104, vss, vdd);
   {U105} iv110 (n106, n103, vss, vdd);
   {U106} no210 (n107, n54, n106, vss, vdd);
   {U107} mu111 (n107, n108, n54, N36, vss, vdd);
   {U108} no210 (n105, n94, n108, vss, vdd);
   {U109} na210 (n99, n109, n107, vss, vdd);
   {U110} na210 (n101, n105, n109, vss, vdd);
   {U111} iv110 (n102, n105, vss, vdd);
   {U112} no310 (n78, n63, n110, n102, vss, vdd);
   {U113} mu111 (n111, n112, n78, N35, vss, vdd);
   {U114} iv110 (count_4_port, n78, vss, vdd);
   {U115} no310 (n94, n63, n110, n112, vss, vdd);
   {U116} na210 (n113, n114, n111, vss, vdd);
   {U117} na210 (n101, n63, n114, vss, vdd);
   {U118} iv110 (n115, n113, vss, vdd);
   {U119} mu111 (n115, n116, n63, N34, vss, vdd);
   {U120} iv110 (count_3_port, n63, vss, vdd);
   {U121} no210 (n110, n94, n116, vss, vdd);
   {U122} na210 (n99, n117, n115, vss, vdd);
   {U123} na210 (n101, n110, n117, vss, vdd);
   {U124} na310 (count_2_port, count_1_port, count_0_port, n110, vss, vdd);
   {U125} mu111 (n118, n119, count_2_port, N33, vss, vdd);
   {U126} na210 (n120, n121, n119, vss, vdd);
   {U127} na210 (n101, n73, n121, vss, vdd);
   {U128} iv110 (n122, n120, vss, vdd);
   {U129} no310 (n94, n73, n76, n118, vss, vdd);
   {U130} mu111 (n122, n123, n73, N32, vss, vdd);
   {U131} iv110 (count_1_port, n73, vss, vdd);
   {U132} no210 (n76, n94, n123, vss, vdd);
   {U133} na210 (n99, n124, n122, vss, vdd);
   {U134} na210 (n101, n76, n124, vss, vdd);
   {U135} iv110 (n94, n101, vss, vdd);
   {U136} iv110 (n125, N31, vss, vdd);
   {U137} mu111 (n99, n94, n76, n125, vss, vdd);
   {U138} iv110 (count_0_port, n76, vss, vdd);
   {U139} na210 (n99, n126, n94, vss, vdd);
   {U140} na210 (n127, n128, n126, vss, vdd);
   {U141} no310 (n54, n129, n45, n128, vss, vdd);
   {U142} iv110 (count_7_port, n45, vss, vdd);
   {U143} no210 (count_4_port, count_3_port, n129, vss, vdd);
   {U144} iv110 (count_5_port, n54, vss, vdd);
   {U145} no310 (n40_port, n81, n79, n127, vss, vdd);
   {U146} iv110 (count_6_port, n79, vss, vdd);
   {U147} iv110 (count_9_port, n81, vss, vdd);
   {U148} iv110 (count_8_port, n40_port, vss, vdd);
   {U149} no210 (n34_port, reset, n99, vss, vdd);
   {U150} iv110 (enabled, n34_port, vss, vdd);
}



