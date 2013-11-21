library IEEE;
use IEEE.std_logic_1164.ALL;

entity pixel is
   port(enable:in    std_logic;
        x0	  :in    std_logic_vector(7 downto 0);
		y0	  :in	 std_logic_vector(6 downto 0);
		color :in    std_logic_vector(3 downto 0);
        data  :out   std_logic_vector(3 downto 0);
		x	  :out   std_logic_vector(7 downto 0);
		y     :out   std_logic_vector(6 downto 0);
end pixel;