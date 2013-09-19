
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

architecture synthesised of pwm_gen is

   component iv110
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component no210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component no310
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component na210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component mu111
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component na310
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component dfr11
      port( D, R, CK : in std_logic;  Q : out std_logic);
   end component;
   
   signal count_9_port, count_8_port, count_7_port, count_6_port, count_5_port,
      count_4_port, count_3_port, count_2_port, count_1_port, count_0_port, N31
      , N32, N33, N34, N35, N36, N37, N38, N39, N40, n33_port, n34_port, 
      n35_port, n36_port, n37_port, n38_port, n39_port, n40_port, n41, n42, n43
      , n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, 
      n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72
      , n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, 
      n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, 
      n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, 
      n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, 
      n125, n126, n127, n128, n129 : std_logic;

begin
   
   count_reg_0_inst : dfr11 port map( D => N31, R => reset, CK => clk, Q => 
                           count_0_port);
   count_reg_9_inst : dfr11 port map( D => N40, R => reset, CK => clk, Q => 
                           count_9_port);
   count_reg_1_inst : dfr11 port map( D => N32, R => reset, CK => clk, Q => 
                           count_1_port);
   count_reg_2_inst : dfr11 port map( D => N33, R => reset, CK => clk, Q => 
                           count_2_port);
   count_reg_3_inst : dfr11 port map( D => N34, R => reset, CK => clk, Q => 
                           count_3_port);
   count_reg_4_inst : dfr11 port map( D => N35, R => reset, CK => clk, Q => 
                           count_4_port);
   count_reg_5_inst : dfr11 port map( D => N36, R => reset, CK => clk, Q => 
                           count_5_port);
   count_reg_6_inst : dfr11 port map( D => N37, R => reset, CK => clk, Q => 
                           count_6_port);
   count_reg_7_inst : dfr11 port map( D => N38, R => reset, CK => clk, Q => 
                           count_7_port);
   count_reg_8_inst : dfr11 port map( D => N39, R => reset, CK => clk, Q => 
                           count_8_port);
   U43 : no210 port map( A => n33_port, B => n34_port, Y => pulse);
   U44 : no210 port map( A => n35_port, B => n36_port, Y => n33_port);
   U45 : no310 port map( A => n37_port, B => n38_port, C => n39_port, Y => 
                           n36_port);
   U46 : no210 port map( A => width(8), B => n40_port, Y => n39_port);
   U47 : no210 port map( A => n41, B => n42, Y => n38_port);
   U48 : no210 port map( A => n43, B => n44, Y => n42);
   U49 : no210 port map( A => width(7), B => n45, Y => n44);
   U50 : no310 port map( A => n46, B => n47, C => n48, Y => n43);
   U51 : iv110 port map( A => n49, Y => n48);
   U52 : na210 port map( A => n45, B => width(7), Y => n49);
   U53 : no210 port map( A => count_6_port, B => n50, Y => n47);
   U54 : no310 port map( A => n51, B => n52, C => n53, Y => n46);
   U55 : no210 port map( A => width(5), B => n54, Y => n53);
   U56 : no310 port map( A => n55, B => n56, C => n57, Y => n52);
   U57 : no210 port map( A => count_5_port, B => n58, Y => n57);
   U58 : no210 port map( A => count_4_port, B => n59, Y => n56);
   U59 : iv110 port map( A => width(4), Y => n59);
   U60 : no310 port map( A => n60, B => n61, C => n62, Y => n55);
   U61 : no210 port map( A => width(3), B => n63, Y => n62);
   U62 : no310 port map( A => n64, B => n65, C => n66, Y => n61);
   U63 : no210 port map( A => count_3_port, B => n67, Y => n66);
   U64 : no210 port map( A => count_2_port, B => n68, Y => n65);
   U65 : no310 port map( A => n69, B => n70, C => n71, Y => n64);
   U66 : no210 port map( A => n72, B => n73, Y => n71);
   U67 : iv110 port map( A => n74, Y => n72);
   U68 : no210 port map( A => width(1), B => n75, Y => n70);
   U69 : no210 port map( A => count_1_port, B => n74, Y => n75);
   U70 : na210 port map( A => width(0), B => n76, Y => n74);
   U71 : iv110 port map( A => n77, Y => n69);
   U72 : na210 port map( A => n68, B => count_2_port, Y => n77);
   U73 : iv110 port map( A => width(2), Y => n68);
   U74 : no210 port map( A => width(4), B => n78, Y => n60);
   U75 : no210 port map( A => width(6), B => n79, Y => n51);
   U76 : iv110 port map( A => n80, Y => n41);
   U77 : na210 port map( A => n40_port, B => width(8), Y => n80);
   U78 : no210 port map( A => width(9), B => n81, Y => n37_port);
   U79 : iv110 port map( A => n82, Y => n35_port);
   U80 : na210 port map( A => n83, B => width(9), Y => n82);
   U81 : na210 port map( A => n84, B => count_9_port, Y => n83);
   U82 : na310 port map( A => n85, B => width(7), C => width(8), Y => n84);
   U83 : no310 port map( A => n58, B => n86, C => n50, Y => n85);
   U84 : iv110 port map( A => width(6), Y => n50);
   U85 : no210 port map( A => n87, B => width(4), Y => n86);
   U86 : no210 port map( A => n67, B => n88, Y => n87);
   U87 : no310 port map( A => width(1), B => width(2), C => width(0), Y => n88)
                           ;
   U88 : iv110 port map( A => width(3), Y => n67);
   U89 : iv110 port map( A => width(5), Y => n58);
   U90 : na210 port map( A => n89, B => n90, Y => N40);
   U91 : na210 port map( A => n91, B => count_8_port, Y => n90);
   U92 : na210 port map( A => count_9_port, B => n92, Y => n89);
   U93 : na210 port map( A => n93, B => n94, Y => n92);
   U94 : mu111 port map( A => n95, B => n91, S => n40_port, Y => N39);
   U95 : no310 port map( A => n96, B => n45, C => n94, Y => n91);
   U96 : iv110 port map( A => n93, Y => n95);
   U97 : no210 port map( A => n97, B => n45, Y => n93);
   U98 : mu111 port map( A => n97, B => n98, S => n45, Y => N38);
   U99 : no210 port map( A => n96, B => n94, Y => n98);
   U100 : na210 port map( A => n99, B => n100, Y => n97);
   U101 : na210 port map( A => n101, B => n96, Y => n100);
   U102 : na310 port map( A => count_6_port, B => count_5_port, C => n102, Y =>
                           n96);
   U103 : mu111 port map( A => n103, B => n104, S => n79, Y => N37);
   U104 : no310 port map( A => n94, B => n54, C => n105, Y => n104);
   U105 : iv110 port map( A => n106, Y => n103);
   U106 : no210 port map( A => n107, B => n54, Y => n106);
   U107 : mu111 port map( A => n107, B => n108, S => n54, Y => N36);
   U108 : no210 port map( A => n105, B => n94, Y => n108);
   U109 : na210 port map( A => n99, B => n109, Y => n107);
   U110 : na210 port map( A => n101, B => n105, Y => n109);
   U111 : iv110 port map( A => n102, Y => n105);
   U112 : no310 port map( A => n78, B => n63, C => n110, Y => n102);
   U113 : mu111 port map( A => n111, B => n112, S => n78, Y => N35);
   U114 : iv110 port map( A => count_4_port, Y => n78);
   U115 : no310 port map( A => n94, B => n63, C => n110, Y => n112);
   U116 : na210 port map( A => n113, B => n114, Y => n111);
   U117 : na210 port map( A => n101, B => n63, Y => n114);
   U118 : iv110 port map( A => n115, Y => n113);
   U119 : mu111 port map( A => n115, B => n116, S => n63, Y => N34);
   U120 : iv110 port map( A => count_3_port, Y => n63);
   U121 : no210 port map( A => n110, B => n94, Y => n116);
   U122 : na210 port map( A => n99, B => n117, Y => n115);
   U123 : na210 port map( A => n101, B => n110, Y => n117);
   U124 : na310 port map( A => count_2_port, B => count_1_port, C => 
                           count_0_port, Y => n110);
   U125 : mu111 port map( A => n118, B => n119, S => count_2_port, Y => N33);
   U126 : na210 port map( A => n120, B => n121, Y => n119);
   U127 : na210 port map( A => n101, B => n73, Y => n121);
   U128 : iv110 port map( A => n122, Y => n120);
   U129 : no310 port map( A => n94, B => n73, C => n76, Y => n118);
   U130 : mu111 port map( A => n122, B => n123, S => n73, Y => N32);
   U131 : iv110 port map( A => count_1_port, Y => n73);
   U132 : no210 port map( A => n76, B => n94, Y => n123);
   U133 : na210 port map( A => n99, B => n124, Y => n122);
   U134 : na210 port map( A => n101, B => n76, Y => n124);
   U135 : iv110 port map( A => n94, Y => n101);
   U136 : iv110 port map( A => n125, Y => N31);
   U137 : mu111 port map( A => n99, B => n94, S => n76, Y => n125);
   U138 : iv110 port map( A => count_0_port, Y => n76);
   U139 : na210 port map( A => n99, B => n126, Y => n94);
   U140 : na210 port map( A => n127, B => n128, Y => n126);
   U141 : no310 port map( A => n54, B => n129, C => n45, Y => n128);
   U142 : iv110 port map( A => count_7_port, Y => n45);
   U143 : no210 port map( A => count_4_port, B => count_3_port, Y => n129);
   U144 : iv110 port map( A => count_5_port, Y => n54);
   U145 : no310 port map( A => n40_port, B => n81, C => n79, Y => n127);
   U146 : iv110 port map( A => count_6_port, Y => n79);
   U147 : iv110 port map( A => count_9_port, Y => n81);
   U148 : iv110 port map( A => count_8_port, Y => n40_port);
   U149 : no210 port map( A => n34_port, B => reset, Y => n99);
   U150 : iv110 port map( A => enabled, Y => n34_port);

end synthesised;



