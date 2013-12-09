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
			id			: buffer	std_logic_vector(SizeSpriteID-1 downto 0);		--Sprite ID
			en			: buffer	std_logic_vector(NumDrawModules-1 downto 0);	--Draw Module Enabled
			--Internal registers
			asb			: buffer	std_logic;	--Currently active screen buffer
			--Direct CPU interaction
			int_ready	: buffer	std_logic;	--Instruction processed signal
			--RAM Controller interaction
			decoder_can_access	: in std_logic;		--Can access RAM?
			decoder_write		: out std_logic;	--Intention to write to RAM
			decoder_claim		: out std_logic;	
			is_init				: buffer std_logic;		--Initializing?
			--RAM interaction
			ramaddr     :out   std_logic_vector(SizeRAMAddr-1 downto 0);
			ramdata     :out   std_logic_vector(SizeRAMData-1 downto 0)
		);
	end component;

signal clk					: std_logic;
signal reset				: std_logic;
signal spi_data_rx			: std_logic_vector(SizeSPIData-1 downto 0);
signal spi_data_available	: std_logic;
signal draw_ready			: std_logic;
signal x					: std_logic_vector(SizeX-1 downto 0);
signal w					: std_logic_vector(SizeX-1 downto 0);
signal y					: std_logic_vector(SizeY-1 downto 0);
signal h					: std_logic_vector(SizeY-1 downto 0);
signal color				: std_logic_vector(SizeColor-1 downto 0);
signal id					: std_logic_vector(SizeSpriteID-1 downto 0);
signal en					: std_logic_vector(NumDrawModules-1 downto 0);
signal asb					: std_logic;
signal int_ready			: std_logic;
signal decoder_can_access	: std_logic;
signal decoder_write		: std_logic;
signal decoder_claim		: std_logic;	
signal is_init				: std_logic;
signal ramaddr				: std_logic_vector(SizeRAMAddr-1 downto 0);
signal ramdata				: std_logic_vector(SizeRAMData-1 downto 0);

signal enable_spi			: std_logic;

begin

	decoder1: decoder 
		port map (
			clk=>clk,
			reset=>reset,
			spi_data_rx=>spi_data_rx, 
			spi_data_available=>spi_data_available, 
			draw_ready=>draw_ready,
			x=>x,
			w=>w,
			y=>y,
			h=>h,
			color=>color,
			id=>id,
			en=>en,
			asb=>asb,
			int_ready=>int_ready,
			decoder_can_access=>decoder_can_access,
			decoder_write=>decoder_write,
			decoder_claim=>decoder_claim,
			is_init=>is_init,
			ramaddr=>ramaddr,
			ramdata=>ramdata
		);

	clk		<= '1' after 0 ns,
			'0' after 80 ns when clk /= '0' else '1' after 80 ns;
	spi_data_available	<= '0' after 0 ns,
							'1' after 320 ns when (spi_data_available /= '1' and enable_spi = '1') else '0' after 160 ns;
	process
	begin
		reset <= '1';
		enable_spi <= '1';
		spi_data_rx <= "00010000"; --perform fill
		draw_ready <= '0';
		decoder_can_access <= '1' after 0 ns;
		wait until rising_edge(clk);
		wait until rising_edge(clk);
		reset <= '0';

		wait until rising_edge(spi_data_available);
		spi_data_rx <= "00111111"; --draw rect (011), color white (111)
		wait until rising_edge(spi_data_available);
		spi_data_rx <= "01010101"; --x
		wait until rising_edge(spi_data_available);
		spi_data_rx <= "10101010"; --y
		wait until rising_edge(spi_data_available);
		spi_data_rx <= "11111111"; --w
		wait until rising_edge(spi_data_available);
		spi_data_rx <= "11001100"; --h
		enable_spi <= '0';

		wait for 960 ns;

		wait until rising_edge(clk);
		draw_ready <= '1';
		wait until rising_edge(clk);
		draw_ready <= '0';

		wait for 960 ns;

		enable_spi <= '1';
		wait until rising_edge(spi_data_available);
		spi_data_rx <= "00000000"; --switch screen buffer
		enable_spi <= '0';

		wait for 960 ns;


		--for testing draw-like instructions
		-- spi_data_rx		<= "00000000" after 0 ns, 
		-- 		 after 80 ns,
		-- 		"01010101" after 180 ns,
		-- 		"10101010" after 280 ns,
		-- 		"11111111" after 380 ns,
		-- 		"11001100" after 480 ns,
		-- 		"00111001" after 580 ns;
				-- "10101010" after 730 ns,
				-- "01010101" after 830 ns,
				-- "00000000" after 930 ns,
				-- "11111111" after 1030 ns,
				-- "00000000" after 1270 ns;
		--for testing sprite loading
		-- spi_data_rx		<= "01110000" after 0 ns, --load sprite
			-- 	"00100001" after 130 ns, --data length of 8, address(16 downto 14) = 01
			-- 	"01010101" after 230 ns, --address(13 downto 6) = 01010101
			-- 	"10100101" after 330 ns, --data 0
			-- 	"11110000" after 430 ns, --data 1
			-- 	"00001111" after 530 ns, --data 2
			-- 	"00110000" after 630 ns; --data 3
		
	end process;
end behaviour;