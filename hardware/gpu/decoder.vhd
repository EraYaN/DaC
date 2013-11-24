library IEEE;
use IEEE.std_logic_1164.all;
use work.parameter_def.all;

entity decoder is
	port (
		--Clock/reset
		clk		: in	std_logic;	--Clock
		reset	: in	std_logic;	--Reset
		--SPI-interface interaction
		spi_data_rx			: in	std_logic_vector(SizeSPIData-1 downto 0);	--Data In
		spi_data_available	: in	std_logic;									--Data Available in SPI interface, commence data sampling
		--Draw data
		draw_ready	: in	std_logic;
		x			: out	std_logic_vector(SizeX-1 downto 0);				--Entity x coord
		w			: out	std_logic_vector(SizeX-1 downto 0);				--Entity width
		y			: out	std_logic_vector(SizeY-1 downto 0);				--Entity y coord
		h			: out	std_logic_vector(SizeY-1 downto 0);				--Entity height
		color		: out	std_logic_vector(SizeColor-1 downto 0);			--Entity Color
		en			: out	std_logic_vector(NumDrawModules-1 downto 0);	--Draw Module Enabled
		--Internal registers
		asb			: buffer	std_logic;	--Currently active screen buffer
		--Direct CPU interaction
		int_ready	: out	std_logic	--Instruction processed signal
	);
end entity decoder;