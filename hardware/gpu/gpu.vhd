library ieee;
use ieee.std_logic_1164.all;
use work.parameter_def.all;

entity gpu is
	port(
		clk : in std_logic;
		reset : in std_logic;
		spi_clk : in std_logic;
		spi_mosi : in std_logic;
		ramdata : inout std_logic_vector(SizeRAMData-1 downto 0);
		ramaddr : inout std_logic_vector(SizeRAMAddr-1 downto 0);
		ramwe_n : out std_logic;
		vgahsync : out std_logic;
		vgavsync : out std_logic;
		vgacolor : out std_logic_vector(SizeColor-1 downto 0)
	);
end gpu;
