library IEEE;
use IEEE.std_logic_1164.all;
use work.parameter_def.all;

entity statereg is 
	port
	(
		clk :in std_logic;
		rst :in std_logic;
		s   :in std_logic;
		di  :in std_logic;
		asb :out std_logic
	);
end statereg;