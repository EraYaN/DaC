LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.parameter_def.all;

ARCHITECTURE structural OF gpu IS
COMPONENT vgacontroller IS
 PORT(
    clk :  IN   STD_LOGIC;  --pixel clock at frequency of VGA mode being used
    reset_n  :  IN   STD_LOGIC;  --active low asycnchronous reset
    vgahsync    :  OUT  STD_LOGIC;  --horiztonal sync pulse
    vgavsync    :  OUT  STD_LOGIC;  --vertical sync pulse
	 vgacolor : OUT STD_LOGIC_VECTOR(SizeColor-1 downto 0);
    ramclaim  :  OUT  STD_LOGIC;  --display enable ('1' = display time, '0' = blanking time)	 
	 ramaddr  :  OUT  STD_LOGIC_VECTOR(SizeRAMAddr-1 downto 0);
	 ramdata  :  IN  STD_LOGIC_VECTOR(SizeRAMData-1 downto 0); 
	 ramread : OUT STD_LOGIC;
	 asb : IN STD_LOGIC
	 ); 
END COMPONENT;
COMPONENT spi IS
     PORT(
    sclk         : IN     STD_LOGIC;  --spi clk from master
    reset_n      : IN     STD_LOGIC;  --active low reset
    ss_n         : IN     STD_LOGIC;  --active low slave select
    mosi         : IN     STD_LOGIC;  --master out, slave in
    rx_req       : IN     STD_LOGIC;  --'1' while busy = '0' moves data to the rx_data output
    st_load_en   : IN     STD_LOGIC;  --asynchronous load enable
    st_load_trdy : IN     STD_LOGIC;  --asynchronous trdy load input
    st_load_rrdy : IN     STD_LOGIC;  --asynchronous rrdy load input
    st_load_roe  : IN     STD_LOGIC;  --asynchronous roe load input
    tx_load_en   : IN     STD_LOGIC;  --asynchronous transmit buffer load enable
    tx_load_data : IN     STD_LOGIC_VECTOR(SizeSPIData-1 DOWNTO 0);  --asynchronous tx data to load
    trdy         : BUFFER STD_LOGIC := '0';  --transmit ready bit
    rrdy         : BUFFER STD_LOGIC := '0';  --receive ready bit
    roe          : BUFFER STD_LOGIC := '0';  --receive overrun error bit
    rx_data      : OUT    STD_LOGIC_VECTOR(SizeSPIData-1 DOWNTO 0) := (OTHERS => '0');  --receive register output to logic
    busy         : OUT    STD_LOGIC := '0';  --busy signal to logic ('1' during transaction)
    miso         : OUT    STD_LOGIC := 'Z'); --master in, slave out
END COMPONENT;
--GLOBAL
signal asb : std_logic;
signal reset_n: std_logic;

-- VGACONTROLLER <-> DRAW
SIGNAL ramclaim : std_logic;

-- RAMCONTROLLER ->
signal ramaddr_int :std_logic_vector(SizeRAMAddr-1 downto 0);
signal ramdata_int :std_logic_vector(SizeRAMData-1 downto 0);
signal ramread :std_logic;
signal ramwrite :std_logic;

-- SPI <-> DECODER
signal rx_req       : STD_LOGIC := '0';
signal st_load_en   : STD_LOGIC := '1';
signal st_load_trdy : STD_LOGIC := '0';
signal st_load_rrdy : STD_LOGIC := '0';
signal st_load_roe  : STD_LOGIC := '0';
signal tx_load_en   : STD_LOGIC := '1';
signal tx_load_data : STD_LOGIC_VECTOR(SizeSPIData-1 DOWNTO 0);
signal spitrdy         : STD_LOGIC := '0';
signal spirrdy         : STD_LOGIC := '0';
signal spiroe          : STD_LOGIC := '0';
signal rx_data      : STD_LOGIC_VECTOR(SizeSPIData-1 DOWNTO 0) := (OTHERS => '0');
signal spibusy         : STD_LOGIC := '0';
BEGIN
reset_n <= NOT reset;
vgacontroller1: vgacontroller PORT MAP (
	clk,
	reset_n,
	vgahsync,
	vgavsync,
	vgacolor,
	ramclaim,
	ramaddr_int,
	ramdata_int,
	ramread,
	asb
);

spi1: spi PORT MAP (
	sclk=>spiclk,
	reset_n=>reset_n,
	ss_n=>'0',
	mosi=>spimosi,
	rx_req=>rx_req,
	st_load_en=>st_load_en,
	st_load_trdy=>'1',
	st_load_rrdy=>'1',
	st_load_roe=>'1',
	tx_load_en=>tx_load_en,
	tx_load_data=>tx_load_data,
	trdy=>spitrdy,
	rrdy=>spirrdy,
	roe=>spiroe,
	rx_data=>rx_data,
	busy=>spibusy,
	miso=>spimiso
);

END structural;






