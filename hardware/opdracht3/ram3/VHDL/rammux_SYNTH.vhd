
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

architecture synthesised of rammux is

   component iv110
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component no210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component na210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component na310
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   signal n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
      n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90
      , n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, 
      n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, 
      n116, n117, n118, n119, n120, n121, n122 : std_logic;

begin
   
   U71 : na310 port map( A => n62, B => n63, C => n64, Y => d_out_muxed(7));
   U72 : no210 port map( A => n65, B => n66, Y => n64);
   U73 : no210 port map( A => n67, B => n68, Y => n66);
   U74 : iv110 port map( A => d_out(23), Y => n68);
   U75 : no210 port map( A => n69, B => n70, Y => n65);
   U76 : iv110 port map( A => d_out(31), Y => n70);
   U77 : na210 port map( A => d_out(7), B => n71, Y => n63);
   U78 : na210 port map( A => d_out(15), B => n72, Y => n62);
   U79 : na310 port map( A => n73, B => n74, C => n75, Y => d_out_muxed(6));
   U80 : no210 port map( A => n76, B => n77, Y => n75);
   U81 : no210 port map( A => n67, B => n78, Y => n77);
   U82 : iv110 port map( A => d_out(22), Y => n78);
   U83 : no210 port map( A => n69, B => n79, Y => n76);
   U84 : iv110 port map( A => d_out(30), Y => n79);
   U85 : na210 port map( A => d_out(6), B => n71, Y => n74);
   U86 : na210 port map( A => d_out(14), B => n72, Y => n73);
   U87 : na310 port map( A => n80, B => n81, C => n82, Y => d_out_muxed(5));
   U88 : no210 port map( A => n83, B => n84, Y => n82);
   U89 : no210 port map( A => n67, B => n85, Y => n84);
   U90 : iv110 port map( A => d_out(21), Y => n85);
   U91 : no210 port map( A => n69, B => n86, Y => n83);
   U92 : iv110 port map( A => d_out(29), Y => n86);
   U93 : na210 port map( A => d_out(5), B => n71, Y => n81);
   U94 : na210 port map( A => d_out(13), B => n72, Y => n80);
   U95 : na310 port map( A => n87, B => n88, C => n89, Y => d_out_muxed(4));
   U96 : no210 port map( A => n90, B => n91, Y => n89);
   U97 : no210 port map( A => n67, B => n92, Y => n91);
   U98 : iv110 port map( A => d_out(20), Y => n92);
   U99 : no210 port map( A => n69, B => n93, Y => n90);
   U100 : iv110 port map( A => d_out(28), Y => n93);
   U101 : na210 port map( A => d_out(4), B => n71, Y => n88);
   U102 : na210 port map( A => d_out(12), B => n72, Y => n87);
   U103 : na310 port map( A => n94, B => n95, C => n96, Y => d_out_muxed(3));
   U104 : no210 port map( A => n97, B => n98, Y => n96);
   U105 : no210 port map( A => n67, B => n99, Y => n98);
   U106 : iv110 port map( A => d_out(19), Y => n99);
   U107 : no210 port map( A => n69, B => n100, Y => n97);
   U108 : iv110 port map( A => d_out(27), Y => n100);
   U109 : na210 port map( A => d_out(3), B => n71, Y => n95);
   U110 : na210 port map( A => d_out(11), B => n72, Y => n94);
   U111 : na310 port map( A => n101, B => n102, C => n103, Y => d_out_muxed(2))
                           ;
   U112 : no210 port map( A => n104, B => n105, Y => n103);
   U113 : no210 port map( A => n67, B => n106, Y => n105);
   U114 : iv110 port map( A => d_out(18), Y => n106);
   U115 : no210 port map( A => n69, B => n107, Y => n104);
   U116 : iv110 port map( A => d_out(26), Y => n107);
   U117 : na210 port map( A => d_out(2), B => n71, Y => n102);
   U118 : na210 port map( A => d_out(10), B => n72, Y => n101);
   U119 : na310 port map( A => n108, B => n109, C => n110, Y => d_out_muxed(1))
                           ;
   U120 : no210 port map( A => n111, B => n112, Y => n110);
   U121 : no210 port map( A => n67, B => n113, Y => n112);
   U122 : iv110 port map( A => d_out(17), Y => n113);
   U123 : no210 port map( A => n69, B => n114, Y => n111);
   U124 : iv110 port map( A => d_out(25), Y => n114);
   U125 : na210 port map( A => d_out(1), B => n71, Y => n109);
   U126 : na210 port map( A => d_out(9), B => n72, Y => n108);
   U127 : na310 port map( A => n115, B => n116, C => n117, Y => d_out_muxed(0))
                           ;
   U128 : no210 port map( A => n118, B => n119, Y => n117);
   U129 : no210 port map( A => n67, B => n120, Y => n119);
   U130 : iv110 port map( A => d_out(16), Y => n120);
   U131 : na210 port map( A => sel(1), B => n121, Y => n67);
   U132 : no210 port map( A => n69, B => n122, Y => n118);
   U133 : iv110 port map( A => d_out(24), Y => n122);
   U134 : na210 port map( A => sel(1), B => sel(0), Y => n69);
   U135 : na210 port map( A => d_out(0), B => n71, Y => n116);
   U136 : no210 port map( A => sel(0), B => sel(1), Y => n71);
   U137 : na210 port map( A => d_out(8), B => n72, Y => n115);
   U138 : no210 port map( A => n121, B => sel(1), Y => n72);
   U139 : iv110 port map( A => sel(0), Y => n121);

end synthesised;



