
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

architecture synthesised of draw_pixel is

   component iv110
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component no210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component na310
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component tinv10
      port( A, E : in std_logic;  Y : out std_logic);
   end component;
   
   component dfn10
      port( D, CK : in std_logic;  Q : out std_logic);
   end component;
   
   signal busy, n4, n6, n8, n10, n12, n14, n16, n18, n20, n22, n24, n26, n28, 
      n30, n32, n34, n36, n38, n40, n50, n45, draw_write_port, n47, n48, n49 : 
      std_logic;

begin
   draw_write <= draw_write_port;
   
   busy_reg : dfn10 port map( D => draw_write_port, CK => clk, Q => busy);
   ramdata_tri_0_inst : tinv10 port map( A => n40, E => draw_write_port, Y => 
                           ramdata(0));
   ramdata_tri_1_inst : tinv10 port map( A => n38, E => draw_write_port, Y => 
                           ramdata(1));
   ramdata_tri_2_inst : tinv10 port map( A => n36, E => draw_write_port, Y => 
                           ramdata(2));
   ramdata_tri_3_inst : tinv10 port map( A => n34, E => draw_write_port, Y => 
                           ramdata(3));
   ramaddr_tri_0_inst : tinv10 port map( A => n32, E => draw_write_port, Y => 
                           ramaddr(0));
   ramaddr_tri_1_inst : tinv10 port map( A => n30, E => draw_write_port, Y => 
                           ramaddr(1));
   ramaddr_tri_2_inst : tinv10 port map( A => n28, E => draw_write_port, Y => 
                           ramaddr(2));
   ramaddr_tri_3_inst : tinv10 port map( A => n26, E => draw_write_port, Y => 
                           ramaddr(3));
   ramaddr_tri_4_inst : tinv10 port map( A => n24, E => draw_write_port, Y => 
                           ramaddr(4));
   ramaddr_tri_5_inst : tinv10 port map( A => n22, E => draw_write_port, Y => 
                           ramaddr(5));
   ramaddr_tri_6_inst : tinv10 port map( A => n20, E => draw_write_port, Y => 
                           ramaddr(6));
   ramaddr_tri_7_inst : tinv10 port map( A => n18, E => n50, Y => ramaddr(7));
   ramaddr_tri_8_inst : tinv10 port map( A => n16, E => n50, Y => ramaddr(8));
   ramaddr_tri_9_inst : tinv10 port map( A => n14, E => n50, Y => ramaddr(9));
   ramaddr_tri_10_inst : tinv10 port map( A => n12, E => n50, Y => ramaddr(10))
                           ;
   ramaddr_tri_11_inst : tinv10 port map( A => n10, E => n50, Y => ramaddr(11))
                           ;
   ramaddr_tri_12_inst : tinv10 port map( A => n8, E => n50, Y => ramaddr(12));
   ramaddr_tri_13_inst : tinv10 port map( A => n6, E => n50, Y => ramaddr(13));
   ramaddr_tri_14_inst : tinv10 port map( A => n4, E => n50, Y => ramaddr(14));
   ramaddr_tri_15_inst : tinv10 port map( A => asb, E => n50, Y => ramaddr(15))
                           ;
   U28 : iv110 port map( A => n50, Y => n45);
   U29 : iv110 port map( A => n45, Y => draw_write_port);
   U30 : na310 port map( A => enable, B => busy, C => draw_can_access, Y => n47
                           );
   U31 : no210 port map( A => reset, B => n47, Y => done);
   U32 : iv110 port map( A => reset, Y => n48);
   U33 : na310 port map( A => draw_can_access, B => enable, C => n48, Y => n49)
                           ;
   U34 : no210 port map( A => busy, B => n49, Y => n50);
   U35 : iv110 port map( A => color(0), Y => n40);
   U36 : iv110 port map( A => color(1), Y => n38);
   U37 : iv110 port map( A => color(2), Y => n36);
   U38 : iv110 port map( A => color(3), Y => n34);
   U39 : iv110 port map( A => x(0), Y => n32);
   U40 : iv110 port map( A => x(1), Y => n30);
   U41 : iv110 port map( A => x(2), Y => n28);
   U42 : iv110 port map( A => x(3), Y => n26);
   U43 : iv110 port map( A => x(4), Y => n24);
   U44 : iv110 port map( A => x(5), Y => n22);
   U45 : iv110 port map( A => x(6), Y => n20);
   U46 : iv110 port map( A => x(7), Y => n18);
   U47 : iv110 port map( A => y(0), Y => n16);
   U48 : iv110 port map( A => y(1), Y => n14);
   U49 : iv110 port map( A => y(2), Y => n12);
   U50 : iv110 port map( A => y(3), Y => n10);
   U51 : iv110 port map( A => y(4), Y => n8);
   U52 : iv110 port map( A => y(5), Y => n6);
   U53 : iv110 port map( A => y(6), Y => n4);

end synthesised;



