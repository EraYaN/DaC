
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

architecture synthesised of rambank is

   component ramword
      port( clk : in std_logic;  d_in : in std_logic_vector (7 downto 0);  
            d_out : out std_logic_vector (7 downto 0);  set : in std_logic);
   end component;

begin
   
   REGX_7 : ramword port map( clk => clk, d_in(7) => in_lines(63), d_in(6) => 
                           in_lines(62), d_in(5) => in_lines(61), d_in(4) => 
                           in_lines(60), d_in(3) => in_lines(59), d_in(2) => 
                           in_lines(58), d_in(1) => in_lines(57), d_in(0) => 
                           in_lines(56), d_out(7) => out_lines(63), d_out(6) =>
                           out_lines(62), d_out(5) => out_lines(61), d_out(4) 
                           => out_lines(60), d_out(3) => out_lines(59), 
                           d_out(2) => out_lines(58), d_out(1) => out_lines(57)
                           , d_out(0) => out_lines(56), set => write(7));
   REGX_6 : ramword port map( clk => clk, d_in(7) => in_lines(55), d_in(6) => 
                           in_lines(54), d_in(5) => in_lines(53), d_in(4) => 
                           in_lines(52), d_in(3) => in_lines(51), d_in(2) => 
                           in_lines(50), d_in(1) => in_lines(49), d_in(0) => 
                           in_lines(48), d_out(7) => out_lines(55), d_out(6) =>
                           out_lines(54), d_out(5) => out_lines(53), d_out(4) 
                           => out_lines(52), d_out(3) => out_lines(51), 
                           d_out(2) => out_lines(50), d_out(1) => out_lines(49)
                           , d_out(0) => out_lines(48), set => write(6));
   REGX_5 : ramword port map( clk => clk, d_in(7) => in_lines(47), d_in(6) => 
                           in_lines(46), d_in(5) => in_lines(45), d_in(4) => 
                           in_lines(44), d_in(3) => in_lines(43), d_in(2) => 
                           in_lines(42), d_in(1) => in_lines(41), d_in(0) => 
                           in_lines(40), d_out(7) => out_lines(47), d_out(6) =>
                           out_lines(46), d_out(5) => out_lines(45), d_out(4) 
                           => out_lines(44), d_out(3) => out_lines(43), 
                           d_out(2) => out_lines(42), d_out(1) => out_lines(41)
                           , d_out(0) => out_lines(40), set => write(5));
   REGX_4 : ramword port map( clk => clk, d_in(7) => in_lines(39), d_in(6) => 
                           in_lines(38), d_in(5) => in_lines(37), d_in(4) => 
                           in_lines(36), d_in(3) => in_lines(35), d_in(2) => 
                           in_lines(34), d_in(1) => in_lines(33), d_in(0) => 
                           in_lines(32), d_out(7) => out_lines(39), d_out(6) =>
                           out_lines(38), d_out(5) => out_lines(37), d_out(4) 
                           => out_lines(36), d_out(3) => out_lines(35), 
                           d_out(2) => out_lines(34), d_out(1) => out_lines(33)
                           , d_out(0) => out_lines(32), set => write(4));
   REGX_3 : ramword port map( clk => clk, d_in(7) => in_lines(31), d_in(6) => 
                           in_lines(30), d_in(5) => in_lines(29), d_in(4) => 
                           in_lines(28), d_in(3) => in_lines(27), d_in(2) => 
                           in_lines(26), d_in(1) => in_lines(25), d_in(0) => 
                           in_lines(24), d_out(7) => out_lines(31), d_out(6) =>
                           out_lines(30), d_out(5) => out_lines(29), d_out(4) 
                           => out_lines(28), d_out(3) => out_lines(27), 
                           d_out(2) => out_lines(26), d_out(1) => out_lines(25)
                           , d_out(0) => out_lines(24), set => write(3));
   REGX_2 : ramword port map( clk => clk, d_in(7) => in_lines(23), d_in(6) => 
                           in_lines(22), d_in(5) => in_lines(21), d_in(4) => 
                           in_lines(20), d_in(3) => in_lines(19), d_in(2) => 
                           in_lines(18), d_in(1) => in_lines(17), d_in(0) => 
                           in_lines(16), d_out(7) => out_lines(23), d_out(6) =>
                           out_lines(22), d_out(5) => out_lines(21), d_out(4) 
                           => out_lines(20), d_out(3) => out_lines(19), 
                           d_out(2) => out_lines(18), d_out(1) => out_lines(17)
                           , d_out(0) => out_lines(16), set => write(2));
   REGX_1 : ramword port map( clk => clk, d_in(7) => in_lines(15), d_in(6) => 
                           in_lines(14), d_in(5) => in_lines(13), d_in(4) => 
                           in_lines(12), d_in(3) => in_lines(11), d_in(2) => 
                           in_lines(10), d_in(1) => in_lines(9), d_in(0) => 
                           in_lines(8), d_out(7) => out_lines(15), d_out(6) => 
                           out_lines(14), d_out(5) => out_lines(13), d_out(4) 
                           => out_lines(12), d_out(3) => out_lines(11), 
                           d_out(2) => out_lines(10), d_out(1) => out_lines(9),
                           d_out(0) => out_lines(8), set => write(1));
   REGX_0 : ramword port map( clk => clk, d_in(7) => in_lines(7), d_in(6) => 
                           in_lines(6), d_in(5) => in_lines(5), d_in(4) => 
                           in_lines(4), d_in(3) => in_lines(3), d_in(2) => 
                           in_lines(2), d_in(1) => in_lines(1), d_in(0) => 
                           in_lines(0), d_out(7) => out_lines(7), d_out(6) => 
                           out_lines(6), d_out(5) => out_lines(5), d_out(4) => 
                           out_lines(4), d_out(3) => out_lines(3), d_out(2) => 
                           out_lines(2), d_out(1) => out_lines(1), d_out(0) => 
                           out_lines(0), set => write(0));

end synthesised;



