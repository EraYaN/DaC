LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.parameter_def.ALL;

entity spi_tb is
generic (
	CLOCKPERIOD : time := 160 ns;
	SPICLOCKPERIOD : time := 500 ns;
	HCLOCKPERIOD : time := 80 ns;
	HSPICLOCKPERIOD : time := 250 ns
);
end spi_tb;


