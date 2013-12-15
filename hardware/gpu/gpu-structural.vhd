library ieee;
use ieee.std_logic_1164.all;
use work.parameter_def.all;

architecture structural of gpu is
	component decoder is
		port (
			--Clock/reset
			clk		: in	std_logic;	--Clock
			reset	: in	std_logic;	--Reset
			soft_reset : out std_logic;
			spi_reset : out std_logic;
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
			decoder_write		: buffer std_logic;	--Intention to write to RAM
			decoder_claim		: out std_logic;	
			is_init				: buffer std_logic;		--Initializing?
			--RAM interaction
			ramaddr     :out   std_logic_vector(SizeRAMAddr-1 downto 0);
			ramdata     :out   std_logic_vector(SizeRAMData-1 downto 0);			
			decoder_debug_pn : out std_logic_vector(3 downto 0);
			decoder_debug_i : out std_logic_vector(3 downto 0);
			decoder_debug_c : out std_logic_vector(7 downto 0);
			--VGA signals
			vgavsync : in std_logic
		);
	end component;

	component vgacontroller is
		PORT(
			clk :  IN   STD_LOGIC;  --pixel clock at frequency of VGA mode being used
			reset_n  :  IN   STD_LOGIC;  --active low asycnchronous reset
			vgahsync    :  OUT  STD_LOGIC;  --horiztonal sync pulse
			vgavsync    :  OUT  STD_LOGIC;  --vertical sync pulse
			vga_claim  :  OUT  STD_LOGIC;  --display enable ('1' = display time, '0' = blanking time)	 
			ramaddr  :  OUT  STD_LOGIC_VECTOR(SizeRAMAddr-1 downto 0);
			ramdata : IN std_logic_vector(SizeRAMData-1 downto 0);
			vga_read : OUT STD_LOGIC;
			vga_can_access : in std_logic;
			asb : IN STD_LOGIC
		); 	 
	end component;

	component spi is
		Generic (   
			N : positive := 8;                                             -- 32bit serial word length is default
			CPOL : std_logic := '0';                                        -- SPI mode selection (mode 0 default)
			CPHA : std_logic := '0';                                        -- CPOL = clock polarity, CPHA = clock phase.
			PREFETCH : positive := 3);                                      -- prefetch lookahead cycles
		Port (  
			clk_i : in std_logic := 'X';                                    -- internal interface clock (clocks di/do registers)
			spi_ssel_i : in std_logic := 'X';                               -- spi bus slave select line
			spi_sck_i : in std_logic := 'X';                                -- spi bus sck clock (clocks the shift register core)
			spi_mosi_i : in std_logic := 'X';                               -- spi bus mosi input
			spi_miso_o : out std_logic := 'X';                              -- spi bus spi_miso_o output
			di_req_o : out std_logic;                                       -- preload lookahead data request line
			di_i : in  std_logic_vector (N-1 downto 0) := (others => 'X');  -- parallel load data in (clocked in on rising edge of clk_i)
			wren_i : in std_logic := 'X';                                   -- user data write enable
			wr_ack_o : out std_logic;                                       -- write acknowledge
			do_valid_o : out std_logic;                                     -- do_o data valid strobe, valid during one clk_i rising edge.
			do_o : out  std_logic_vector (N-1 downto 0);                    -- parallel output (clocked out on falling clk_i)
			--- debug ports: can be removed for the application circuit ---
			do_transfer_o : out std_logic;                                  -- debug: internal transfer driver
			wren_o : out std_logic;                                         -- debug: internal state of the wren_i pulse stretcher
			rx_bit_next_o : out std_logic;                                  -- debug: internal rx bit
			state_dbg_o : out std_logic_vector (3 downto 0);                -- debug: internal state register
			sh_reg_dbg_o : out std_logic_vector (N-1 downto 0)    
			);         -- debug: internal shift register
	end component;

	component ramcontroller is
		port (
			clk : in std_logic;
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
			--Clock/reset
			clk		: in	std_logic;	--Clock
			reset	: in	std_logic;	--Reset
			--Draw data
			id : in std_logic_vector(SizeSpriteID-1 downto 0); -- Sprite ID
			x			: in	std_logic_vector(SizeX-1 downto 0);				--Entity x coord
			w			: in	std_logic_vector(SizeX-1 downto 0);				--Entity width
			y			: in	std_logic_vector(SizeY-1 downto 0);				--Entity y coord
			h			: in	std_logic_vector(SizeY-1 downto 0);				--Entity height
			color		: in	std_logic_vector(SizeColor-1 downto 0);			--Entity Color
			en			: in	std_logic_vector(NumDrawModules-1 downto 0);	--Draw Module Enabled
			draw_ready	: out		std_logic;
			--Internal registers
			asb			: in		std_logic;	--Currently active screen buffer
			--RAM-controller interaction
			draw_write		: out	std_logic;
			draw_read		: out	std_logic;
			draw_can_access : in 	std_logic;
			--RAM interaction
			ramaddr	: out	std_logic_vector(SizeRAMAddr-1 downto 0);
			ramdata	: inout	std_logic_vector(SizeRAMData-1 downto 0)
		);
	end component;

	--GLOBAL
	signal asb : std_logic;
	signal reset_n, sreset, ramwe: std_logic;
	signal vgavsync_int : std_logic;

	-- VGACONTROLLER <-> DRAW
	signal is_init : std_logic;

	-- DECODER <-> DRAW
	signal draw_ready : std_logic;
	signal x, w : std_logic_vector(SizeX-1 downto 0);
	signal y, h : std_logic_vector(SizeY-1 downto 0);
	signal color : std_logic_vector(SizeColor-1 downto 0);
	signal en : std_logic_vector(NumDrawModules-1 downto 0);
	signal id : std_logic_vector(SizeSpriteID-1 downto 0);
	signal soft_reset : std_logic;
	signal spi_reset : std_logic;

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
	sreset <= (reset or soft_reset or spi_reset);
	ramwe_n <= not ramwe;
	asb_debug <= asb;
	spi_debug<=spi_data_rx;
	vga_enabled<=vga_claim;
	draw1: draw port map (
		clk=>clk,
		reset=>reset,
		id=>id,
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
		soft_reset=>soft_reset,
		spi_reset=>spi_reset,
		int_ready=>int_ready,
		spi_data_rx=>spi_data_rx,
		spi_data_available=>spi_data_available,
		draw_ready=>draw_ready,
		id=>id,
		x=>x,
		w=>w,
		y=>y,
		h=>h,
		color=>color,
		en=>en,
		asb=>asb,
		decoder_can_access=>decoder_can_access,
		decoder_write=>decoder_write,
		decoder_claim=>decoder_claim,
		is_init=>is_init,		--Initializing?
		ramdata=>ramdata,
		ramaddr=>ramaddr,
		decoder_debug_pn=>bin_debug(3 downto 0),
		decoder_debug_i=>bin_debug(7 downto 4),
		decoder_debug_c=>bin_debug(15 downto 8),
		vgavsync=>vgavsync_int
	);

	ramcontroller1: ramcontroller port map (
		clk,
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
		vgavsync_int,
		vga_claim,
		ramaddr,
		ramdata,
		vga_read,
		vga_can_access,
		asb
	);

	spi1: spi port map (
		clk_i=>clk,
		spi_ssel_i => '0',
		--reset=>sreset,
		spi_sck_i=>spi_clk,
		spi_mosi_i=>spi_mosi,
		do_valid_o=>spi_data_available,
		do_o=>spi_data_rx	
	);	
vgavsync<=vgavsync_int;
end structural;