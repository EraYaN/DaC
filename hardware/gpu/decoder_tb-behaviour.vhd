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
			x			: buffer	std_logic_vector(SizeX-1 downto 0);				--Entity x coord
			w			: buffer	std_logic_vector(SizeX-1 downto 0);				--Entity width
			y			: buffer	std_logic_vector(SizeY-1 downto 0);				--Entity y coord
			h			: buffer	std_logic_vector(SizeY-1 downto 0);				--Entity height
			color		: buffer	std_logic_vector(SizeColor-1 downto 0);			--Entity Color
			en			: out	std_logic_vector(NumDrawModules-1 downto 0);	--Draw Module Enabled
			--Internal registers
			asb			: buffer	std_logic;	--Currently active screen buffer
			--Direct CPU interaction
			int_ready	: out	std_logic;	--Instruction processed signal
			--RAM Controller interaction
			decoder_can_access	: in std_logic;		--Can access RAM?
			decoder_write		: buffer std_logic;	--Intention to write to RAM
			is_init				: out std_logic;		--Initializing?
			--RAM interaction
			ramaddr     :buffer   std_logic_vector(SizeRAMAddr-1 downto 0);
			ramdata     :buffer   std_logic_vector(SizeRAMData-1 downto 0)
		);
	end component;

signal clk : std_logic;
signal reset : std_logic;
signal spi_data_available : std_logic;
signal draw_ready : std_logic;
signal spi_data_rx : std_logic_vector(7 downto 0);
signal decoder_can_access : std_logic;

begin

	decoder1: decoder port map (clk=>clk, reset=>reset, spi_data_rx=>spi_data_rx, spi_data_available=>spi_data_available, draw_ready=>draw_ready, decoder_can_access=>decoder_can_access);
	clk		<= '1' after 0 ns,
			'0' after 10 ns when clk /= '0' else '1' after 10 ns;
	reset 	<= '1' after 0 ns,
			'0' after 40 ns;
	--for testing draw-like instructions
	-- spi_data_rx		<= "00000000" after 0 ns, 
	-- 		"00111111" after 130 ns,
	-- 		"01010101" after 230 ns,
	-- 		"10101010" after 330 ns,
	-- 		"11111111" after 430 ns,
	-- 		"00000000" after 530 ns,
	-- 		"00110000" after 630 ns,
	-- 		"10101010" after 730 ns,
	-- 		"01010101" after 830 ns,
	-- 		"00000000" after 930 ns,
	-- 		"11111111" after 1030 ns,
	-- 		"00000000" after 1270 ns;
	--for testing sprite loading
		spi_data_rx		<= "01110000" after 0 ns, --load sprite
			"00100001" after 130 ns, --data length of 8, address(16 downto 14) = 01
			"01010101" after 230 ns, --address(13 downto 6) = 01010101
			"10100101" after 330 ns, --data 0
			"11110000" after 430 ns, --data 1
			"00001111" after 530 ns, --data 2
			"00110000" after 630 ns; --data 3
	spi_data_available		<= '0' after 0 ns,
			'1' after 80 ns,
			'0' after 100 ns,
			'1' after 180 ns,
			'0' after 200 ns,
			'1' after 280 ns,
			'0' after 300 ns,
			'1' after 380 ns,
			'0' after 400 ns,
			'1' after 480 ns,
			'0' after 500 ns,
			'1' after 580 ns,
			'0' after 600 ns,
			'1' after 680 ns,
			'0' after 700 ns,
			'1' after 780 ns,
			'0' after 800 ns,
			'1' after 880 ns,
			'0' after 900 ns,
			'1' after 980 ns,
			'0' after 1000 ns,
			'1' after 1080 ns,
			'0' after 1100 ns,
			'1' after 1180 ns,
			'0' after 1200 ns;
	draw_ready <= '0' after 0 ns,
					'1' after 1200 ns,
					'0' after 1220 ns;
	decoder_can_access <= '1' after 0 ns;
end behaviour;