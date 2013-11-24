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
signal clk,spiclk,spiclk_en,write_enable_n :std_logic;
signal spi_clk :  std_logic;
signal spi_mosi : std_logic;
signal ramaddr : std_logic_vector(SizeRAMAddr-1 downto 0);
signal ramdata : std_logic_vector(SizeRAMData-1 downto 0);
signal download, dump :boolean := FALSE;
signal int_ready:std_logic;

procedure sendByte( byte : in std_logic_vector(SizeSPIData-1 downto 0);
	signal mosi : out std_logic;
	signal spiclk_en : out std_logic) is
	begin		
		spiclk_en <= '1';
		for J in byte'range loop
			wait until rising_edge(spiclk);
			mosi <= byte(J);
			
		end loop; -- works for any size byte
		wait until rising_edge(spiclk);
		spiclk_en <= '0';
end sendByte;

begin
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
	nCE=>'0',
	nOE=>'1',
	nWE=>write_enable_n,
	A=>ramaddr,
	D=>ramdata,
	CE2=>'1',
	download => download,
	dump=>dump,
	dump_start=>0,
	dump_end=>2 ** SizeRAMAddr
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
		spi_mosi <= '0';
		--download <= TRUE;
		--wait for CLOCKPERIOD;
		--download <= FALSE;
		wait until rising_edge(clk);
		reset <= '0';
		wait until rising_edge(clk);		
		sendByte("00010000",spi_mosi,spiclk_en); -- fill with 0000 (black)		
		wait until rising_edge(int_ready);
		sendByte("00101010",spi_mosi,spiclk_en); -- pixel with 1010 (grey/pink)
		sendByte("00110010",spi_mosi,spiclk_en); -- X = 50
		sendByte("00101000",spi_mosi,spiclk_en); -- Y = 40
		wait until rising_edge(int_ready);
		sendByte("00000000",spi_mosi,spiclk_en); -- switch screenbuffers
		wait until rising_edge(int_ready);
		sendByte("00011111",spi_mosi,spiclk_en); -- fill with 1111 (white)		
		wait until rising_edge(int_ready);
		sendByte("00100110",spi_mosi,spiclk_en); -- pixel with 0110 (grey/pink)
		sendByte("00101000",spi_mosi,spiclk_en); -- X = 40
		sendByte("00110010",spi_mosi,spiclk_en); -- Y = 50
		wait until rising_edge(int_ready);
		wait for 1000 ns; --safety
		--finish
		dump <= TRUE;
		wait for CLOCKPERIOD;
		dump <= FALSE;
		wait for CLOCKPERIOD;
		wait;
	end process;	
	
end behaviour;







