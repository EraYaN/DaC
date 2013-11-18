LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE work.parameter_def.all;

ENTITY vgacontroller IS
  GENERIC(
    -- default mode is 640x480@60Hz Pixel Clock (25.175 Mhz)
    h_pulse  :  INTEGER   := 24;   --horiztonal sync pulse width in pixels (default = 96)
    h_bp     :  INTEGER   := 12;   --horiztonal back porch width in pixels (default = 48)
    h_pixels :  INTEGER   := 160;  --horiztonal display width in pixels (default = 640)
    h_fp     :  INTEGER   := 4;   --horiztonal front porch width in pixels (default = 16)
    h_pol    :  STD_LOGIC := '0';   --horizontal sync pulse polarity (1 = positive, 0 = negative) (default = 0)
    v_pulse  :  INTEGER   := 2;     --vertical sync pulse width in rows (default = 2)
    v_bp     :  INTEGER   := 33;    --vertical back porch width in rows (default = 33)
    v_pixels :  INTEGER   := 480;  --vertical display width in rows (default = 480)
    v_fp     :  INTEGER   := 10;     --vertical front porch width in rows (default = 10)
    v_pol    :  STD_LOGIC := '0');  --vertical sync pulse polarity (1 = positive, 0 = negative) (default = 0)

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
	 
END vgacontroller;