library IEEE;
use IEEE.std_logic_1164.ALL;
use work.parameter_def.ALL;

architecture behaviour of decoder_tb is

	component decoder is
		port (
			--Clock/reset
			clk		: in	std_logic;						--Clock
			reset		: in	std_logic;						--Reset
			--SPI-interface interaction
			di		: in	std_logic_vector(InstrPacketSize-1 downto 0);	--Data In
			do		: out	std_logic_vector(InstrPacketSize-1 downto 0);	--Data Out
			dav		: in	std_logic;						--Data Available in SPI interface, commence data sampling
			--rts		: out	std_logic;						--Ready To Send to SPI interface
			--Draw data
			x0		: buffer	std_logic_vector(SizeX-1 downto 0);	--Entity x0 coord
			x1		: buffer	std_logic_vector(SizeX-1 downto 0);	--Entity x1 coord
			y0		: buffer	std_logic_vector(SizeY-1 downto 0);	--Entity y0 coord
			y1		: buffer	std_logic_vector(SizeY-1 downto 0);	--Entity y1 coord
			color		: buffer	std_logic_vector(SizeColor-1 downto 0);	--Entity Color
			draw_rdy		: in	std_logic;						--Draw Ready
			en		: buffer	std_logic_vector(NumDrawModules-1 downto 0); --Draw Module Enabled
			--Internal registers
			reg_id		: out	std_logic;						--Register id/address
			reg_value		: inout	std_logic;						--Value
			reg_set		: out	std_logic						--Set
		);
	end component;

signal clk : std_logic;
signal reset : std_logic;
signal dav : std_logic;
signal draw_rdy : std_logic;
signal di : std_logic_vector(7 downto 0);

begin

	lbl1: decoder port map (clk=>clk, reset=>reset, di=>di, dav=>dav, draw_rdy=>draw_rdy);
	clk		<= '1' after 0 ns,
			'0' after 10 ns when clk /= '0' else '1' after 10 ns;
	reset 	<= '1' after 0 ns,
			'0' after 40 ns;
	di		<= "00010000" after 0 ns,
			"00111111" after 130 ns,
			"01010101" after 230 ns,
			"10101010" after 330 ns,
			"11111111" after 430 ns,
			"00000000" after 530 ns,
			"00110000" after 630 ns,
			"10101010" after 730 ns,
			"01010101" after 830 ns,
			"00000000" after 930 ns,
			"11111111" after 1030 ns;
	dav		<= '0' after 0 ns,
			'1' after 70 ns,
			'0' after 130 ns,
			'1' after 170 ns,
			'0' after 230 ns,
			'1' after 270 ns,
			'0' after 330 ns,
			'1' after 370 ns,
			'0' after 430 ns,
			'1' after 470 ns,
			'0' after 530 ns,
			'1' after 570 ns,
			'0' after 630 ns,
			'1' after 670 ns,
			'0' after 730 ns,
			'1' after 770 ns,
			'0' after 830 ns,
			'1' after 870 ns,
			'0' after 930 ns,
			'1' after 970 ns,
			'0' after 1030 ns,
			'1' after 1070 ns,
			'0' after 1130 ns;
	draw_rdy		<= '0' after 0 ns,
					'1' after 1300 ns,
					'0' after 1320 ns;

end behaviour;