LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.parameter_def.ALL;

entity spi_tb is
generic (
	CLOCKPERIOD : time := 160 ns;
	SPICLOCKPERIOD : time := 500 ns;
	HCLOCKPERIOD : time := 80 ns;
	HSPICLOCKPERIOD : time := 250 ns
);
end spi_tb;

architecture behaviour of spi_tb is
component spi is
port (
reset : in std_logic;
clk : in std_logic;
SPI_CLK : in std_logic;
SPI_SS : in std_logic;
SPI_MOSI : in std_logic;
--SPI_MISO : out std_logic;
SPI_DONE : out std_logic;
--DataToTx : in std_logic_vector(SizeSPIData-1 downto 0);
--DataToTxLoad: in std_logic;
DataRxd : out std_logic_vector(SizeSPIData-1 downto 0)
);
end component;
signal reset : std_logic;
signal clk,spiclk,spiclk_en :std_logic;
signal SPI_CLK :  std_logic;
signal SPI_SS : std_logic;
signal SPI_MOSI : std_logic;
--signal SPI_MISO : std_logic;
signal SPI_DONE : std_logic;
--signal DataToTx : std_logic_vector(SizeSPIData-1 downto 0);
--signal DataToTxLoad: std_logic;
signal DataRxd : std_logic_vector(SizeSPIData-1 downto 0);
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
	spi1: spi port map (
	reset,
	clk,
	SPI_CLK,
	SPI_SS,
	SPI_MOSI,
	--SPI_MISO,
	SPI_DONE,
	--DataToTx,
	--DataToTxLoad,
	DataRxd);
	
	-- clock period: 1/6250000 = 160 ns
	clk		<= '1' after 0 ns,
			'0' after HCLOCKPERIOD when clk /= '0' else '1' after HCLOCKPERIOD;
	spiclk		<= '1' after 0 ns,
			'0' after HSPICLOCKPERIOD when spiclk /= '0' else '1' after HSPICLOCKPERIOD;
	
	SPI_CLK <= spiclk and spiclk_en;
		
	process
	begin
		--setup
		reset <= '1';
		SPI_SS <= '1';
		SPI_MOSI <= '0';
		DataToTX <= (others=>'0');
		DataToTxLoad <= '0';
		wait until rising_edge(clk);
		reset <= '0';
		SPI_SS <= '0';
		wait until rising_edge(clk);
		sendByte(x"01",SPI_MOSI,spiclk_en);
		wait until rising_edge(clk);
		--DataToTX <= x"E6";
		--DataToTxLoad <= '1';
		--wait until rising_edge(clk);
		--DataToTxLoad <= '0';
		--wait until rising_edge(clk);
		sendByte(x"DF",SPI_MOSI,spiclk_en);
		wait;
	end process;	
	
end behaviour;







