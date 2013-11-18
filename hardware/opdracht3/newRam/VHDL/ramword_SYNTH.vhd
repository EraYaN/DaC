
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

architecture synthesised of ramword is

   component iv110
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component mu111
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component tinv10
      port( A, E : in std_logic;  Y : out std_logic);
   end component;
   
   component dfn10
      port( D, CK : in std_logic;  Q : out std_logic);
   end component;
   
   signal word_7_port, word_6_port, word_5_port, word_4_port, word_3_port, 
      word_2_port, word_1_port, word_0_port, n18, n19, n20, n21, n22, n23, n24,
      n25, n26, n27, n28, n29, n30, n31, n32, n33 : std_logic;

begin
   
   word_reg_7_inst : dfn10 port map( D => n33, CK => clk, Q => word_7_port);
   word_reg_6_inst : dfn10 port map( D => n32, CK => clk, Q => word_6_port);
   word_reg_5_inst : dfn10 port map( D => n31, CK => clk, Q => word_5_port);
   word_reg_4_inst : dfn10 port map( D => n30, CK => clk, Q => word_4_port);
   word_reg_3_inst : dfn10 port map( D => n29, CK => clk, Q => word_3_port);
   word_reg_2_inst : dfn10 port map( D => n28, CK => clk, Q => word_2_port);
   word_reg_1_inst : dfn10 port map( D => n27, CK => clk, Q => word_1_port);
   word_reg_0_inst : dfn10 port map( D => n26, CK => clk, Q => word_0_port);
   d_out_tri_0_inst : tinv10 port map( A => n25, E => drive, Y => d_out(0));
   d_out_tri_1_inst : tinv10 port map( A => n24, E => drive, Y => d_out(1));
   d_out_tri_2_inst : tinv10 port map( A => n23, E => drive, Y => d_out(2));
   d_out_tri_3_inst : tinv10 port map( A => n22, E => drive, Y => d_out(3));
   d_out_tri_4_inst : tinv10 port map( A => n21, E => drive, Y => d_out(4));
   d_out_tri_5_inst : tinv10 port map( A => n20, E => drive, Y => d_out(5));
   d_out_tri_6_inst : tinv10 port map( A => n19, E => drive, Y => d_out(6));
   d_out_tri_7_inst : tinv10 port map( A => n18, E => drive, Y => d_out(7));
   U35 : mu111 port map( A => word_7_port, B => d_in(7), S => set, Y => n33);
   U36 : mu111 port map( A => word_6_port, B => d_in(6), S => set, Y => n32);
   U37 : mu111 port map( A => word_5_port, B => d_in(5), S => set, Y => n31);
   U38 : mu111 port map( A => word_4_port, B => d_in(4), S => set, Y => n30);
   U39 : mu111 port map( A => word_3_port, B => d_in(3), S => set, Y => n29);
   U40 : mu111 port map( A => word_2_port, B => d_in(2), S => set, Y => n28);
   U41 : mu111 port map( A => word_1_port, B => d_in(1), S => set, Y => n27);
   U42 : mu111 port map( A => word_0_port, B => d_in(0), S => set, Y => n26);
   U43 : iv110 port map( A => word_0_port, Y => n25);
   U44 : iv110 port map( A => word_1_port, Y => n24);
   U45 : iv110 port map( A => word_2_port, Y => n23);
   U46 : iv110 port map( A => word_3_port, Y => n22);
   U47 : iv110 port map( A => word_4_port, Y => n21);
   U48 : iv110 port map( A => word_5_port, Y => n20);
   U49 : iv110 port map( A => word_6_port, Y => n19);
   U50 : iv110 port map( A => word_7_port, Y => n18);

end synthesised;



