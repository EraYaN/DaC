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
port (
	reset : in std_logic;
	clk : in std_logic;
	SPI_CLK : in std_logic;
	SPI_SS : in std_logic;
	SPI_MOSI : in std_logic;
	SPI_MISO : out std_logic;
	SPI_DONE : out std_logic;
	DataToTx : in std_logic_vector(SizeSPIData-1 downto 0);
	DataToTxLoad: in std_logic;
	DataRxd : out std_logic_vector(SizeSPIData-1 downto 0)
);
END COMPONENT;
COMPONENT ramcontroller IS
port (
--external
write_enable : out std_logic;
addr : out std_logic_vector(SizeRAMAddr-1 downto 0);
data : inout std_logic_vector(SizeRAMData-1 downto 0);
--internal
addr_draw : in std_logic_vector(SizeRAMAddr-1 downto 0);
addr_vga : in std_logic_vector(SizeRAMAddr-1 downto 0);
data_draw : inout std_logic_vector(SizeRAMData-1 downto 0);
data_vga : out std_logic_vector(SizeRAMData-1 downto 0);

draw_write : in std_logic;
draw_read : in std_logic;
vga_read : in std_logic
);
END COMPONENT;
--GLOBAL
signal asb : std_logic;
signal reset_n, ramwe: std_logic;

-- VGACONTROLLER <-> DRAW
SIGNAL ramclaim : std_logic;
SIGNAL settingup : std_logic;

-- RAMCONTROLLER <->
signal ramaddr_vga,ramaddr_draw,ramaddr_decoder :std_logic_vector(SizeRAMAddr-1 downto 0);
signal ramdata_vga,ramdata_draw,ramdata_decoder :std_logic_vector(SizeRAMData-1 downto 0);
signal ramread_draw,ramwrite_draw,ramread_vga,ramwrite_decoder :std_logic;

-- SPI <-> DECODER
signal spidav         : STD_LOGIC := '0';
signal spidatatx      : std_logic_vector(SizeSPIData-1 downto 0) := (OTHERS => '0');
signal spidatarx      : STD_LOGIC_VECTOR(SizeSPIData-1 DOWNTO 0);
signal spidatatxload  : STD_LOGIC := '0';
BEGIN
reset_n <= NOT reset;
ramwe_n <= NOT ramwe;

ramcontroller1: ramcontroller PORT MAP (
	ramwe,
	ramaddr,
	ramdata,
	ramaddr_draw,
	ramaddr_vga,
	ramdata_draw,
	ramdata_vga,
	ramwrite_draw,
	ramread_draw,
	ramread_vga
);

vgacontroller1: vgacontroller PORT MAP (
	clk,
	reset_n,
	vgahsync,
	vgavsync,
	vgacolor,
	ramclaim,
	ramaddr_vga,
	ramdata_vga,
	ramread_vga,
	asb
);

spi1: spi PORT MAP (
	clk=>clk,
	reset=>reset_n,
	SPI_CLK=>spiclk,
	SPI_SS=>'1',
	SPI_MOSI=>spimosi,
	SPI_MISO=>spimiso,
	SPI_DONE=>spidav,
	DataToTx=>spidatatx,
	DataToTxLoad=>spidatatxload,
	DataRxd=>spidatarx
	
);

PROCESS (reset) 
begin
	if(reset='1')then
		settingup <= '1';
	end if;
end process;
END structural;






