library IEEE;
use IEEE.std_logic_1164.ALL;
use work.parameter_def.ALL;

architecture behaviour of decoder_tb is

	component decoder is
		port (
			--Clock/reset
			clk		: in	std_logic;						--Clock
			rst		: in	std_logic;						--Reset
			--SPI-interface interaction
			di		: in	std_logic_vector(InstrPacketSize-1 downto 0);	--Data In
			do		: out	std_logic_vector(InstrPacketSize-1 downto 0);	--Data Out
			dav		: in	std_logic;						--Data Available in SPI interface, commence data sampling
			rts		: out	std_logic;						--Ready To Send to SPI interface
			--Draw data
			x0		: buffer	std_logic_vector(SizeX-1 downto 0);	--Entity x0 coord
			x1		: buffer	std_logic_vector(SizeX-1 downto 0);	--Entity x1 coord
			y0		: buffer	std_logic_vector(SizeY-1 downto 0);	--Entity y0 coord
			y1		: buffer	std_logic_vector(SizeY-1 downto 0);	--Entity y1 coord
			col		: buffer	std_logic_vector(SizeColor-1 downto 0);	--Entity Color
			dwr		: in	std_logic;						--Draw Ready
			en		: out	std_logic_vector(NumDrawModules-1 downto 0); --Draw Module Enabled
			--Internal registers
			id		: out	std_logic;						--Register id/address
			val		: out	std_logic;						--Value
			set		: out	std_logic						--Set
		);
	end component;

signal clk : std_logic;
signal rst : std_logic;
signal dav : std_logic;
signal dwr : std_logic;
signal di : std_logic_vector(7 downto 0);

begin

	lbl1: decoder port map (clk=>clk, rst=>rst, di=>di, dav=>dav, dwr=>dwr);
	clk		<= '1' after 0 ns,
			'0' after 10 ns when clk /= '0' else '1' after 10 ns;
	rst 	<= '1' after 0 ns,
			'0' after 40 ns;
	di		<= "00111111" after 100 ns,
			"01010101" after 200 ns,
			"10101010" after 300 ns,
			"11111111" after 400 ns,
			"00000000" after 500 ns;
	dav		<= '0' after 0 ns,
			'0' after 100 ns when dav /= '0' else '1' after 100 ns;

	dwr		<= '0' after 0 ns;

end behaviour;















































