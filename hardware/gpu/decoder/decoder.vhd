library IEEE;
use IEEE.std_logic_1164.ALL;
use work.parameter_def.ALL;

entity decoder is
	port (
		--Clock/reset
		clk		: in	std_logic;						--Clock
		reset		: in	std_logic;						--Reset
		--SPI-interface interaction
		di		: in	std_logic_vector(InstrPacketSize-1 downto 0);	--Data In
		--do		: out	std_logic_vector(InstrPacketSize-1 downto 0);	--Data Out
		dav		: in	std_logic;						--Data Available in SPI interface, commence data sampling
		--rts		: out	std_logic;						--Ready To Send to SPI interface
		--Draw data
		x0		: buffer	std_logic_vector(SizeX-1 downto 0);	--Entity x0 coord
		x1		: buffer	std_logic_vector(SizeX-1 downto 0);	--Entity x1 coord
		y0		: buffer	std_logic_vector(SizeY-1 downto 0);	--Entity y0 coord
		y1		: buffer	std_logic_vector(SizeY-1 downto 0);	--Entity y1 coord
		color		: buffer	std_logic_vector(SizeColor-1 downto 0)	--Entity Color
		--dwr		: in	std_logic;						--Draw Ready
		en		: buffer	std_logic_vector(NumDrawModules-1 downto 0); --Draw Module Enabled
		--Internal registers
		--id		: out	std_logic;						--Register id/address
		--val		: out	std_logic;						--Value
		--set		: out	std_logic						--Set
	);
end entity decoder;