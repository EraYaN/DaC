library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;
library work;
use work.ramlib.all;

entity ram is
   port(clk  :in    std_logic;
        reset:in    std_logic;
	a    :in    unsigned(ADRESSLINES-1 downto 0);
        d_in :in    word;
	write:in    std_logic;
	read :in    std_logic;
	d_out:out   word
	);
end ram;














