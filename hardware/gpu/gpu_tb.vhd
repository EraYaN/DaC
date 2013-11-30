LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.parameter_def.ALL;

entity gpu_tb is
generic (
	CLOCKPERIOD : time := 160 ns;
	SPICLOCKPERIOD : time := 500 ns;
	HCLOCKPERIOD : time := 80 ns;
	HSPICLOCKPERIOD : time := 250 ns
);
end gpu_tb;

architecture behaviour of gpu_tb is
component gpu is
	port(
		clk : in std_logic;
		reset : in std_logic;
		spi_clk : in std_logic;
		spi_mosi : in std_logic;		
		int_ready : out std_logic;
		ramdata : inout std_logic_vector(SizeRAMData-1 downto 0);
		ramaddr : inout std_logic_vector(SizeRAMAddr-1 downto 0);
		ramwe_n : out std_logic;
		vgahsync : out std_logic;
		vgavsync : out std_logic;
		vgacolor : out std_logic_vector(SizeColor-1 downto 0)
	);
end component;

component sram IS
	port (      
		nCE: IN std_logic;  -- low-active Chip-Enable of the SRAM device; defaults to '1' (inactive)
		nOE: IN std_logic;  -- low-active Output-Enable of the SRAM device; defaults to '1' (inactive)
		nWE: IN std_logic;  -- low-active Write-Enable of the SRAM device; defaults to '1' (inactive)
		A:   IN std_logic_vector(SizeRAMAddr-1 downto 0); -- address bus of the SRAM device
		D:   INOUT std_logic_vector(SizeRAMData-1 downto 0);  -- bidirectional data bus to/from the SRAM device
		CE2: IN std_logic;  -- high-active Chip-Enable of the SRAM device; defaults to '1'  (active) 
		download: IN boolean;
		dump: IN boolean;
		dump_start: IN natural; 
		dump_end: IN natural
	);
end component;

signal reset : std_logic;
signal clk,spiclk,spiclk_en,write_enable_n,write_enable :std_logic;
signal spi_clk :  std_logic;
signal spi_mosi : std_logic;
signal ramaddr : std_logic_vector(SizeRAMAddr-1 downto 0);
signal ramdata : std_logic_vector(SizeRAMData-1 downto 0);
signal download, dump :boolean := FALSE;
signal int_ready:std_logic;
signal spibyte : integer :=0;

procedure sendByte( byte : in std_logic_vector(SizeSPIData-1 downto 0);
	signal mosi : out std_logic;
	signal spiclk_en : out std_logic;
	signal spibyte : inout integer) is
	begin	
		spibyte<=spibyte+1;
		spiclk_en <= '1';
		for J in byte'range loop
			wait until rising_edge(spiclk);
			mosi <= byte(J);
			
		end loop; -- works for any size byte
		wait until falling_edge(spiclk);
		spiclk_en <= '0';
		mosi <= '1';
end sendByte;

begin
write_enable<= NOT write_enable_n;
gpu1: gpu port map (
	clk=>clk,
	reset=>reset,
	spi_clk=>spi_clk,
	spi_mosi=>spi_mosi,
	int_ready=>int_ready,
	ramaddr=>ramaddr,
	ramdata=>ramdata,
	ramwe_n=>write_enable_n
);
	
sr: sram port map (
	nCE=>reset,
	nOE=>write_enable,
	nWE=>write_enable_n,
	A=>ramaddr,
	D=>ramdata,
	CE2=>'1',
	download => download,
	dump=>dump,
	dump_start=>0,
	dump_end=>2 ** SizeRAMAddr -1
);
	-- clock period: 1/6250000 = 160 ns
	clk		<= '1' after 0 ns,
			'0' after HCLOCKPERIOD when clk /= '0' else '1' after HCLOCKPERIOD;
	spiclk		<= '1' after 0 ns,
			'0' after HSPICLOCKPERIOD when spiclk /= '0' else '1' after HSPICLOCKPERIOD;
	
	spi_clk <= spiclk and spiclk_en;
		
	process
	begin
		--setup
		reset <= '1';
		spi_mosi <= '1';
		spiclk_en <= '0';
		download <= FALSE;
		wait until rising_edge(clk);
		wait until rising_edge(clk);
		reset <= '0';
		wait until rising_edge(clk);	
		sendByte("00011111",spi_mosi,spiclk_en, spibyte); -- fill with 1111 (white)	--byte 1
		wait until rising_edge(int_ready);
		wait until rising_edge(clk);
		sendByte("01001010",spi_mosi,spiclk_en, spibyte); -- frect with 1010 (grey/pink) --byte 2
		sendByte("00110010",spi_mosi,spiclk_en, spibyte); -- X = 50 --byte 3
		sendByte("00101000",spi_mosi,spiclk_en, spibyte); -- Y = 40 --byte 4
		sendByte("00110010",spi_mosi,spiclk_en, spibyte); -- W = 50 --byte 5
		sendByte("00101000",spi_mosi,spiclk_en, spibyte); -- H = 40 --byte 6
		wait until rising_edge(int_ready);
		wait until rising_edge(clk);
		sendByte("00110000",spi_mosi,spiclk_en, spibyte); -- rect with 0000 (black) --byte 7
		sendByte("00110010",spi_mosi,spiclk_en, spibyte); -- X = 50 --byte 8
		sendByte("00101000",spi_mosi,spiclk_en, spibyte); -- Y = 40 --byte 9
		sendByte("00110010",spi_mosi,spiclk_en, spibyte); -- W = 50 --byte 10
		sendByte("00101000",spi_mosi,spiclk_en, spibyte); -- H = 40 --byte 11
		wait until rising_edge(int_ready);
		wait until rising_edge(clk);
		sendByte("00000000",spi_mosi,spiclk_en, spibyte); -- switch screenbuffers --byte 12
		--wait until rising_edge(int_ready); --this one is too fast
		wait until rising_edge(clk);
		wait until rising_edge(clk);
		sendByte("00010000",spi_mosi,spiclk_en, spibyte); -- fill with 0000 (white)	--byte 13
		wait until rising_edge(int_ready);
		wait until rising_edge(clk);
		sendByte("00101111",spi_mosi,spiclk_en, spibyte); -- pixel with 1111 (white) --byte 14
		sendByte("00101000",spi_mosi,spiclk_en, spibyte); -- X = 40 --byte 15
		sendByte("00110010",spi_mosi,spiclk_en, spibyte); -- Y = 50 --byte 16
		wait until rising_edge(int_ready);	
		wait until rising_edge(clk);		
		--finish
		dump <= TRUE;
		wait until rising_edge(clk);
		dump <= FALSE;
		wait until rising_edge(clk);
		wait;
	end process;	
	
end behaviour;







