
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

architecture synthesised of ramword is

   component mu111
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component dfn10
      port( D, CK : in std_logic;  Q : out std_logic);
   end component;
   
   signal d_out_7_port, d_out_6_port, d_out_5_port, d_out_4_port, d_out_3_port,
      d_out_2_port, d_out_1_port, d_out_0_port, n18, n19, n20, n21, n22, n23, 
      n24, n25 : std_logic;

begin
   d_out <= ( d_out_7_port, d_out_6_port, d_out_5_port, d_out_4_port, 
      d_out_3_port, d_out_2_port, d_out_1_port, d_out_0_port );
   
   word_reg_7_inst : dfn10 port map( D => n25, CK => clk, Q => d_out_7_port);
   word_reg_6_inst : dfn10 port map( D => n24, CK => clk, Q => d_out_6_port);
   word_reg_5_inst : dfn10 port map( D => n23, CK => clk, Q => d_out_5_port);
   word_reg_4_inst : dfn10 port map( D => n22, CK => clk, Q => d_out_4_port);
   word_reg_3_inst : dfn10 port map( D => n21, CK => clk, Q => d_out_3_port);
   word_reg_2_inst : dfn10 port map( D => n20, CK => clk, Q => d_out_2_port);
   word_reg_1_inst : dfn10 port map( D => n19, CK => clk, Q => d_out_1_port);
   word_reg_0_inst : dfn10 port map( D => n18, CK => clk, Q => d_out_0_port);
   U27 : mu111 port map( A => d_out_7_port, B => d_in(7), S => set, Y => n25);
   U28 : mu111 port map( A => d_out_6_port, B => d_in(6), S => set, Y => n24);
   U29 : mu111 port map( A => d_out_5_port, B => d_in(5), S => set, Y => n23);
   U30 : mu111 port map( A => d_out_4_port, B => d_in(4), S => set, Y => n22);
   U31 : mu111 port map( A => d_out_3_port, B => d_in(3), S => set, Y => n21);
   U32 : mu111 port map( A => d_out_2_port, B => d_in(2), S => set, Y => n20);
   U33 : mu111 port map( A => d_out_1_port, B => d_in(1), S => set, Y => n19);
   U34 : mu111 port map( A => d_out_0_port, B => d_in(0), S => set, Y => n18);

end synthesised;



