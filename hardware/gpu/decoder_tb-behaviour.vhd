library IEEE;
use IEEE.std_logic_1164.ALL;
use work.parameter_def.ALL;

architecture behaviour of decoder_tb is

	component decoder is
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
			--RAM Controller interaction
			decoder_can_access	: in std_logic;		--Can access RAM?
			decoder_write		: out std_logic;	--Intention to write to RAM
			decoder_claim		: out std_logic;	--Claim RAM
			is_init				: out std_logic		--Initializing?
		);
	end component;

signal clk : std_logic;
signal reset : std_logic;
signal spi_data_available : std_logic;
signal draw_ready : std_logic;
signal spi_data_rx : std_logic_vector(7 downto 0);
signal decoder_can_access : std_logic;

begin

	lbl1: decoder port map (clk=>clk, reset=>reset, spi_data_rx=>spi_data_rx, spi_data_available=>spi_data_available, draw_ready=>draw_ready, decoder_can_access=>decoder_can_access);
	clk		<= '1' after 0 ns,
			'0' after 10 ns when clk /= '0' else '1' after 10 ns;
	reset 	<= '1' after 0 ns,
			'0' after 40 ns;
	spi_data_rx		<= "00000000" after 0 ns,
			"00111111" after 130 ns,
			"01010101" after 230 ns,
			"10101010" after 330 ns,
			"11111111" after 430 ns,
			"00000000" after 530 ns,
			"00110000" after 630 ns,
			"10101010" after 730 ns,
			"01010101" after 830 ns,
			"00000000" after 930 ns,
			"11111111" after 1030 ns,
			"00000000" after 1270 ns;
	spi_data_available		<= '0' after 0 ns,
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
			'0' after 1130 ns,
			'1' after 1310 ns,
			'0' after 1370 ns;
	draw_ready <= '0' after 0 ns,
					'1' after 1200 ns,
					'0' after 1220 ns;
	decoder_can_access <= '0' after 0 ns;
end behaviour;