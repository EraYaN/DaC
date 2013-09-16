library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;
use work.ramlib.all;

entity ram is
   port(clk  :in    std_logic;
        reset:in    std_logic;
	enabled: in std_logic;
        a    :in    unsigned(3 downto 0);
        d_in :in    word;
	write:in    std_logic;
	read :in    std_logic;
	d_out:out   word;
        ready:out   std_logic);
end ram;








