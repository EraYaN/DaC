library ieee;
use ieee.std_logic_1164.all;
use work.parameter_def.all;

architecture structural of gpu is
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
			x			: out	std_logic_vector(SizeX-1 downto 0);				--Entity x coord
			w			: out	std_logic_vector(SizeX-1 downto 0);				--Entity width
			y			: out	std_logic_vector(SizeY-1 downto 0);				--Entity y coord
			h			: out	std_logic_vector(SizeY-1 downto 0);				--Entity height
			color		: out	std_logic_vector(SizeColor-1 downto 0);			--Entity Color
			en			: out	std_logic_vector(NumDrawModules-1 downto 0);	--Draw Module Enabled
			--Internal registers (screen buffer switching)
			reg_id		: out		std_logic;	--Register id/address
			reg_value	: out		std_logic;	--Value
			reg_set		: out		std_logic;	--Set
			asb			: in		std_logic	--Currently active screen buffer
		);
	end component;

	component vgacontroller is
		port(
			clk : in std_logic; --pixel clock at frequency of vga mode being used
			reset_n : in std_logic; --active low asycnchronous reset
			vgahsync : out std_logic; --horiztonal sync pulse
			vgavsync : out std_logic; --vertical sync pulse
			vgacolor : out std_logic_vector(sizecolor-1 downto 0);
			ramclaim : out std_logic; --display enable ('1' = display time, '0' = blanking time)	 
			ramaddr : out std_logic_vector(sizeramaddr-1 downto 0);
			ramdata : in std_logic_vector(sizeramdata-1 downto 0); 
			ramread : out std_logic;
			asb : in std_logic
		); 
	end component;

	component spi is
		port (
			reset : in std_logic;
			clk : in std_logic;
			spi_clk : in std_logic;
			spi_ss : in std_logic;
			spi_mosi : in std_logic;
			--SPI_MISO : out std_logic;
			spi_data_available : out std_logic;
			--DataToTx : in std_logic_vector(SizeSPIData-1 downto 0);
			--DataToTxLoad: in std_logic;
			spi_data_rx : out std_logic_vector(sizespidata-1 downto 0)
		);
	end component;

	component ramcontroller is
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
	end component;
	
	component draw is
		port (
			clk		: in	std_logic;	--Clock
			reset	: in	std_logic;	--Reset
			x			: in	std_logic_vector(SizeX-1 downto 0);				--Entity x coord
			w			: in	std_logic_vector(SizeX-1 downto 0);				--Entity width
			y			: in	std_logic_vector(SizeY-1 downto 0);				--Entity y coord
			h			: in	std_logic_vector(SizeY-1 downto 0);				--Entity height
			color		: in	std_logic_vector(SizeColor-1 downto 0);			--Entity Color
			en			: in	std_logic_vector(NumDrawModules-1 downto 0);	--Draw Module Enabled
			draw_ready	: out		std_logic;
			asb			: in		std_logic;	--Currently active screen buffer
			draw_write		: out	std_logic;
			draw_read		: out	std_logic;
			draw_can_access : in 	std_logic;
			ramaddr	: out	std_logic_vector(SizeRAMAddr-1 downto 0);
			ramdata	: out	std_logic_vector(SizeRAMData-1 downto 0)
		);
	end component;

	--GLOBAL
	signal asb : std_logic;
	signal reset_n, ramwe: std_logic;

	-- VGACONTROLLER <-> DRAW
	signal is_init : std_logic;

	-- DECODER <-> DRAW
	signal draw_ready : std_logic;
	signal x, w : std_logic_vector(SizeX-1 downto 0);
	signal y, h : std_logic_vector(SizeY-1 downto 0);
	signal color : std_logic_vector(SizeColor-1 downto 0);
	signal en : std_logic_vector(NumDrawModules-1 downto 0);

	--DECODER <-> STATEREG
	signal reg_id : std_logic;
	signal reg_value : std_logic;
	signal reg_set : std_logic;

	-- RAMCONTROLLER <->
	signal vga_claim : std_logic;
	signal decoder_claim : std_logic;
	signal draw_write : std_logic;
	signal draw_read : std_logic;
	signal decoder_write : std_logic;
	signal vga_read : std_logic;
	signal draw_can_access : std_logic;
	signal decoder_can_access : std_logic;
	signal vga_can_access : std_logic;
	signal write_enable,write_enable_n : std_logic;

	-- SPI <-> DECODER
	signal spi_data_available : std_logic;
	signal spi_data_rx : std_logic_vector(sizespidata-1 downto 0);

begin

	reset_n <= not reset;
	ramwe_n <= not ramwe;
	
	draw1: draw port map (
		clk=>clk,
		reset=>reset,
		x=>x,
		w=>w,
		y=>y,
		h=>h,
		color=>color,
		en=>en,
		draw_ready=>draw_ready,
		asb=>asb,
		draw_write=>draw_write,
		draw_read=>draw_read,
		draw_can_access=>draw_can_access,
		ramaddr=>ramaddr,
		ramdata=>ramdata
	);

	decoder1: decoder port map (
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
		en=>en,
		reg_id=>reg_id,
		reg_value=>reg_value,
		reg_set=>reg_set,
		asb=>asb
	);

	ramcontroller1: ramcontroller port map (
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

	vgacontroller1: vgacontroller port map (
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

	spi1: spi port map (
		clk=>clk,
		reset=>reset_n,
		spi_clk=>spi_clk,
		spi_ss=>'1',
		spi_mosi=>spi_mosi,
		spi_data_available=>spi_data_available,
		spi_data_rx=>spi_data_rx	
	);	

end structural;