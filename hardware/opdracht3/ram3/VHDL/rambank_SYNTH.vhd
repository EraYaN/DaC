
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

architecture synthesised of rambank is

   component ramword
      port( clk : in std_logic;  d_in : in std_logic_vector (7 downto 0);  
            d_out : out std_logic_vector (7 downto 0);  set : in std_logic);
   end component;

begin
   
   REGX_3 : ramword port map( clk => clk, d_in(7) => in_lines(31), d_in(6) => 
                           in_lines(30), d_in(5) => in_lines(29), d_in(4) => 
                           in_lines(28), d_in(3) => in_lines(27), d_in(2) => 
                           in_lines(26), d_in(1) => in_lines(25), d_in(0) => 
                           in_lines(24), d_out(7) => out_lines(31), d_out(6) =>
                           out_lines(30), d_out(5) => out_lines(29), d_out(4) 
                           => out_lines(28), d_out(3) => out_lines(27), 
                           d_out(2) => out_lines(26), d_out(1) => out_lines(25)
                           , d_out(0) => out_lines(24), set => write);
   REGX_2 : ramword port map( clk => clk, d_in(7) => in_lines(23), d_in(6) => 
                           in_lines(22), d_in(5) => in_lines(21), d_in(4) => 
                           in_lines(20), d_in(3) => in_lines(19), d_in(2) => 
                           in_lines(18), d_in(1) => in_lines(17), d_in(0) => 
                           in_lines(16), d_out(7) => out_lines(23), d_out(6) =>
                           out_lines(22), d_out(5) => out_lines(21), d_out(4) 
                           => out_lines(20), d_out(3) => out_lines(19), 
                           d_out(2) => out_lines(18), d_out(1) => out_lines(17)
                           , d_out(0) => out_lines(16), set => write);
   REGX_1 : ramword port map( clk => clk, d_in(7) => in_lines(15), d_in(6) => 
                           in_lines(14), d_in(5) => in_lines(13), d_in(4) => 
                           in_lines(12), d_in(3) => in_lines(11), d_in(2) => 
                           in_lines(10), d_in(1) => in_lines(9), d_in(0) => 
                           in_lines(8), d_out(7) => out_lines(15), d_out(6) => 
                           out_lines(14), d_out(5) => out_lines(13), d_out(4) 
                           => out_lines(12), d_out(3) => out_lines(11), 
                           d_out(2) => out_lines(10), d_out(1) => out_lines(9),
                           d_out(0) => out_lines(8), set => write);
   REGX_0 : ramword port map( clk => clk, d_in(7) => in_lines(7), d_in(6) => 
                           in_lines(6), d_in(5) => in_lines(5), d_in(4) => 
                           in_lines(4), d_in(3) => in_lines(3), d_in(2) => 
                           in_lines(2), d_in(1) => in_lines(1), d_in(0) => 
                           in_lines(0), d_out(7) => out_lines(7), d_out(6) => 
                           out_lines(6), d_out(5) => out_lines(5), d_out(4) => 
                           out_lines(4), d_out(3) => out_lines(3), d_out(2) => 
                           out_lines(2), d_out(1) => out_lines(1), d_out(0) => 
                           out_lines(0), set => write);

end synthesised;



