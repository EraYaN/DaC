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
			draw_ready	: in		std_logic;
			x			: buffer	std_logic_vector(SizeX-1 downto 0);				--Entity x coord
			w			: buffer	std_logic_vector(SizeX-1 downto 0);				--Entity width
			y			: buffer	std_logic_vector(SizeY-1 downto 0);				--Entity y coord
			h			: buffer	std_logic_vector(SizeY-1 downto 0);				--Entity height
			color		: buffer	std_logic_vector(SizeColor-1 downto 0);			--Entity Color
			en			: buffer	std_logic_vector(NumDrawModules-1 downto 0);	--Draw Module Enabled
			--Internal registers (screen buffer switching)
			reg_id		: out		std_logic;	--Register id/address
			reg_value	: out		std_logic;	--Value
			reg_set		: out		std_logic;	--Set
			asb			: in		std_logic	--Currently active screen buffer
		);
	end component;

signal clk : std_logic;
signal reset : std_logic;
signal asb : std_logic;
signal spi_data_available : std_logic;
signal draw_ready : std_logic;
signal spi_data_rx : std_logic_vector(7 downto 0);

begin

	lbl1: decoder port map (clk=>clk, reset=>reset, spi_data_rx=>spi_data_rx, spi_data_available=>spi_data_available, draw_ready=>draw_ready, asb=>asb);
	clk		<= '1' after 0 ns,
			'0' after 10 ns when clk /= '0' else '1' after 10 ns;
	reset 	<= '1' after 0 ns,
			'0' after 40 ns;
	spi_data_rx		<= "00010000" after 0 ns,
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
			'0' after 1130 ns;
	draw_ready <= '0' after 0 ns,
					'1' after 1300 ns;
	asb <= '0' after 0 ns;

end behaviour;