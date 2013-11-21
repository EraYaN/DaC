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
--internal
vga_claim : in std_logic;
decoder_claim : in std_logic;
is_init : in std_logic;

decoder_write : in std_logic;
draw_write : in std_logic;
draw_read : in std_logic;
vga_read : in std_logic;

draw_can_access : out std_logic;
decoder_can_access : out std_logic;
vga_can_access : out std_logic
);
END COMPONENT;
--GLOBAL
signal asb : std_logic;
signal reset_n, ramwe: std_logic;

-- VGACONTROLLER <-> DRAW
SIGNAL ramclaim : std_logic;
SIGNAL settingup : std_logic;
signal is_init : std_logic;

-- RAMCONTROLLER <->
signal vga_claim : std_logic;
signal decoder_claim : std_logic;
signal draw_write : std_logic := '0';
signal draw_read : std_logic := '0';
signal decoder_write : std_logic := '0';
signal vga_read : std_logic := '0';
signal draw_can_access : std_logic;
signal decoder_can_access : std_logic;
signal vga_can_access : std_logic;
signal write_enable,write_enable_n : std_logic;
--signal addr : std_logic_vector(SizeRAMAddr-1 downto 0);
--signal data : std_logic_vector(SizeRAMData-1 downto 0);

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
	vga_claim,
	decoder_claim,
	is_init,
	decoder_write,
	draw_write,
	draw_read,
	vga_read,
	draw_can_access,
	decoder_can_access,
	vga_can_access
);

vgacontroller1: vgacontroller PORT MAP (
	clk,
	reset_n,
	vgahsync,
	vgavsync,
	vgacolor,
	vga_claim,
	ramaddr,
	ramdata,
	vga_read,
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






