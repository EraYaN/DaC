-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/15/2013 13:56:24"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_de1 IS
    PORT (
	vga_hsync : OUT std_logic;
	clock_50mhz : IN std_logic;
	reset : IN std_logic;
	SPICLK : IN std_logic;
	SPIMOSI : IN std_logic;
	RAMDATA : INOUT std_logic_vector(5 DOWNTO 0);
	vga_vsync : OUT std_logic;
	RAMWE : OUT std_logic;
	int_ready : OUT std_logic;
	debug_in : IN std_logic;
	debug0 : OUT std_logic;
	debug1 : OUT std_logic;
	debug2 : OUT std_logic;
	debug3 : OUT std_logic;
	debug4 : OUT std_logic;
	debug5 : OUT std_logic;
	debug6 : OUT std_logic;
	debug7 : OUT std_logic;
	debug8 : OUT std_logic_vector(7 DOWNTO 0);
	RAMADDR : OUT std_logic_vector(15 DOWNTO 0);
	segments : OUT std_logic_vector(27 DOWNTO 0);
	vga_b : OUT std_logic_vector(3 DOWNTO 0);
	VGACOLOR : IN std_logic_vector(5 DOWNTO 0);
	vga_g : OUT std_logic_vector(3 DOWNTO 0);
	vga_r : OUT std_logic_vector(3 DOWNTO 0)
	);
END top_de1;

-- Design Ports Information
-- RAMADDR[15]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RAMADDR[14]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RAMADDR[13]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RAMADDR[12]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RAMADDR[11]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RAMADDR[10]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RAMADDR[9]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RAMADDR[8]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RAMADDR[7]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RAMADDR[6]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RAMADDR[5]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RAMADDR[4]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RAMADDR[3]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RAMADDR[2]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RAMADDR[1]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RAMADDR[0]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RAMDATA[5]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RAMDATA[4]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RAMDATA[3]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RAMDATA[2]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RAMDATA[1]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RAMDATA[0]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- vga_hsync	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- vga_vsync	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RAMWE	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- int_ready	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug0	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug1	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug2	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug3	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug4	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug5	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug6	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug7	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug8[7]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug8[6]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug8[5]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug8[4]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug8[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug8[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug8[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug8[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[27]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[26]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[25]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[24]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[23]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[22]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[21]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[20]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[19]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[18]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[17]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[16]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[15]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[14]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[13]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[12]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[11]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[10]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[9]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[8]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[7]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- vga_b[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- vga_b[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- vga_b[1]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- vga_b[0]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- vga_g[3]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- vga_g[2]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- vga_g[1]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- vga_g[0]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- vga_r[3]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- vga_r[2]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- vga_r[1]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- vga_r[0]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reset	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_in	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SPICLK	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SPIMOSI	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- VGACOLOR[0]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- VGACOLOR[1]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- VGACOLOR[2]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- VGACOLOR[3]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- VGACOLOR[4]	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- VGACOLOR[5]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock_50mhz	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF top_de1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_vga_hsync : std_logic;
SIGNAL ww_clock_50mhz : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_SPICLK : std_logic;
SIGNAL ww_SPIMOSI : std_logic;
SIGNAL ww_vga_vsync : std_logic;
SIGNAL ww_RAMWE : std_logic;
SIGNAL ww_int_ready : std_logic;
SIGNAL ww_debug_in : std_logic;
SIGNAL ww_debug0 : std_logic;
SIGNAL ww_debug1 : std_logic;
SIGNAL ww_debug2 : std_logic;
SIGNAL ww_debug3 : std_logic;
SIGNAL ww_debug4 : std_logic;
SIGNAL ww_debug5 : std_logic;
SIGNAL ww_debug6 : std_logic;
SIGNAL ww_debug7 : std_logic;
SIGNAL ww_debug8 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RAMADDR : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_segments : std_logic_vector(27 DOWNTO 0);
SIGNAL ww_vga_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGACOLOR : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_vga_g : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_vga_r : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|count[2]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_50mhz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|vgacontroller1|h_count[3]~14_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|Add1~8_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|Add1~10_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|Add1~12_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|Add1~14_combout\ : std_logic;
SIGNAL \inst2|decoder1|Add1~10_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add8~0_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add2~0_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add3~4_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add3~8_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add6~9\ : std_logic;
SIGNAL \inst2|draw1|line1|Add6~10_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add6~11\ : std_logic;
SIGNAL \inst2|draw1|line1|Add6~12_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add8~8_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add8~20_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add0~0_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add0~6_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add1~10_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add1~12_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add0~13_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add0~17_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add0~22\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add0~25_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add9~2_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add9~6_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add9~10_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add9~12_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add4~0_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add4~4_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add4~8_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add4~10_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add4~12_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add7~0_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add7~8_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add7~14_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add5~14_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add9~16_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add5~17\ : std_logic;
SIGNAL \inst2|draw1|line1|Add5~18_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|vgavsync~0_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|LessThan8~0_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|LessThan7~0_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|vga_combi~4_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|draw_rect_combi~0_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|draw_line_comb~1_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|draw_line_comb~6_combout\ : std_logic;
SIGNAL \inst2|draw1|pixel1|done~0_combout\ : std_logic;
SIGNAL \inst2|decoder1|LessThan0~2_combout\ : std_logic;
SIGNAL \inst2|decoder1|LessThan0~3_combout\ : std_logic;
SIGNAL \inst2|decoder1|en~6_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Equal0~3_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|almost_done_tmp~0_combout\ : std_logic;
SIGNAL \inst2|decoder1|en~8_combout\ : std_logic;
SIGNAL \inst2|decoder1|en~10_combout\ : std_logic;
SIGNAL \inst2|decoder1|next_int_ready~0_combout\ : std_logic;
SIGNAL \inst2|decoder1|next_int_ready~1_combout\ : std_logic;
SIGNAL \inst2|decoder1|next_int_ready~2_combout\ : std_logic;
SIGNAL \inst2|decoder1|next_int_ready~3_combout\ : std_logic;
SIGNAL \inst2|decoder1|next_int_ready~4_combout\ : std_logic;
SIGNAL \inst2|decoder1|next_int_ready~5_combout\ : std_logic;
SIGNAL \inst2|decoder1|next_int_ready~6_combout\ : std_logic;
SIGNAL \inst2|decoder1|current_instruction[2]~0_combout\ : std_logic;
SIGNAL \inst2|decoder1|Add0~0_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add8~2_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|dy~0_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add8~10_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add8~22_combout\ : std_logic;
SIGNAL \inst2|decoder1|h~7_combout\ : std_logic;
SIGNAL \inst2|decoder1|next_h[6]~2_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cx[6]~2_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cx_tmp[3]~9_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cx_tmp[7]~21_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add0~12_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add0~15_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add0~20_combout\ : std_logic;
SIGNAL \inst2|spi1|index[3]~2_combout\ : std_logic;
SIGNAL \inst2|spi1|index~5_combout\ : std_logic;
SIGNAL \inst4|Equal63~3_combout\ : std_logic;
SIGNAL \inst2|decoder1|w[7]~13_combout\ : std_logic;
SIGNAL \inst2|decoder1|w[7]~3_combout\ : std_logic;
SIGNAL \clock_50mhz~combout\ : std_logic;
SIGNAL \inst1|count[2]~clkctrl_outclk\ : std_logic;
SIGNAL \clock_50mhz~clkctrl_outclk\ : std_logic;
SIGNAL \SPIMOSI~combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \inst2|decoder1|prev_spi_data_available~0_combout\ : std_logic;
SIGNAL \inst2|decoder1|prev_spi_data_available~regout\ : std_logic;
SIGNAL \inst2|decoder1|current_instruction~6_combout\ : std_logic;
SIGNAL \SPICLK~combout\ : std_logic;
SIGNAL \inst2|spi1|sclk_latched~0_combout\ : std_logic;
SIGNAL \inst2|spi1|sclk_latched~regout\ : std_logic;
SIGNAL \inst2|spi1|spi_rx_data[4]~0_combout\ : std_logic;
SIGNAL \inst2|decoder1|h~5_combout\ : std_logic;
SIGNAL \inst2|decoder1|packet_num[0]~5_combout\ : std_logic;
SIGNAL \inst2|decoder1|current_instruction~2_combout\ : std_logic;
SIGNAL \inst2|decoder1|packet_num[1]~4_combout\ : std_logic;
SIGNAL \inst4|hex0[0]~7_combout\ : std_logic;
SIGNAL \inst2|decoder1|h~1_combout\ : std_logic;
SIGNAL \inst4|hex1[2]~4_combout\ : std_logic;
SIGNAL \inst2|decoder1|h~2_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add0~8_combout\ : std_logic;
SIGNAL \inst2|decoder1|h~0_combout\ : std_logic;
SIGNAL \inst2|spi1|index[3]~0_combout\ : std_logic;
SIGNAL \inst2|spi1|index~1_combout\ : std_logic;
SIGNAL \inst2|spi1|index~3_combout\ : std_logic;
SIGNAL \inst2|spi1|index~4_combout\ : std_logic;
SIGNAL \inst2|spi1|sclk_old~0_combout\ : std_logic;
SIGNAL \inst2|spi1|sclk_old~regout\ : std_logic;
SIGNAL \inst2|spi1|spi_data_available~0_combout\ : std_logic;
SIGNAL \inst2|spi1|spi_data_available~1_combout\ : std_logic;
SIGNAL \inst2|spi1|spi_data_available~regout\ : std_logic;
SIGNAL \inst2|decoder1|decode_comb~1_combout\ : std_logic;
SIGNAL \inst2|decoder1|en~5_combout\ : std_logic;
SIGNAL \inst2|decoder1|en~9_combout\ : std_logic;
SIGNAL \inst4|hex1[3]~8_combout\ : std_logic;
SIGNAL \inst2|decoder1|en~3_combout\ : std_logic;
SIGNAL \inst2|decoder1|en~4_combout\ : std_logic;
SIGNAL \inst2|decoder1|en~11_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cy_tmp[0]~0_combout\ : std_logic;
SIGNAL \inst2|decoder1|next_is_init~0_combout\ : std_logic;
SIGNAL \inst2|decoder1|next_is_init~1_combout\ : std_logic;
SIGNAL \inst2|decoder1|decoder_claim~regout\ : std_logic;
SIGNAL \inst2|vgacontroller1|new_v_count[6]~7_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|h_count[0]~8_combout\ : std_logic;
SIGNAL \reset~_wirecell_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|h_count[0]~9\ : std_logic;
SIGNAL \inst2|vgacontroller1|h_count[1]~11\ : std_logic;
SIGNAL \inst2|vgacontroller1|h_count[2]~12_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|h_count[2]~13\ : std_logic;
SIGNAL \inst2|vgacontroller1|h_count[3]~15\ : std_logic;
SIGNAL \inst2|vgacontroller1|h_count[4]~17\ : std_logic;
SIGNAL \inst2|vgacontroller1|h_count[5]~19_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|h_count[5]~20\ : std_logic;
SIGNAL \inst2|vgacontroller1|h_count[6]~22\ : std_logic;
SIGNAL \inst2|vgacontroller1|h_count[7]~23_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|h_count[6]~21_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|h_count[4]~16_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|LessThan8~1_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|LessThan8~2_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|h_count[2]~18_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|new_v_count[7]~6_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|Add1~0_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|new_v_count[0]~1_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|Add1~1\ : std_logic;
SIGNAL \inst2|vgacontroller1|Add1~2_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|new_v_count[1]~2_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|Add1~3\ : std_logic;
SIGNAL \inst2|vgacontroller1|Add1~5\ : std_logic;
SIGNAL \inst2|vgacontroller1|Add1~6_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|v_count[3]~0_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|v_count[3]~1_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|Add1~7\ : std_logic;
SIGNAL \inst2|vgacontroller1|Add1~9\ : std_logic;
SIGNAL \inst2|vgacontroller1|Add1~11\ : std_logic;
SIGNAL \inst2|vgacontroller1|Add1~13\ : std_logic;
SIGNAL \inst2|vgacontroller1|Add1~15\ : std_logic;
SIGNAL \inst2|vgacontroller1|Add1~16_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|new_v_count[8]~5_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|Add1~4_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|new_v_count[2]~0_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|LessThan9~0_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|new_v_count[5]~8_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|LessThan9~1_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|LessThan9~2_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|vga_combi~2_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|vga_combi~3_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|vga_combi~5_combout\ : std_logic;
SIGNAL \inst2|ramcontroller1|draw_can_access~0_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|started_tmp~0_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|started~regout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add0~4_combout\ : std_logic;
SIGNAL \inst2|decoder1|h~3_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add0~0_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add0~1_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add0~3_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cy_tmp[0]~1_combout\ : std_logic;
SIGNAL \inst2|decoder1|x~5_combout\ : std_logic;
SIGNAL \inst4|Equal63~0_combout\ : std_logic;
SIGNAL \inst2|decoder1|x[5]~1_combout\ : std_logic;
SIGNAL \inst2|decoder1|x~2_combout\ : std_logic;
SIGNAL \inst2|sreset~0_combout\ : std_logic;
SIGNAL \inst2|decoder1|w[7]~12_combout\ : std_logic;
SIGNAL \inst2|decoder1|next_h[6]~0_combout\ : std_logic;
SIGNAL \inst2|decoder1|next_h[6]~1_combout\ : std_logic;
SIGNAL \inst2|decoder1|next_h[6]~3_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add0~24_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|draw_write~0_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add0~27_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Equal2~0_combout\ : std_logic;
SIGNAL \inst2|decoder1|h~4_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cx[6]~3_combout\ : std_logic;
SIGNAL \inst2|decoder1|h~6_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add0~16_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add0~19_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add0~10\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add0~14\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add0~18\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add0~21_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add0~23_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cx[6]~4_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cx[6]~5_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cx[6]~6_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|vga_claim~0_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cx[6]~0_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cx[6]~7_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cx[6]~1_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cx_tmp[1]~3_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add1~0_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cx_tmp[0]~0_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cx_tmp[0]~1_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cx_tmp[0]~2_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add1~1\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add1~2_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cx_tmp[1]~4_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cx_tmp[1]~5_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add1~3\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add1~4_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cx_tmp[2]~6_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cx_tmp[2]~7_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cx_tmp[2]~8_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add1~5\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add1~6_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cx_tmp[3]~10_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cx_tmp[3]~11_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|decoder1|x~6_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cx_tmp[5]~15_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cx_tmp[5]~16_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cx_tmp[5]~17_combout\ : std_logic;
SIGNAL \inst2|decoder1|x~7_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|decoder1|x~3_combout\ : std_logic;
SIGNAL \inst2|decoder1|x~0_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Equal0~4_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cy_tmp[0]~2_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add0~2\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add0~5_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add0~7_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add0~6\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add0~9_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add0~11_combout\ : std_logic;
SIGNAL \inst4|Equal63~2_combout\ : std_logic;
SIGNAL \inst2|decoder1|y~1_combout\ : std_logic;
SIGNAL \inst2|decoder1|x~4_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|almost_done_tmp~1_combout\ : std_logic;
SIGNAL \inst2|decoder1|x~9_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Equal1~0_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|almost_done_tmp~2_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|almost_done_tmp~3_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|draw_write~1_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|almost_done_tmp~4_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|almost_done~regout\ : std_logic;
SIGNAL \inst2|draw1|draw_ready~0_combout\ : std_logic;
SIGNAL \inst2|decoder1|en~7_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add10~0_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|cx[3]~0_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add10~2_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|next_setup~0_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|setup~regout\ : std_logic;
SIGNAL \inst2|decoder1|x~8_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add0~1\ : std_logic;
SIGNAL \inst2|draw1|line1|Add0~3\ : std_logic;
SIGNAL \inst2|draw1|line1|Add0~5\ : std_logic;
SIGNAL \inst2|draw1|line1|Add0~7\ : std_logic;
SIGNAL \inst2|draw1|line1|Add0~9\ : std_logic;
SIGNAL \inst2|draw1|line1|Add0~11\ : std_logic;
SIGNAL \inst2|draw1|line1|Add0~13\ : std_logic;
SIGNAL \inst2|draw1|line1|Add0~14_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add0~12_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add0~10_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add0~8_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add0~15\ : std_logic;
SIGNAL \inst2|draw1|line1|Add0~16_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add0~4_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add0~2_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|dx~0_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add1~1\ : std_logic;
SIGNAL \inst2|draw1|line1|Add1~3\ : std_logic;
SIGNAL \inst2|draw1|line1|Add1~5\ : std_logic;
SIGNAL \inst2|draw1|line1|Add1~7\ : std_logic;
SIGNAL \inst2|draw1|line1|Add1~9\ : std_logic;
SIGNAL \inst2|draw1|line1|Add1~11\ : std_logic;
SIGNAL \inst2|draw1|line1|Add1~13\ : std_logic;
SIGNAL \inst2|draw1|line1|Add1~14_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add2~1\ : std_logic;
SIGNAL \inst2|draw1|line1|Add2~3\ : std_logic;
SIGNAL \inst2|draw1|line1|Add2~5\ : std_logic;
SIGNAL \inst2|draw1|line1|Add2~7\ : std_logic;
SIGNAL \inst2|draw1|line1|Add2~9\ : std_logic;
SIGNAL \inst2|draw1|line1|Add2~11\ : std_logic;
SIGNAL \inst2|draw1|line1|Add2~12_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add2~10_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add2~8_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add2~6_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add2~4_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add2~2_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add2~13\ : std_logic;
SIGNAL \inst2|draw1|line1|Add2~14_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add3~1\ : std_logic;
SIGNAL \inst2|draw1|line1|Add3~3\ : std_logic;
SIGNAL \inst2|draw1|line1|Add3~5\ : std_logic;
SIGNAL \inst2|draw1|line1|Add3~7\ : std_logic;
SIGNAL \inst2|draw1|line1|Add3~9\ : std_logic;
SIGNAL \inst2|draw1|line1|Add3~11\ : std_logic;
SIGNAL \inst2|draw1|line1|Add3~12_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add1~10_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add1~8_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add1~6_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add1~4_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add3~2_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add1~0_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add4~1\ : std_logic;
SIGNAL \inst2|draw1|line1|Add4~3\ : std_logic;
SIGNAL \inst2|draw1|line1|Add4~5\ : std_logic;
SIGNAL \inst2|draw1|line1|Add4~7\ : std_logic;
SIGNAL \inst2|draw1|line1|Add4~9\ : std_logic;
SIGNAL \inst2|draw1|line1|Add4~11\ : std_logic;
SIGNAL \inst2|draw1|line1|Add4~13\ : std_logic;
SIGNAL \inst2|draw1|line1|Add4~14_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|err[0]~1_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add3~10_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add4~2_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add3~0_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add7~1\ : std_logic;
SIGNAL \inst2|draw1|line1|Add7~2_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add5~1\ : std_logic;
SIGNAL \inst2|draw1|line1|Add5~2_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|err~16_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|err~17_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|err[0]~4_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|err[0]~5_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add9~1\ : std_logic;
SIGNAL \inst2|draw1|line1|Add9~3\ : std_logic;
SIGNAL \inst2|draw1|line1|Add9~5\ : std_logic;
SIGNAL \inst2|draw1|line1|Add9~7\ : std_logic;
SIGNAL \inst2|draw1|line1|Add9~8_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add3~6_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add9~4_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add7~3\ : std_logic;
SIGNAL \inst2|draw1|line1|Add7~4_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add5~3\ : std_logic;
SIGNAL \inst2|draw1|line1|Add5~4_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|err~14_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|err~15_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add7~5\ : std_logic;
SIGNAL \inst2|draw1|line1|Add7~6_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add5~5\ : std_logic;
SIGNAL \inst2|draw1|line1|Add5~7\ : std_logic;
SIGNAL \inst2|draw1|line1|Add5~8_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|err~8_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|err~9_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add7~7\ : std_logic;
SIGNAL \inst2|draw1|line1|Add7~9\ : std_logic;
SIGNAL \inst2|draw1|line1|Add7~11\ : std_logic;
SIGNAL \inst2|draw1|line1|Add7~12_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add7~10_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add5~9\ : std_logic;
SIGNAL \inst2|draw1|line1|Add5~11\ : std_logic;
SIGNAL \inst2|draw1|line1|Add5~12_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|err~2_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|err~3_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add9~9\ : std_logic;
SIGNAL \inst2|draw1|line1|Add9~11\ : std_logic;
SIGNAL \inst2|draw1|line1|Add9~13\ : std_logic;
SIGNAL \inst2|draw1|line1|Add9~14_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|err~6_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|err~7_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add7~13\ : std_logic;
SIGNAL \inst2|draw1|line1|Add7~15\ : std_logic;
SIGNAL \inst2|draw1|line1|Add7~17\ : std_logic;
SIGNAL \inst2|draw1|line1|Add7~18_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add3~13\ : std_logic;
SIGNAL \inst2|draw1|line1|Add3~14_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add4~15\ : std_logic;
SIGNAL \inst2|draw1|line1|Add4~16_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add1~15\ : std_logic;
SIGNAL \inst2|draw1|line1|Add1~16_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add9~15\ : std_logic;
SIGNAL \inst2|draw1|line1|Add9~17\ : std_logic;
SIGNAL \inst2|draw1|line1|Add9~18_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|err~22_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|err~23_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add5~10_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|err~10_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|err~11_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add6~1\ : std_logic;
SIGNAL \inst2|draw1|line1|Add6~3\ : std_logic;
SIGNAL \inst2|draw1|line1|Add6~5\ : std_logic;
SIGNAL \inst2|draw1|line1|Add6~7\ : std_logic;
SIGNAL \inst2|draw1|line1|Add6~8_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan3~0_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add4~6_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add5~6_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|err~12_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|err~13_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add6~6_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add9~0_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add5~0_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|err~18_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|err~19_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add6~2_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add6~0_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan3~1_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add6~4_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan3~2_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan3~3_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan3~4_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan3~6_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan3~7_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan3~5_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|err[0]~0_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add7~16_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add5~13\ : std_logic;
SIGNAL \inst2|draw1|line1|Add5~15\ : std_logic;
SIGNAL \inst2|draw1|line1|Add5~16_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|err~20_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|err~21_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan2~6_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add1~12_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan2~7_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan2~0_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan2~8_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan2~3_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add1~2_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan2~1_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan2~2_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan2~4_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan2~5_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan2~9_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan2~10_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|cy[4]~0_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add10~3_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|draw_line_comb~5_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan1~1_cout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan1~3_cout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan1~5_cout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan1~7_cout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan1~9_cout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan1~11_cout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan1~12_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add10~1\ : std_logic;
SIGNAL \inst2|draw1|line1|Add10~5\ : std_logic;
SIGNAL \inst2|draw1|line1|Add10~7_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add10~9_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add10~8\ : std_logic;
SIGNAL \inst2|draw1|line1|Add10~10_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add10~12_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add10~11\ : std_logic;
SIGNAL \inst2|draw1|line1|Add10~14\ : std_logic;
SIGNAL \inst2|draw1|line1|Add10~16_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add10~18_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add10~13_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add10~15_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|draw_line_comb~7_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add10~17\ : std_logic;
SIGNAL \inst2|draw1|line1|Add10~19_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add10~21_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|draw_line_comb~8_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|cx[3]~1_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add8~3_combout\ : std_logic;
SIGNAL \inst2|decoder1|x[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan0~1_cout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan0~3_cout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan0~5_cout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan0~7_cout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan0~9_cout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan0~11_cout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan0~13_cout\ : std_logic;
SIGNAL \inst2|draw1|line1|LessThan0~14_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add8~1\ : std_logic;
SIGNAL \inst2|draw1|line1|Add8~4_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add8~6_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add8~7_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|draw_line_comb~0_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add8~5\ : std_logic;
SIGNAL \inst2|draw1|line1|Add8~9\ : std_logic;
SIGNAL \inst2|draw1|line1|Add8~13\ : std_logic;
SIGNAL \inst2|draw1|line1|Add8~16_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add8~18_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add8~19_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add8~23_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|draw_line_comb~2_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add8~17\ : std_logic;
SIGNAL \inst2|draw1|line1|Add8~21\ : std_logic;
SIGNAL \inst2|draw1|line1|Add8~24_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add8~26_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add8~27_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|draw_line_comb~3_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|draw_line_comb~4_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|draw_line_comb~9_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|done~0_combout\ : std_logic;
SIGNAL \inst2|draw1|draw_ready~1_combout\ : std_logic;
SIGNAL \inst2|decoder1|packet_num[0]~2_combout\ : std_logic;
SIGNAL \inst2|decoder1|packet_num[2]~3_combout\ : std_logic;
SIGNAL \inst4|Equal63~1_combout\ : std_logic;
SIGNAL \inst2|decoder1|done~7_combout\ : std_logic;
SIGNAL \inst2|decoder1|done~4_combout\ : std_logic;
SIGNAL \inst2|decoder1|done~5_combout\ : std_logic;
SIGNAL \inst2|decoder1|current_instruction[2]~4_combout\ : std_logic;
SIGNAL \inst2|decoder1|current_instruction[2]~5_combout\ : std_logic;
SIGNAL \inst2|decoder1|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|decoder1|done~6_combout\ : std_logic;
SIGNAL \inst2|decoder1|current_instruction~1_combout\ : std_logic;
SIGNAL \inst2|decoder1|current_instruction~7_combout\ : std_logic;
SIGNAL \inst4|hex1[3]~7_combout\ : std_logic;
SIGNAL \inst2|decoder1|decode_comb~0_combout\ : std_logic;
SIGNAL \inst2|decoder1|Add1~0_combout\ : std_logic;
SIGNAL \inst2|decoder1|Add1~5\ : std_logic;
SIGNAL \inst2|decoder1|Add1~7\ : std_logic;
SIGNAL \inst2|decoder1|Add1~8_combout\ : std_logic;
SIGNAL \inst4|hex0[0]~6_combout\ : std_logic;
SIGNAL \inst2|decoder1|timeout_count[13]~2_combout\ : std_logic;
SIGNAL \inst2|decoder1|Add1~9\ : std_logic;
SIGNAL \inst2|decoder1|Add1~11\ : std_logic;
SIGNAL \inst2|decoder1|Add1~13\ : std_logic;
SIGNAL \inst2|decoder1|Add1~14_combout\ : std_logic;
SIGNAL \inst2|decoder1|Add1~15\ : std_logic;
SIGNAL \inst2|decoder1|Add1~17\ : std_logic;
SIGNAL \inst2|decoder1|Add1~18_combout\ : std_logic;
SIGNAL \inst2|decoder1|Add1~19\ : std_logic;
SIGNAL \inst2|decoder1|Add1~20_combout\ : std_logic;
SIGNAL \inst2|decoder1|Add1~12_combout\ : std_logic;
SIGNAL \inst2|decoder1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|decoder1|timeout_count[13]~0_combout\ : std_logic;
SIGNAL \inst2|decoder1|timeout_count[13]~1_combout\ : std_logic;
SIGNAL \inst2|decoder1|Add1~1\ : std_logic;
SIGNAL \inst2|decoder1|Add1~2_combout\ : std_logic;
SIGNAL \inst2|decoder1|Add1~3\ : std_logic;
SIGNAL \inst2|decoder1|Add1~4_combout\ : std_logic;
SIGNAL \inst2|decoder1|Add1~6_combout\ : std_logic;
SIGNAL \inst2|decoder1|LessThan0~1_combout\ : std_logic;
SIGNAL \inst2|decoder1|spi_reset~0_combout\ : std_logic;
SIGNAL \inst2|sreset~combout\ : std_logic;
SIGNAL \inst2|spi1|mosi_latched~0_combout\ : std_logic;
SIGNAL \inst2|spi1|mosi_latched~regout\ : std_logic;
SIGNAL \inst2|decoder1|current_instruction~3_combout\ : std_logic;
SIGNAL \inst2|decoder1|en~0_combout\ : std_logic;
SIGNAL \inst2|decoder1|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|decoder1|en~1_combout\ : std_logic;
SIGNAL \inst2|decoder1|en~2_combout\ : std_logic;
SIGNAL \inst2|draw1|pixel1|busy~feeder_combout\ : std_logic;
SIGNAL \inst2|draw1|pixel1|busy~regout\ : std_logic;
SIGNAL \inst2|draw1|pixel1|draw_write~0_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|draw_write~0_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[15]~2_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|Add1~17\ : std_logic;
SIGNAL \inst2|vgacontroller1|Add1~18_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|new_v_count[9]~3_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|vgavsync~1_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|LessThan11~0_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|vgavsync~2_combout\ : std_logic;
SIGNAL \inst2|decoder1|next_asb~0_combout\ : std_logic;
SIGNAL \inst2|decoder1|asb~regout\ : std_logic;
SIGNAL \inst2|vgacontroller1|vga_combi~0_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|vga_combi~1_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[15]~19_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[15]~20_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[15]~51_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|ramaddr[14]~30_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[14]~21_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[14]~22_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|ramaddr[13]~31_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[13]~23_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[13]~24_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[12]~25_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|ramaddr[12]~32_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[12]~26_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|ramaddr[11]~33_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[11]~27_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[11]~28_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|new_v_count[4]~4_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[10]~29_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|ramaddr[10]~34_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[10]~30_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add10~4_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add10~6_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[9]~31_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|ramaddr[9]~35_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[9]~32_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[8]~33_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|ramaddr[8]~36_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[8]~34_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add8~25\ : std_logic;
SIGNAL \inst2|draw1|line1|Add8~28_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add8~30_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add8~31_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[7]~35_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add1~7\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add1~8_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cx_tmp[4]~12_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cx_tmp[4]~13_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cx_tmp[4]~14_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add1~9\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add1~11\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add1~13\ : std_logic;
SIGNAL \inst2|draw1|rect1|Add1~14_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cx_tmp[7]~22_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cx_tmp[7]~23_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|ramaddr[7]~37_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[7]~36_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cx_tmp[6]~18_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cx_tmp[6]~19_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|cx_tmp[6]~20_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|ramaddr[6]~38_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[6]~37_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[6]~38_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[5]~39_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|ramaddr[5]~39_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[5]~40_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|ramaddr[4]~40_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[4]~41_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[4]~42_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|ramaddr[3]~41_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add8~12_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add8~14_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add8~15_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[3]~43_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[3]~44_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|Add8~11_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[2]~45_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|ramaddr[2]~42_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[2]~46_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|ramaddr[1]~43_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|h_count[1]~10_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[1]~47_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[1]~48_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[0]~49_combout\ : std_logic;
SIGNAL \inst2|draw1|rect1|ramaddr[0]~44_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|ramaddr[0]~50_combout\ : std_logic;
SIGNAL \inst2|decoder1|y~0_combout\ : std_logic;
SIGNAL \inst2|decoder1|color~0_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|ramdata[5]~6_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|ramdata[4]~7_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|ramdata[3]~8_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|ramdata[2]~9_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|ramdata[1]~10_combout\ : std_logic;
SIGNAL \inst2|draw1|line1|ramdata[0]~11_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|vgahsync~1_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|vgahsync~0_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|vgahsync~2_combout\ : std_logic;
SIGNAL \inst1|count[0]~2_combout\ : std_logic;
SIGNAL \inst1|count[1]~1_combout\ : std_logic;
SIGNAL \inst1|count[2]~0_combout\ : std_logic;
SIGNAL \inst2|ramcontroller1|write_enable~0_combout\ : std_logic;
SIGNAL \inst2|ramcontroller1|write_enable~1_combout\ : std_logic;
SIGNAL \inst2|decoder1|next_int_ready~7_combout\ : std_logic;
SIGNAL \inst2|decoder1|int_ready~regout\ : std_logic;
SIGNAL \debug_in~combout\ : std_logic;
SIGNAL \inst6~combout\ : std_logic;
SIGNAL \inst2|decoder1|Add1~21\ : std_logic;
SIGNAL \inst2|decoder1|Add1~22_combout\ : std_logic;
SIGNAL \inst2|decoder1|Add1~23\ : std_logic;
SIGNAL \inst2|decoder1|Add1~25\ : std_logic;
SIGNAL \inst2|decoder1|Add1~26_combout\ : std_logic;
SIGNAL \inst2|decoder1|Add1~24_combout\ : std_logic;
SIGNAL \inst4|hex3[6]~0_combout\ : std_logic;
SIGNAL \inst4|hex3[5]~1_combout\ : std_logic;
SIGNAL \inst4|hex3[4]~2_combout\ : std_logic;
SIGNAL \inst4|hex3[3]~3_combout\ : std_logic;
SIGNAL \inst4|hex3[2]~4_combout\ : std_logic;
SIGNAL \inst4|hex3[1]~5_combout\ : std_logic;
SIGNAL \inst4|hex3[0]~6_combout\ : std_logic;
SIGNAL \inst2|decoder1|Add1~16_combout\ : std_logic;
SIGNAL \inst4|hex2[6]~0_combout\ : std_logic;
SIGNAL \inst4|hex2[5]~1_combout\ : std_logic;
SIGNAL \inst4|hex2[4]~2_combout\ : std_logic;
SIGNAL \inst4|hex2[3]~3_combout\ : std_logic;
SIGNAL \inst4|hex2[2]~4_combout\ : std_logic;
SIGNAL \inst4|hex2[1]~5_combout\ : std_logic;
SIGNAL \inst4|hex2[0]~6_combout\ : std_logic;
SIGNAL \inst4|hex1[6]~0_combout\ : std_logic;
SIGNAL \inst4|hex1[5]~1_combout\ : std_logic;
SIGNAL \inst4|hex1[4]~2_combout\ : std_logic;
SIGNAL \inst4|hex1[3]~3_combout\ : std_logic;
SIGNAL \inst4|hex1[1]~5_combout\ : std_logic;
SIGNAL \inst4|hex1[0]~6_combout\ : std_logic;
SIGNAL \inst4|hex0[5]~0_combout\ : std_logic;
SIGNAL \inst4|hex0[5]~1_combout\ : std_logic;
SIGNAL \inst4|hex0[4]~2_combout\ : std_logic;
SIGNAL \inst4|hex0[3]~3_combout\ : std_logic;
SIGNAL \inst4|hex0[1]~4_combout\ : std_logic;
SIGNAL \inst4|hex0[0]~5_combout\ : std_logic;
SIGNAL \inst|vga_b[3]~0_combout\ : std_logic;
SIGNAL \inst|vga_b[1]~1_combout\ : std_logic;
SIGNAL \inst|vga_g[3]~0_combout\ : std_logic;
SIGNAL \inst|vga_g[1]~1_combout\ : std_logic;
SIGNAL \inst|vga_r[3]~0_combout\ : std_logic;
SIGNAL \inst|vga_r[1]~1_combout\ : std_logic;
SIGNAL \inst2|vgacontroller1|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|draw1|rect1|cy\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst2|spi1|spi_rx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGACOLOR~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst2|decoder1|timeout_count\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst2|draw1|line1|cy\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst2|draw1|rect1|cx\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|vgacontroller1|h_count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|decoder1|color\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst2|decoder1|current_instruction\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|decoder1|y\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst2|decoder1|en\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst2|decoder1|h\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst2|decoder1|packet_num\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|draw1|line1|cx\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|spi1|index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|decoder1|x\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|draw1|line1|err\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|decoder1|w\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset~combout\ : std_logic;
SIGNAL \inst4|ALT_INV_hex0[0]~5_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_hex0[1]~4_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_hex0[3]~3_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_hex0[4]~2_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_hex0[5]~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_hex1[0]~6_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_hex1[1]~5_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_hex1[2]~4_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_hex1[5]~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_hex1[6]~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_hex2[0]~6_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_hex2[1]~5_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_hex2[2]~4_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_hex2[4]~2_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_hex2[5]~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_hex2[6]~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_hex3[0]~6_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_hex3[1]~5_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_hex3[2]~4_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_hex3[4]~2_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_hex3[5]~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_hex3[6]~0_combout\ : std_logic;
SIGNAL \inst2|ramcontroller1|ALT_INV_write_enable~1_combout\ : std_logic;

BEGIN

vga_hsync <= ww_vga_hsync;
ww_clock_50mhz <= clock_50mhz;
ww_reset <= reset;
ww_SPICLK <= SPICLK;
ww_SPIMOSI <= SPIMOSI;
vga_vsync <= ww_vga_vsync;
RAMWE <= ww_RAMWE;
int_ready <= ww_int_ready;
ww_debug_in <= debug_in;
debug0 <= ww_debug0;
debug1 <= ww_debug1;
debug2 <= ww_debug2;
debug3 <= ww_debug3;
debug4 <= ww_debug4;
debug5 <= ww_debug5;
debug6 <= ww_debug6;
debug7 <= ww_debug7;
debug8 <= ww_debug8;
RAMADDR <= ww_RAMADDR;
segments <= ww_segments;
vga_b <= ww_vga_b;
ww_VGACOLOR <= VGACOLOR;
vga_g <= ww_vga_g;
vga_r <= ww_vga_r;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|count[2]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst1|count\(2));

\clock_50mhz~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock_50mhz~combout\);
\ALT_INV_reset~combout\ <= NOT \reset~combout\;
\inst4|ALT_INV_hex0[0]~5_combout\ <= NOT \inst4|hex0[0]~5_combout\;
\inst4|ALT_INV_hex0[1]~4_combout\ <= NOT \inst4|hex0[1]~4_combout\;
\inst4|ALT_INV_hex0[3]~3_combout\ <= NOT \inst4|hex0[3]~3_combout\;
\inst4|ALT_INV_hex0[4]~2_combout\ <= NOT \inst4|hex0[4]~2_combout\;
\inst4|ALT_INV_hex0[5]~0_combout\ <= NOT \inst4|hex0[5]~0_combout\;
\inst4|ALT_INV_hex1[0]~6_combout\ <= NOT \inst4|hex1[0]~6_combout\;
\inst4|ALT_INV_hex1[1]~5_combout\ <= NOT \inst4|hex1[1]~5_combout\;
\inst4|ALT_INV_hex1[2]~4_combout\ <= NOT \inst4|hex1[2]~4_combout\;
\inst4|ALT_INV_hex1[5]~1_combout\ <= NOT \inst4|hex1[5]~1_combout\;
\inst4|ALT_INV_hex1[6]~0_combout\ <= NOT \inst4|hex1[6]~0_combout\;
\inst4|ALT_INV_hex2[0]~6_combout\ <= NOT \inst4|hex2[0]~6_combout\;
\inst4|ALT_INV_hex2[1]~5_combout\ <= NOT \inst4|hex2[1]~5_combout\;
\inst4|ALT_INV_hex2[2]~4_combout\ <= NOT \inst4|hex2[2]~4_combout\;
\inst4|ALT_INV_hex2[4]~2_combout\ <= NOT \inst4|hex2[4]~2_combout\;
\inst4|ALT_INV_hex2[5]~1_combout\ <= NOT \inst4|hex2[5]~1_combout\;
\inst4|ALT_INV_hex2[6]~0_combout\ <= NOT \inst4|hex2[6]~0_combout\;
\inst4|ALT_INV_hex3[0]~6_combout\ <= NOT \inst4|hex3[0]~6_combout\;
\inst4|ALT_INV_hex3[1]~5_combout\ <= NOT \inst4|hex3[1]~5_combout\;
\inst4|ALT_INV_hex3[2]~4_combout\ <= NOT \inst4|hex3[2]~4_combout\;
\inst4|ALT_INV_hex3[4]~2_combout\ <= NOT \inst4|hex3[4]~2_combout\;
\inst4|ALT_INV_hex3[5]~1_combout\ <= NOT \inst4|hex3[5]~1_combout\;
\inst4|ALT_INV_hex3[6]~0_combout\ <= NOT \inst4|hex3[6]~0_combout\;
\inst2|ramcontroller1|ALT_INV_write_enable~1_combout\ <= NOT \inst2|ramcontroller1|write_enable~1_combout\;

-- Location: LCFF_X21_Y19_N11
\inst2|vgacontroller1|h_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|vgacontroller1|h_count[3]~14_combout\,
	sdata => \~GND~combout\,
	sload => \inst2|vgacontroller1|h_count[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|vgacontroller1|h_count\(3));

-- Location: LCCOMB_X21_Y19_N10
\inst2|vgacontroller1|h_count[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|h_count[3]~14_combout\ = (\inst2|vgacontroller1|h_count\(3) & (!\inst2|vgacontroller1|h_count[2]~13\)) # (!\inst2|vgacontroller1|h_count\(3) & ((\inst2|vgacontroller1|h_count[2]~13\) # (GND)))
-- \inst2|vgacontroller1|h_count[3]~15\ = CARRY((!\inst2|vgacontroller1|h_count[2]~13\) # (!\inst2|vgacontroller1|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|h_count\(3),
	datad => VCC,
	cin => \inst2|vgacontroller1|h_count[2]~13\,
	combout => \inst2|vgacontroller1|h_count[3]~14_combout\,
	cout => \inst2|vgacontroller1|h_count[3]~15\);

-- Location: LCCOMB_X20_Y18_N8
\inst2|vgacontroller1|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|Add1~8_combout\ = (\inst2|vgacontroller1|v_count\(4) & (\inst2|vgacontroller1|Add1~7\ $ (GND))) # (!\inst2|vgacontroller1|v_count\(4) & (!\inst2|vgacontroller1|Add1~7\ & VCC))
-- \inst2|vgacontroller1|Add1~9\ = CARRY((\inst2|vgacontroller1|v_count\(4) & !\inst2|vgacontroller1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|v_count\(4),
	datad => VCC,
	cin => \inst2|vgacontroller1|Add1~7\,
	combout => \inst2|vgacontroller1|Add1~8_combout\,
	cout => \inst2|vgacontroller1|Add1~9\);

-- Location: LCCOMB_X20_Y18_N10
\inst2|vgacontroller1|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|Add1~10_combout\ = (\inst2|vgacontroller1|v_count\(5) & (!\inst2|vgacontroller1|Add1~9\)) # (!\inst2|vgacontroller1|v_count\(5) & ((\inst2|vgacontroller1|Add1~9\) # (GND)))
-- \inst2|vgacontroller1|Add1~11\ = CARRY((!\inst2|vgacontroller1|Add1~9\) # (!\inst2|vgacontroller1|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|v_count\(5),
	datad => VCC,
	cin => \inst2|vgacontroller1|Add1~9\,
	combout => \inst2|vgacontroller1|Add1~10_combout\,
	cout => \inst2|vgacontroller1|Add1~11\);

-- Location: LCCOMB_X20_Y18_N12
\inst2|vgacontroller1|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|Add1~12_combout\ = (\inst2|vgacontroller1|v_count\(6) & (\inst2|vgacontroller1|Add1~11\ $ (GND))) # (!\inst2|vgacontroller1|v_count\(6) & (!\inst2|vgacontroller1|Add1~11\ & VCC))
-- \inst2|vgacontroller1|Add1~13\ = CARRY((\inst2|vgacontroller1|v_count\(6) & !\inst2|vgacontroller1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|vgacontroller1|v_count\(6),
	datad => VCC,
	cin => \inst2|vgacontroller1|Add1~11\,
	combout => \inst2|vgacontroller1|Add1~12_combout\,
	cout => \inst2|vgacontroller1|Add1~13\);

-- Location: LCCOMB_X20_Y18_N14
\inst2|vgacontroller1|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|Add1~14_combout\ = (\inst2|vgacontroller1|v_count\(7) & (!\inst2|vgacontroller1|Add1~13\)) # (!\inst2|vgacontroller1|v_count\(7) & ((\inst2|vgacontroller1|Add1~13\) # (GND)))
-- \inst2|vgacontroller1|Add1~15\ = CARRY((!\inst2|vgacontroller1|Add1~13\) # (!\inst2|vgacontroller1|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|vgacontroller1|v_count\(7),
	datad => VCC,
	cin => \inst2|vgacontroller1|Add1~13\,
	combout => \inst2|vgacontroller1|Add1~14_combout\,
	cout => \inst2|vgacontroller1|Add1~15\);

-- Location: LCFF_X23_Y17_N7
\inst2|decoder1|h[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|decoder1|h~7_combout\,
	sclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \inst2|decoder1|h~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|h\(4));

-- Location: LCFF_X5_Y20_N11
\inst2|decoder1|timeout_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|Add1~10_combout\,
	sclr => \inst2|decoder1|timeout_count[13]~1_combout\,
	ena => \inst2|decoder1|timeout_count[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|timeout_count\(5));

-- Location: LCCOMB_X5_Y20_N10
\inst2|decoder1|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|Add1~10_combout\ = (\inst2|decoder1|timeout_count\(5) & (!\inst2|decoder1|Add1~9\)) # (!\inst2|decoder1|timeout_count\(5) & ((\inst2|decoder1|Add1~9\) # (GND)))
-- \inst2|decoder1|Add1~11\ = CARRY((!\inst2|decoder1|Add1~9\) # (!\inst2|decoder1|timeout_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|timeout_count\(5),
	datad => VCC,
	cin => \inst2|decoder1|Add1~9\,
	combout => \inst2|decoder1|Add1~10_combout\,
	cout => \inst2|decoder1|Add1~11\);

-- Location: LCCOMB_X25_Y16_N2
\inst2|draw1|line1|Add8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add8~0_combout\ = \inst2|draw1|line1|cx\(0) $ (VCC)
-- \inst2|draw1|line1|Add8~1\ = CARRY(\inst2|draw1|line1|cx\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|draw1|line1|cx\(0),
	datad => VCC,
	combout => \inst2|draw1|line1|Add8~0_combout\,
	cout => \inst2|draw1|line1|Add8~1\);

-- Location: LCCOMB_X23_Y17_N16
\inst2|draw1|line1|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add2~0_combout\ = (\inst2|decoder1|h\(0) & ((GND) # (!\inst2|decoder1|y\(0)))) # (!\inst2|decoder1|h\(0) & (\inst2|decoder1|y\(0) $ (GND)))
-- \inst2|draw1|line1|Add2~1\ = CARRY((\inst2|decoder1|h\(0)) # (!\inst2|decoder1|y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|h\(0),
	datab => \inst2|decoder1|y\(0),
	datad => VCC,
	combout => \inst2|draw1|line1|Add2~0_combout\,
	cout => \inst2|draw1|line1|Add2~1\);

-- Location: LCCOMB_X24_Y17_N20
\inst2|draw1|line1|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add3~4_combout\ = (\inst2|draw1|line1|Add3~3\ & ((\inst2|draw1|line1|Add2~14_combout\ $ (!\inst2|draw1|line1|Add2~4_combout\)))) # (!\inst2|draw1|line1|Add3~3\ & (\inst2|draw1|line1|Add2~14_combout\ $ (\inst2|draw1|line1|Add2~4_combout\ 
-- $ (GND))))
-- \inst2|draw1|line1|Add3~5\ = CARRY((!\inst2|draw1|line1|Add3~3\ & (\inst2|draw1|line1|Add2~14_combout\ $ (!\inst2|draw1|line1|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add2~14_combout\,
	datab => \inst2|draw1|line1|Add2~4_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add3~3\,
	combout => \inst2|draw1|line1|Add3~4_combout\,
	cout => \inst2|draw1|line1|Add3~5\);

-- Location: LCCOMB_X24_Y17_N24
\inst2|draw1|line1|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add3~8_combout\ = (\inst2|draw1|line1|Add3~7\ & ((\inst2|draw1|line1|Add2~14_combout\ $ (!\inst2|draw1|line1|Add2~8_combout\)))) # (!\inst2|draw1|line1|Add3~7\ & (\inst2|draw1|line1|Add2~14_combout\ $ (\inst2|draw1|line1|Add2~8_combout\ 
-- $ (GND))))
-- \inst2|draw1|line1|Add3~9\ = CARRY((!\inst2|draw1|line1|Add3~7\ & (\inst2|draw1|line1|Add2~14_combout\ $ (!\inst2|draw1|line1|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add2~14_combout\,
	datab => \inst2|draw1|line1|Add2~8_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add3~7\,
	combout => \inst2|draw1|line1|Add3~8_combout\,
	cout => \inst2|draw1|line1|Add3~9\);

-- Location: LCCOMB_X24_Y17_N10
\inst2|draw1|line1|Add6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add6~8_combout\ = (\inst2|draw1|line1|Add3~10_combout\ & (!\inst2|draw1|line1|Add6~7\ & VCC)) # (!\inst2|draw1|line1|Add3~10_combout\ & (\inst2|draw1|line1|Add6~7\ $ (GND)))
-- \inst2|draw1|line1|Add6~9\ = CARRY((!\inst2|draw1|line1|Add3~10_combout\ & !\inst2|draw1|line1|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|draw1|line1|Add3~10_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add6~7\,
	combout => \inst2|draw1|line1|Add6~8_combout\,
	cout => \inst2|draw1|line1|Add6~9\);

-- Location: LCCOMB_X24_Y17_N12
\inst2|draw1|line1|Add6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add6~10_combout\ = (\inst2|draw1|line1|Add3~12_combout\ & ((\inst2|draw1|line1|Add6~9\) # (GND))) # (!\inst2|draw1|line1|Add3~12_combout\ & (!\inst2|draw1|line1|Add6~9\))
-- \inst2|draw1|line1|Add6~11\ = CARRY((\inst2|draw1|line1|Add3~12_combout\) # (!\inst2|draw1|line1|Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|draw1|line1|Add3~12_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add6~9\,
	combout => \inst2|draw1|line1|Add6~10_combout\,
	cout => \inst2|draw1|line1|Add6~11\);

-- Location: LCCOMB_X24_Y17_N14
\inst2|draw1|line1|Add6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add6~12_combout\ = \inst2|draw1|line1|Add6~11\ $ (\inst2|draw1|line1|Add3~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|draw1|line1|Add3~14_combout\,
	cin => \inst2|draw1|line1|Add6~11\,
	combout => \inst2|draw1|line1|Add6~12_combout\);

-- Location: LCCOMB_X25_Y16_N6
\inst2|draw1|line1|Add8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add8~8_combout\ = ((\inst2|draw1|line1|cx\(2) $ (\inst2|draw1|line1|LessThan0~14_combout\ $ (\inst2|draw1|line1|Add8~5\)))) # (GND)
-- \inst2|draw1|line1|Add8~9\ = CARRY((\inst2|draw1|line1|cx\(2) & ((!\inst2|draw1|line1|Add8~5\) # (!\inst2|draw1|line1|LessThan0~14_combout\))) # (!\inst2|draw1|line1|cx\(2) & (!\inst2|draw1|line1|LessThan0~14_combout\ & !\inst2|draw1|line1|Add8~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|cx\(2),
	datab => \inst2|draw1|line1|LessThan0~14_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add8~5\,
	combout => \inst2|draw1|line1|Add8~8_combout\,
	cout => \inst2|draw1|line1|Add8~9\);

-- Location: LCCOMB_X25_Y16_N12
\inst2|draw1|line1|Add8~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add8~20_combout\ = (\inst2|draw1|line1|cx\(5) & ((\inst2|draw1|line1|LessThan0~14_combout\ & (!\inst2|draw1|line1|Add8~17\)) # (!\inst2|draw1|line1|LessThan0~14_combout\ & (\inst2|draw1|line1|Add8~17\ & VCC)))) # 
-- (!\inst2|draw1|line1|cx\(5) & ((\inst2|draw1|line1|LessThan0~14_combout\ & ((\inst2|draw1|line1|Add8~17\) # (GND))) # (!\inst2|draw1|line1|LessThan0~14_combout\ & (!\inst2|draw1|line1|Add8~17\))))
-- \inst2|draw1|line1|Add8~21\ = CARRY((\inst2|draw1|line1|cx\(5) & (\inst2|draw1|line1|LessThan0~14_combout\ & !\inst2|draw1|line1|Add8~17\)) # (!\inst2|draw1|line1|cx\(5) & ((\inst2|draw1|line1|LessThan0~14_combout\) # (!\inst2|draw1|line1|Add8~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|cx\(5),
	datab => \inst2|draw1|line1|LessThan0~14_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add8~17\,
	combout => \inst2|draw1|line1|Add8~20_combout\,
	cout => \inst2|draw1|line1|Add8~21\);

-- Location: LCCOMB_X23_Y19_N14
\inst2|draw1|line1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add0~0_combout\ = (\inst2|decoder1|x\(0) & (\inst2|decoder1|w\(0) $ (VCC))) # (!\inst2|decoder1|x\(0) & ((\inst2|decoder1|w\(0)) # (GND)))
-- \inst2|draw1|line1|Add0~1\ = CARRY((\inst2|decoder1|w\(0)) # (!\inst2|decoder1|x\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|x\(0),
	datab => \inst2|decoder1|w\(0),
	datad => VCC,
	combout => \inst2|draw1|line1|Add0~0_combout\,
	cout => \inst2|draw1|line1|Add0~1\);

-- Location: LCCOMB_X23_Y19_N20
\inst2|draw1|line1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add0~6_combout\ = (\inst2|decoder1|w\(3) & ((\inst2|decoder1|x\(3) & (!\inst2|draw1|line1|Add0~5\)) # (!\inst2|decoder1|x\(3) & (\inst2|draw1|line1|Add0~5\ & VCC)))) # (!\inst2|decoder1|w\(3) & ((\inst2|decoder1|x\(3) & 
-- ((\inst2|draw1|line1|Add0~5\) # (GND))) # (!\inst2|decoder1|x\(3) & (!\inst2|draw1|line1|Add0~5\))))
-- \inst2|draw1|line1|Add0~7\ = CARRY((\inst2|decoder1|w\(3) & (\inst2|decoder1|x\(3) & !\inst2|draw1|line1|Add0~5\)) # (!\inst2|decoder1|w\(3) & ((\inst2|decoder1|x\(3)) # (!\inst2|draw1|line1|Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|w\(3),
	datab => \inst2|decoder1|x\(3),
	datad => VCC,
	cin => \inst2|draw1|line1|Add0~5\,
	combout => \inst2|draw1|line1|Add0~6_combout\,
	cout => \inst2|draw1|line1|Add0~7\);

-- Location: LCCOMB_X24_Y18_N18
\inst2|draw1|rect1|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Add1~10_combout\ = (\inst2|draw1|rect1|cx\(5) & (\inst2|draw1|rect1|Add1~9\ & VCC)) # (!\inst2|draw1|rect1|cx\(5) & (!\inst2|draw1|rect1|Add1~9\))
-- \inst2|draw1|rect1|Add1~11\ = CARRY((!\inst2|draw1|rect1|cx\(5) & !\inst2|draw1|rect1|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|draw1|rect1|cx\(5),
	datad => VCC,
	cin => \inst2|draw1|rect1|Add1~9\,
	combout => \inst2|draw1|rect1|Add1~10_combout\,
	cout => \inst2|draw1|rect1|Add1~11\);

-- Location: LCCOMB_X24_Y18_N20
\inst2|draw1|rect1|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Add1~12_combout\ = (\inst2|draw1|rect1|cx\(6) & ((GND) # (!\inst2|draw1|rect1|Add1~11\))) # (!\inst2|draw1|rect1|cx\(6) & (\inst2|draw1|rect1|Add1~11\ $ (GND)))
-- \inst2|draw1|rect1|Add1~13\ = CARRY((\inst2|draw1|rect1|cx\(6)) # (!\inst2|draw1|rect1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|cx\(6),
	datad => VCC,
	cin => \inst2|draw1|rect1|Add1~11\,
	combout => \inst2|draw1|rect1|Add1~12_combout\,
	cout => \inst2|draw1|rect1|Add1~13\);

-- Location: LCCOMB_X22_Y16_N14
\inst2|draw1|rect1|Add0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Add0~13_combout\ = (\inst2|draw1|rect1|cy\(3) & (\inst2|draw1|rect1|Add0~10\ & VCC)) # (!\inst2|draw1|rect1|cy\(3) & (!\inst2|draw1|rect1|Add0~10\))
-- \inst2|draw1|rect1|Add0~14\ = CARRY((!\inst2|draw1|rect1|cy\(3) & !\inst2|draw1|rect1|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|cy\(3),
	datad => VCC,
	cin => \inst2|draw1|rect1|Add0~10\,
	combout => \inst2|draw1|rect1|Add0~13_combout\,
	cout => \inst2|draw1|rect1|Add0~14\);

-- Location: LCCOMB_X22_Y16_N16
\inst2|draw1|rect1|Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Add0~17_combout\ = (\inst2|draw1|rect1|cy\(4) & ((GND) # (!\inst2|draw1|rect1|Add0~14\))) # (!\inst2|draw1|rect1|cy\(4) & (\inst2|draw1|rect1|Add0~14\ $ (GND)))
-- \inst2|draw1|rect1|Add0~18\ = CARRY((\inst2|draw1|rect1|cy\(4)) # (!\inst2|draw1|rect1|Add0~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|cy\(4),
	datad => VCC,
	cin => \inst2|draw1|rect1|Add0~14\,
	combout => \inst2|draw1|rect1|Add0~17_combout\,
	cout => \inst2|draw1|rect1|Add0~18\);

-- Location: LCCOMB_X22_Y16_N18
\inst2|draw1|rect1|Add0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Add0~21_combout\ = (\inst2|draw1|rect1|cy\(5) & (\inst2|draw1|rect1|Add0~18\ & VCC)) # (!\inst2|draw1|rect1|cy\(5) & (!\inst2|draw1|rect1|Add0~18\))
-- \inst2|draw1|rect1|Add0~22\ = CARRY((!\inst2|draw1|rect1|cy\(5) & !\inst2|draw1|rect1|Add0~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|draw1|rect1|cy\(5),
	datad => VCC,
	cin => \inst2|draw1|rect1|Add0~18\,
	combout => \inst2|draw1|rect1|Add0~21_combout\,
	cout => \inst2|draw1|rect1|Add0~22\);

-- Location: LCCOMB_X22_Y16_N20
\inst2|draw1|rect1|Add0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Add0~25_combout\ = \inst2|draw1|rect1|cy\(6) $ (\inst2|draw1|rect1|Add0~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|cy\(6),
	cin => \inst2|draw1|rect1|Add0~22\,
	combout => \inst2|draw1|rect1|Add0~25_combout\);

-- Location: LCCOMB_X26_Y17_N10
\inst2|draw1|line1|Add9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add9~2_combout\ = (\inst2|draw1|line1|Add1~2_combout\ & ((\inst2|draw1|line1|err\(1) & (\inst2|draw1|line1|Add9~1\ & VCC)) # (!\inst2|draw1|line1|err\(1) & (!\inst2|draw1|line1|Add9~1\)))) # (!\inst2|draw1|line1|Add1~2_combout\ & 
-- ((\inst2|draw1|line1|err\(1) & (!\inst2|draw1|line1|Add9~1\)) # (!\inst2|draw1|line1|err\(1) & ((\inst2|draw1|line1|Add9~1\) # (GND)))))
-- \inst2|draw1|line1|Add9~3\ = CARRY((\inst2|draw1|line1|Add1~2_combout\ & (!\inst2|draw1|line1|err\(1) & !\inst2|draw1|line1|Add9~1\)) # (!\inst2|draw1|line1|Add1~2_combout\ & ((!\inst2|draw1|line1|Add9~1\) # (!\inst2|draw1|line1|err\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add1~2_combout\,
	datab => \inst2|draw1|line1|err\(1),
	datad => VCC,
	cin => \inst2|draw1|line1|Add9~1\,
	combout => \inst2|draw1|line1|Add9~2_combout\,
	cout => \inst2|draw1|line1|Add9~3\);

-- Location: LCCOMB_X26_Y17_N14
\inst2|draw1|line1|Add9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add9~6_combout\ = (\inst2|draw1|line1|err\(3) & ((\inst2|draw1|line1|Add1~6_combout\ & (\inst2|draw1|line1|Add9~5\ & VCC)) # (!\inst2|draw1|line1|Add1~6_combout\ & (!\inst2|draw1|line1|Add9~5\)))) # (!\inst2|draw1|line1|err\(3) & 
-- ((\inst2|draw1|line1|Add1~6_combout\ & (!\inst2|draw1|line1|Add9~5\)) # (!\inst2|draw1|line1|Add1~6_combout\ & ((\inst2|draw1|line1|Add9~5\) # (GND)))))
-- \inst2|draw1|line1|Add9~7\ = CARRY((\inst2|draw1|line1|err\(3) & (!\inst2|draw1|line1|Add1~6_combout\ & !\inst2|draw1|line1|Add9~5\)) # (!\inst2|draw1|line1|err\(3) & ((!\inst2|draw1|line1|Add9~5\) # (!\inst2|draw1|line1|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|err\(3),
	datab => \inst2|draw1|line1|Add1~6_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add9~5\,
	combout => \inst2|draw1|line1|Add9~6_combout\,
	cout => \inst2|draw1|line1|Add9~7\);

-- Location: LCCOMB_X26_Y17_N18
\inst2|draw1|line1|Add9~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add9~10_combout\ = (\inst2|draw1|line1|err\(5) & ((\inst2|draw1|line1|Add1~10_combout\ & (\inst2|draw1|line1|Add9~9\ & VCC)) # (!\inst2|draw1|line1|Add1~10_combout\ & (!\inst2|draw1|line1|Add9~9\)))) # (!\inst2|draw1|line1|err\(5) & 
-- ((\inst2|draw1|line1|Add1~10_combout\ & (!\inst2|draw1|line1|Add9~9\)) # (!\inst2|draw1|line1|Add1~10_combout\ & ((\inst2|draw1|line1|Add9~9\) # (GND)))))
-- \inst2|draw1|line1|Add9~11\ = CARRY((\inst2|draw1|line1|err\(5) & (!\inst2|draw1|line1|Add1~10_combout\ & !\inst2|draw1|line1|Add9~9\)) # (!\inst2|draw1|line1|err\(5) & ((!\inst2|draw1|line1|Add9~9\) # (!\inst2|draw1|line1|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|err\(5),
	datab => \inst2|draw1|line1|Add1~10_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add9~9\,
	combout => \inst2|draw1|line1|Add9~10_combout\,
	cout => \inst2|draw1|line1|Add9~11\);

-- Location: LCCOMB_X26_Y17_N20
\inst2|draw1|line1|Add9~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add9~12_combout\ = ((\inst2|draw1|line1|Add1~12_combout\ $ (\inst2|draw1|line1|err\(6) $ (!\inst2|draw1|line1|Add9~11\)))) # (GND)
-- \inst2|draw1|line1|Add9~13\ = CARRY((\inst2|draw1|line1|Add1~12_combout\ & ((\inst2|draw1|line1|err\(6)) # (!\inst2|draw1|line1|Add9~11\))) # (!\inst2|draw1|line1|Add1~12_combout\ & (\inst2|draw1|line1|err\(6) & !\inst2|draw1|line1|Add9~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add1~12_combout\,
	datab => \inst2|draw1|line1|err\(6),
	datad => VCC,
	cin => \inst2|draw1|line1|Add9~11\,
	combout => \inst2|draw1|line1|Add9~12_combout\,
	cout => \inst2|draw1|line1|Add9~13\);

-- Location: LCCOMB_X25_Y18_N0
\inst2|draw1|line1|Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add4~0_combout\ = (\inst2|draw1|line1|Add3~0_combout\ & (\inst2|draw1|line1|Add1~0_combout\ $ (VCC))) # (!\inst2|draw1|line1|Add3~0_combout\ & ((\inst2|draw1|line1|Add1~0_combout\) # (GND)))
-- \inst2|draw1|line1|Add4~1\ = CARRY((\inst2|draw1|line1|Add1~0_combout\) # (!\inst2|draw1|line1|Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add3~0_combout\,
	datab => \inst2|draw1|line1|Add1~0_combout\,
	datad => VCC,
	combout => \inst2|draw1|line1|Add4~0_combout\,
	cout => \inst2|draw1|line1|Add4~1\);

-- Location: LCCOMB_X25_Y18_N4
\inst2|draw1|line1|Add4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add4~4_combout\ = ((\inst2|draw1|line1|Add3~4_combout\ $ (\inst2|draw1|line1|Add1~4_combout\ $ (\inst2|draw1|line1|Add4~3\)))) # (GND)
-- \inst2|draw1|line1|Add4~5\ = CARRY((\inst2|draw1|line1|Add3~4_combout\ & (\inst2|draw1|line1|Add1~4_combout\ & !\inst2|draw1|line1|Add4~3\)) # (!\inst2|draw1|line1|Add3~4_combout\ & ((\inst2|draw1|line1|Add1~4_combout\) # (!\inst2|draw1|line1|Add4~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add3~4_combout\,
	datab => \inst2|draw1|line1|Add1~4_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add4~3\,
	combout => \inst2|draw1|line1|Add4~4_combout\,
	cout => \inst2|draw1|line1|Add4~5\);

-- Location: LCCOMB_X25_Y18_N8
\inst2|draw1|line1|Add4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add4~8_combout\ = ((\inst2|draw1|line1|Add3~8_combout\ $ (\inst2|draw1|line1|Add1~8_combout\ $ (\inst2|draw1|line1|Add4~7\)))) # (GND)
-- \inst2|draw1|line1|Add4~9\ = CARRY((\inst2|draw1|line1|Add3~8_combout\ & (\inst2|draw1|line1|Add1~8_combout\ & !\inst2|draw1|line1|Add4~7\)) # (!\inst2|draw1|line1|Add3~8_combout\ & ((\inst2|draw1|line1|Add1~8_combout\) # (!\inst2|draw1|line1|Add4~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add3~8_combout\,
	datab => \inst2|draw1|line1|Add1~8_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add4~7\,
	combout => \inst2|draw1|line1|Add4~8_combout\,
	cout => \inst2|draw1|line1|Add4~9\);

-- Location: LCCOMB_X25_Y18_N10
\inst2|draw1|line1|Add4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add4~10_combout\ = (\inst2|draw1|line1|Add3~10_combout\ & ((\inst2|draw1|line1|Add1~10_combout\ & (!\inst2|draw1|line1|Add4~9\)) # (!\inst2|draw1|line1|Add1~10_combout\ & ((\inst2|draw1|line1|Add4~9\) # (GND))))) # 
-- (!\inst2|draw1|line1|Add3~10_combout\ & ((\inst2|draw1|line1|Add1~10_combout\ & (\inst2|draw1|line1|Add4~9\ & VCC)) # (!\inst2|draw1|line1|Add1~10_combout\ & (!\inst2|draw1|line1|Add4~9\))))
-- \inst2|draw1|line1|Add4~11\ = CARRY((\inst2|draw1|line1|Add3~10_combout\ & ((!\inst2|draw1|line1|Add4~9\) # (!\inst2|draw1|line1|Add1~10_combout\))) # (!\inst2|draw1|line1|Add3~10_combout\ & (!\inst2|draw1|line1|Add1~10_combout\ & 
-- !\inst2|draw1|line1|Add4~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add3~10_combout\,
	datab => \inst2|draw1|line1|Add1~10_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add4~9\,
	combout => \inst2|draw1|line1|Add4~10_combout\,
	cout => \inst2|draw1|line1|Add4~11\);

-- Location: LCCOMB_X25_Y18_N12
\inst2|draw1|line1|Add4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add4~12_combout\ = ((\inst2|draw1|line1|Add1~12_combout\ $ (\inst2|draw1|line1|Add3~12_combout\ $ (\inst2|draw1|line1|Add4~11\)))) # (GND)
-- \inst2|draw1|line1|Add4~13\ = CARRY((\inst2|draw1|line1|Add1~12_combout\ & ((!\inst2|draw1|line1|Add4~11\) # (!\inst2|draw1|line1|Add3~12_combout\))) # (!\inst2|draw1|line1|Add1~12_combout\ & (!\inst2|draw1|line1|Add3~12_combout\ & 
-- !\inst2|draw1|line1|Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add1~12_combout\,
	datab => \inst2|draw1|line1|Add3~12_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add4~11\,
	combout => \inst2|draw1|line1|Add4~12_combout\,
	cout => \inst2|draw1|line1|Add4~13\);

-- Location: LCCOMB_X27_Y17_N2
\inst2|draw1|line1|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add7~0_combout\ = (\inst2|draw1|line1|err\(0) & ((GND) # (!\inst2|draw1|line1|Add3~0_combout\))) # (!\inst2|draw1|line1|err\(0) & (\inst2|draw1|line1|Add3~0_combout\ $ (GND)))
-- \inst2|draw1|line1|Add7~1\ = CARRY((\inst2|draw1|line1|err\(0)) # (!\inst2|draw1|line1|Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|err\(0),
	datab => \inst2|draw1|line1|Add3~0_combout\,
	datad => VCC,
	combout => \inst2|draw1|line1|Add7~0_combout\,
	cout => \inst2|draw1|line1|Add7~1\);

-- Location: LCCOMB_X27_Y17_N10
\inst2|draw1|line1|Add7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add7~8_combout\ = ((\inst2|draw1|line1|Add3~8_combout\ $ (\inst2|draw1|line1|err\(4) $ (\inst2|draw1|line1|Add7~7\)))) # (GND)
-- \inst2|draw1|line1|Add7~9\ = CARRY((\inst2|draw1|line1|Add3~8_combout\ & (\inst2|draw1|line1|err\(4) & !\inst2|draw1|line1|Add7~7\)) # (!\inst2|draw1|line1|Add3~8_combout\ & ((\inst2|draw1|line1|err\(4)) # (!\inst2|draw1|line1|Add7~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add3~8_combout\,
	datab => \inst2|draw1|line1|err\(4),
	datad => VCC,
	cin => \inst2|draw1|line1|Add7~7\,
	combout => \inst2|draw1|line1|Add7~8_combout\,
	cout => \inst2|draw1|line1|Add7~9\);

-- Location: LCCOMB_X27_Y17_N16
\inst2|draw1|line1|Add7~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add7~14_combout\ = (\inst2|draw1|line1|Add3~14_combout\ & ((\inst2|draw1|line1|err\(7) & (!\inst2|draw1|line1|Add7~13\)) # (!\inst2|draw1|line1|err\(7) & ((\inst2|draw1|line1|Add7~13\) # (GND))))) # (!\inst2|draw1|line1|Add3~14_combout\ 
-- & ((\inst2|draw1|line1|err\(7) & (\inst2|draw1|line1|Add7~13\ & VCC)) # (!\inst2|draw1|line1|err\(7) & (!\inst2|draw1|line1|Add7~13\))))
-- \inst2|draw1|line1|Add7~15\ = CARRY((\inst2|draw1|line1|Add3~14_combout\ & ((!\inst2|draw1|line1|Add7~13\) # (!\inst2|draw1|line1|err\(7)))) # (!\inst2|draw1|line1|Add3~14_combout\ & (!\inst2|draw1|line1|err\(7) & !\inst2|draw1|line1|Add7~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add3~14_combout\,
	datab => \inst2|draw1|line1|err\(7),
	datad => VCC,
	cin => \inst2|draw1|line1|Add7~13\,
	combout => \inst2|draw1|line1|Add7~14_combout\,
	cout => \inst2|draw1|line1|Add7~15\);

-- Location: LCCOMB_X26_Y18_N22
\inst2|draw1|line1|Add5~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add5~14_combout\ = (\inst2|draw1|line1|Add7~14_combout\ & ((\inst2|draw1|line1|Add1~14_combout\ & (\inst2|draw1|line1|Add5~13\ & VCC)) # (!\inst2|draw1|line1|Add1~14_combout\ & (!\inst2|draw1|line1|Add5~13\)))) # 
-- (!\inst2|draw1|line1|Add7~14_combout\ & ((\inst2|draw1|line1|Add1~14_combout\ & (!\inst2|draw1|line1|Add5~13\)) # (!\inst2|draw1|line1|Add1~14_combout\ & ((\inst2|draw1|line1|Add5~13\) # (GND)))))
-- \inst2|draw1|line1|Add5~15\ = CARRY((\inst2|draw1|line1|Add7~14_combout\ & (!\inst2|draw1|line1|Add1~14_combout\ & !\inst2|draw1|line1|Add5~13\)) # (!\inst2|draw1|line1|Add7~14_combout\ & ((!\inst2|draw1|line1|Add5~13\) # 
-- (!\inst2|draw1|line1|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add7~14_combout\,
	datab => \inst2|draw1|line1|Add1~14_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add5~13\,
	combout => \inst2|draw1|line1|Add5~14_combout\,
	cout => \inst2|draw1|line1|Add5~15\);

-- Location: LCCOMB_X26_Y17_N24
\inst2|draw1|line1|Add9~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add9~16_combout\ = ((\inst2|draw1|line1|Add1~16_combout\ $ (\inst2|draw1|line1|err\(8) $ (!\inst2|draw1|line1|Add9~15\)))) # (GND)
-- \inst2|draw1|line1|Add9~17\ = CARRY((\inst2|draw1|line1|Add1~16_combout\ & ((\inst2|draw1|line1|err\(8)) # (!\inst2|draw1|line1|Add9~15\))) # (!\inst2|draw1|line1|Add1~16_combout\ & (\inst2|draw1|line1|err\(8) & !\inst2|draw1|line1|Add9~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add1~16_combout\,
	datab => \inst2|draw1|line1|err\(8),
	datad => VCC,
	cin => \inst2|draw1|line1|Add9~15\,
	combout => \inst2|draw1|line1|Add9~16_combout\,
	cout => \inst2|draw1|line1|Add9~17\);

-- Location: LCCOMB_X26_Y18_N24
\inst2|draw1|line1|Add5~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add5~16_combout\ = ((\inst2|draw1|line1|Add1~16_combout\ $ (\inst2|draw1|line1|Add7~16_combout\ $ (!\inst2|draw1|line1|Add5~15\)))) # (GND)
-- \inst2|draw1|line1|Add5~17\ = CARRY((\inst2|draw1|line1|Add1~16_combout\ & ((\inst2|draw1|line1|Add7~16_combout\) # (!\inst2|draw1|line1|Add5~15\))) # (!\inst2|draw1|line1|Add1~16_combout\ & (\inst2|draw1|line1|Add7~16_combout\ & 
-- !\inst2|draw1|line1|Add5~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add1~16_combout\,
	datab => \inst2|draw1|line1|Add7~16_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add5~15\,
	combout => \inst2|draw1|line1|Add5~16_combout\,
	cout => \inst2|draw1|line1|Add5~17\);

-- Location: LCCOMB_X26_Y18_N26
\inst2|draw1|line1|Add5~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add5~18_combout\ = \inst2|draw1|line1|Add1~16_combout\ $ (\inst2|draw1|line1|Add5~17\ $ (\inst2|draw1|line1|Add7~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|draw1|line1|Add1~16_combout\,
	datad => \inst2|draw1|line1|Add7~18_combout\,
	cin => \inst2|draw1|line1|Add5~17\,
	combout => \inst2|draw1|line1|Add5~18_combout\);

-- Location: LCCOMB_X21_Y18_N10
\inst2|vgacontroller1|vgavsync~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|vgavsync~0_combout\ = ((\inst2|vgacontroller1|v_count\(1) & (\inst2|vgacontroller1|v_count\(2))) # (!\inst2|vgacontroller1|v_count\(1) & ((\inst2|vgacontroller1|v_count\(0)) # (!\inst2|vgacontroller1|v_count\(2))))) # 
-- (!\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \inst2|vgacontroller1|v_count\(1),
	datac => \inst2|vgacontroller1|v_count\(2),
	datad => \inst2|vgacontroller1|v_count\(0),
	combout => \inst2|vgacontroller1|vgavsync~0_combout\);

-- Location: LCCOMB_X21_Y19_N24
\inst2|vgacontroller1|LessThan8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|LessThan8~0_combout\ = (\inst2|vgacontroller1|h_count\(5)) # ((\inst2|vgacontroller1|h_count\(1) & (\inst2|vgacontroller1|h_count\(2) & \inst2|vgacontroller1|h_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|h_count\(1),
	datab => \inst2|vgacontroller1|h_count\(2),
	datac => \inst2|vgacontroller1|h_count\(5),
	datad => \inst2|vgacontroller1|h_count\(0),
	combout => \inst2|vgacontroller1|LessThan8~0_combout\);

-- Location: LCCOMB_X21_Y18_N6
\inst2|vgacontroller1|LessThan7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|LessThan7~0_combout\ = (!\inst2|vgacontroller1|v_count\(3) & (!\inst2|vgacontroller1|v_count\(0) & (!\inst2|vgacontroller1|v_count\(4) & !\inst2|vgacontroller1|v_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|v_count\(3),
	datab => \inst2|vgacontroller1|v_count\(0),
	datac => \inst2|vgacontroller1|v_count\(4),
	datad => \inst2|vgacontroller1|v_count\(1),
	combout => \inst2|vgacontroller1|LessThan7~0_combout\);

-- Location: LCCOMB_X21_Y18_N12
\inst2|vgacontroller1|vga_combi~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|vga_combi~4_combout\ = (!\inst2|vgacontroller1|v_count\(9) & (((\inst2|vgacontroller1|LessThan7~0_combout\ & !\inst2|vgacontroller1|v_count\(2))) # (!\inst2|vgacontroller1|LessThan11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|LessThan7~0_combout\,
	datab => \inst2|vgacontroller1|v_count\(2),
	datac => \inst2|vgacontroller1|v_count\(9),
	datad => \inst2|vgacontroller1|LessThan11~0_combout\,
	combout => \inst2|vgacontroller1|vga_combi~4_combout\);

-- Location: LCCOMB_X20_Y20_N26
\inst2|draw1|rect1|draw_rect_combi~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|draw_rect_combi~0_combout\ = (!\inst2|decoder1|en\(1) & !\inst2|decoder1|en\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|decoder1|en\(1),
	datad => \inst2|decoder1|en\(2),
	combout => \inst2|draw1|rect1|draw_rect_combi~0_combout\);

-- Location: LCCOMB_X24_Y16_N10
\inst2|draw1|line1|draw_line_comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|draw_line_comb~1_combout\ = (\inst2|draw1|line1|cx\(3) & (\inst2|decoder1|w\(3) & (\inst2|draw1|line1|cx\(2) $ (!\inst2|decoder1|w\(2))))) # (!\inst2|draw1|line1|cx\(3) & (!\inst2|decoder1|w\(3) & (\inst2|draw1|line1|cx\(2) $ 
-- (!\inst2|decoder1|w\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|cx\(3),
	datab => \inst2|draw1|line1|cx\(2),
	datac => \inst2|decoder1|w\(2),
	datad => \inst2|decoder1|w\(3),
	combout => \inst2|draw1|line1|draw_line_comb~1_combout\);

-- Location: LCCOMB_X21_Y17_N4
\inst2|draw1|line1|draw_line_comb~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|draw_line_comb~6_combout\ = (\inst2|decoder1|h\(2) & (\inst2|draw1|line1|cy\(2) & (\inst2|draw1|line1|cy\(3) $ (!\inst2|decoder1|h\(3))))) # (!\inst2|decoder1|h\(2) & (!\inst2|draw1|line1|cy\(2) & (\inst2|draw1|line1|cy\(3) $ 
-- (!\inst2|decoder1|h\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|h\(2),
	datab => \inst2|draw1|line1|cy\(3),
	datac => \inst2|decoder1|h\(3),
	datad => \inst2|draw1|line1|cy\(2),
	combout => \inst2|draw1|line1|draw_line_comb~6_combout\);

-- Location: LCCOMB_X20_Y17_N10
\inst2|draw1|pixel1|done~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|pixel1|done~0_combout\ = (\inst2|draw1|pixel1|busy~regout\ & (\inst2|decoder1|en\(0) & (\reset~combout\ & \inst2|ramcontroller1|draw_can_access~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|pixel1|busy~regout\,
	datab => \inst2|decoder1|en\(0),
	datac => \reset~combout\,
	datad => \inst2|ramcontroller1|draw_can_access~0_combout\,
	combout => \inst2|draw1|pixel1|done~0_combout\);

-- Location: LCCOMB_X5_Y20_N28
\inst2|decoder1|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|LessThan0~2_combout\ = (((!\inst2|decoder1|timeout_count\(1)) # (!\inst2|decoder1|timeout_count\(12))) # (!\inst2|decoder1|timeout_count\(0))) # (!\inst2|decoder1|timeout_count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|timeout_count\(11),
	datab => \inst2|decoder1|timeout_count\(0),
	datac => \inst2|decoder1|timeout_count\(12),
	datad => \inst2|decoder1|timeout_count\(1),
	combout => \inst2|decoder1|LessThan0~2_combout\);

-- Location: LCCOMB_X5_Y20_N30
\inst2|decoder1|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|LessThan0~3_combout\ = ((\inst2|decoder1|LessThan0~2_combout\) # (!\inst2|decoder1|timeout_count\(8))) # (!\inst2|decoder1|timeout_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|timeout_count\(7),
	datac => \inst2|decoder1|timeout_count\(8),
	datad => \inst2|decoder1|LessThan0~2_combout\,
	combout => \inst2|decoder1|LessThan0~3_combout\);

-- Location: LCCOMB_X21_Y20_N26
\inst2|decoder1|en~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|en~6_combout\ = (\inst2|decoder1|current_instruction\(1) & (\inst2|decoder1|current_instruction\(2) & (!\inst2|decoder1|current_instruction\(0) & \inst4|hex0[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|current_instruction\(1),
	datab => \inst2|decoder1|current_instruction\(2),
	datac => \inst2|decoder1|current_instruction\(0),
	datad => \inst4|hex0[0]~7_combout\,
	combout => \inst2|decoder1|en~6_combout\);

-- Location: LCCOMB_X23_Y18_N16
\inst2|draw1|rect1|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Equal0~3_combout\ = (\inst2|decoder1|x\(6) & (\inst2|draw1|rect1|cx\(6) & (\inst2|draw1|rect1|cx\(7) $ (!\inst2|decoder1|x\(7))))) # (!\inst2|decoder1|x\(6) & (!\inst2|draw1|rect1|cx\(6) & (\inst2|draw1|rect1|cx\(7) $ 
-- (!\inst2|decoder1|x\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|x\(6),
	datab => \inst2|draw1|rect1|cx\(7),
	datac => \inst2|draw1|rect1|cx\(6),
	datad => \inst2|decoder1|x\(7),
	combout => \inst2|draw1|rect1|Equal0~3_combout\);

-- Location: LCCOMB_X22_Y16_N2
\inst2|draw1|rect1|almost_done_tmp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|almost_done_tmp~0_combout\ = (\inst2|decoder1|y\(0) & (\inst2|draw1|rect1|cy\(0) & (\inst2|draw1|rect1|cy\(1) $ (!\inst2|decoder1|y\(1))))) # (!\inst2|decoder1|y\(0) & (!\inst2|draw1|rect1|cy\(0) & (\inst2|draw1|rect1|cy\(1) $ 
-- (!\inst2|decoder1|y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|y\(0),
	datab => \inst2|draw1|rect1|cy\(0),
	datac => \inst2|draw1|rect1|cy\(1),
	datad => \inst2|decoder1|y\(1),
	combout => \inst2|draw1|rect1|almost_done_tmp~0_combout\);

-- Location: LCFF_X21_Y16_N13
\inst2|draw1|rect1|cy[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|rect1|Add0~15_combout\,
	ena => \inst2|draw1|rect1|cy_tmp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|rect1|cy\(3));

-- Location: LCCOMB_X20_Y20_N20
\inst2|decoder1|en~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|en~8_combout\ = (!\inst2|decoder1|current_instruction\(1) & (\inst2|decoder1|current_instruction\(0) & (\inst4|hex0[0]~7_combout\ & \inst2|decoder1|current_instruction\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|current_instruction\(1),
	datab => \inst2|decoder1|current_instruction\(0),
	datac => \inst4|hex0[0]~7_combout\,
	datad => \inst2|decoder1|current_instruction\(2),
	combout => \inst2|decoder1|en~8_combout\);

-- Location: LCCOMB_X20_Y20_N6
\inst2|decoder1|en~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|en~10_combout\ = (!\inst2|decoder1|current_instruction\(1) & (!\inst2|decoder1|current_instruction\(0) & (\inst4|hex0[0]~7_combout\ & \inst2|decoder1|current_instruction\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|current_instruction\(1),
	datab => \inst2|decoder1|current_instruction\(0),
	datac => \inst4|hex0[0]~7_combout\,
	datad => \inst2|decoder1|current_instruction\(2),
	combout => \inst2|decoder1|en~10_combout\);

-- Location: LCCOMB_X20_Y19_N12
\inst2|decoder1|next_int_ready~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|next_int_ready~0_combout\ = (\inst2|decoder1|Equal0~1_combout\ & ((\inst2|decoder1|packet_num\(2)) # ((!\inst2|decoder1|packet_num\(1))))) # (!\inst2|decoder1|Equal0~1_combout\ & (\inst2|decoder1|done~7_combout\ & 
-- ((\inst2|decoder1|packet_num\(1)) # (!\inst2|decoder1|packet_num\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|packet_num\(2),
	datab => \inst2|decoder1|Equal0~1_combout\,
	datac => \inst2|decoder1|done~7_combout\,
	datad => \inst2|decoder1|packet_num\(1),
	combout => \inst2|decoder1|next_int_ready~0_combout\);

-- Location: LCCOMB_X20_Y19_N10
\inst2|decoder1|next_int_ready~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|next_int_ready~1_combout\ = (\inst2|decoder1|next_int_ready~0_combout\ & ((\inst2|decoder1|packet_num\(2)) # ((\inst2|decoder1|packet_num\(1)) # (!\inst2|decoder1|packet_num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|next_int_ready~0_combout\,
	datab => \inst2|decoder1|packet_num\(2),
	datac => \inst2|decoder1|packet_num\(0),
	datad => \inst2|decoder1|packet_num\(1),
	combout => \inst2|decoder1|next_int_ready~1_combout\);

-- Location: LCCOMB_X20_Y20_N24
\inst2|decoder1|next_int_ready~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|next_int_ready~2_combout\ = (\inst4|hex1[3]~7_combout\ & (!\inst2|vgacontroller1|vgavsync~2_combout\)) # (!\inst4|hex1[3]~7_combout\ & (((\inst2|decoder1|next_int_ready~1_combout\) # (!\inst4|hex1[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|vgavsync~2_combout\,
	datab => \inst2|decoder1|next_int_ready~1_combout\,
	datac => \inst4|hex1[3]~7_combout\,
	datad => \inst4|hex1[2]~4_combout\,
	combout => \inst2|decoder1|next_int_ready~2_combout\);

-- Location: LCCOMB_X24_Y20_N4
\inst2|decoder1|next_int_ready~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|next_int_ready~3_combout\ = (!\inst2|spi1|spi_rx_data\(3) & (!\inst2|spi1|spi_rx_data\(5) & ((!\inst2|spi1|spi_rx_data\(1)) # (!\inst2|spi1|spi_rx_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|spi1|spi_rx_data\(2),
	datab => \inst2|spi1|spi_rx_data\(3),
	datac => \inst2|spi1|spi_rx_data\(5),
	datad => \inst2|spi1|spi_rx_data\(1),
	combout => \inst2|decoder1|next_int_ready~3_combout\);

-- Location: LCCOMB_X24_Y20_N28
\inst2|decoder1|next_int_ready~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|next_int_ready~4_combout\ = (!\inst2|spi1|spi_rx_data\(6) & !\inst2|spi1|spi_rx_data\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|spi1|spi_rx_data\(6),
	datad => \inst2|spi1|spi_rx_data\(7),
	combout => \inst2|decoder1|next_int_ready~4_combout\);

-- Location: LCCOMB_X23_Y20_N8
\inst2|decoder1|next_int_ready~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|next_int_ready~5_combout\ = (\inst2|decoder1|next_int_ready~3_combout\ & (\inst2|decoder1|next_int_ready~4_combout\ & (\inst4|hex0[0]~6_combout\ & !\inst2|spi1|spi_rx_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|next_int_ready~3_combout\,
	datab => \inst2|decoder1|next_int_ready~4_combout\,
	datac => \inst4|hex0[0]~6_combout\,
	datad => \inst2|spi1|spi_rx_data\(4),
	combout => \inst2|decoder1|next_int_ready~5_combout\);

-- Location: LCCOMB_X19_Y20_N10
\inst2|decoder1|next_int_ready~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|next_int_ready~6_combout\ = (\inst2|decoder1|Equal0~0_combout\ & (\inst2|decoder1|next_int_ready~2_combout\)) # (!\inst2|decoder1|Equal0~0_combout\ & ((!\inst2|decoder1|next_int_ready~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|next_int_ready~2_combout\,
	datac => \inst2|decoder1|next_int_ready~5_combout\,
	datad => \inst2|decoder1|Equal0~0_combout\,
	combout => \inst2|decoder1|next_int_ready~6_combout\);

-- Location: LCCOMB_X19_Y20_N24
\inst2|decoder1|current_instruction[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|current_instruction[2]~0_combout\ = (\inst2|decoder1|current_instruction\(0)) # (((\inst2|decoder1|current_instruction\(1)) # (\inst2|decoder1|current_instruction\(2))) # (!\inst2|decoder1|next_int_ready~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|current_instruction\(0),
	datab => \inst2|decoder1|next_int_ready~5_combout\,
	datac => \inst2|decoder1|current_instruction\(1),
	datad => \inst2|decoder1|current_instruction\(2),
	combout => \inst2|decoder1|current_instruction[2]~0_combout\);

-- Location: LCCOMB_X20_Y19_N24
\inst2|decoder1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|Add0~0_combout\ = (\inst2|decoder1|packet_num\(0) & \inst2|decoder1|packet_num\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|decoder1|packet_num\(0),
	datad => \inst2|decoder1|packet_num\(1),
	combout => \inst2|decoder1|Add0~0_combout\);

-- Location: LCFF_X24_Y20_N19
\inst2|spi1|index[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|spi1|index~5_combout\,
	ena => \inst2|spi1|spi_rx_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|spi1|index\(3));

-- Location: LCCOMB_X25_Y16_N30
\inst2|draw1|line1|Add8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add8~2_combout\ = (\inst2|draw1|line1|setup~regout\ & (\inst2|decoder1|x\(0))) # (!\inst2|draw1|line1|setup~regout\ & ((\inst2|draw1|line1|Add8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|x\(0),
	datac => \inst2|draw1|line1|setup~regout\,
	datad => \inst2|draw1|line1|Add8~0_combout\,
	combout => \inst2|draw1|line1|Add8~2_combout\);

-- Location: LCCOMB_X23_Y17_N14
\inst2|draw1|line1|dy~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|dy~0_combout\ = \inst2|draw1|line1|Add2~0_combout\ $ (\inst2|draw1|line1|Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add2~0_combout\,
	datad => \inst2|draw1|line1|Add2~14_combout\,
	combout => \inst2|draw1|line1|dy~0_combout\);

-- Location: LCCOMB_X25_Y16_N20
\inst2|draw1|line1|Add8~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add8~10_combout\ = (\inst2|draw1|line1|setup~regout\ & (\inst2|decoder1|x\(2))) # (!\inst2|draw1|line1|setup~regout\ & ((\inst2|draw1|line1|Add8~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|x\(2),
	datac => \inst2|draw1|line1|setup~regout\,
	datad => \inst2|draw1|line1|Add8~8_combout\,
	combout => \inst2|draw1|line1|Add8~10_combout\);

-- Location: LCCOMB_X25_Y16_N18
\inst2|draw1|line1|Add8~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add8~22_combout\ = (\inst2|draw1|line1|setup~regout\ & (\inst2|decoder1|x\(5))) # (!\inst2|draw1|line1|setup~regout\ & ((\inst2|draw1|line1|Add8~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|x\(5),
	datac => \inst2|draw1|line1|setup~regout\,
	datad => \inst2|draw1|line1|Add8~20_combout\,
	combout => \inst2|draw1|line1|Add8~22_combout\);

-- Location: LCCOMB_X24_Y20_N0
\inst2|decoder1|h~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|h~7_combout\ = (\inst2|spi1|spi_rx_data\(4) & \inst2|decoder1|current_instruction\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|spi1|spi_rx_data\(4),
	datad => \inst2|decoder1|current_instruction\(2),
	combout => \inst2|decoder1|h~7_combout\);

-- Location: LCCOMB_X20_Y19_N22
\inst2|decoder1|next_h[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|next_h[6]~2_combout\ = (\inst2|decoder1|current_instruction\(2) & (\inst2|decoder1|packet_num\(2) & (\inst2|decoder1|packet_num\(0) & !\inst2|decoder1|packet_num\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|current_instruction\(2),
	datab => \inst2|decoder1|packet_num\(2),
	datac => \inst2|decoder1|packet_num\(0),
	datad => \inst2|decoder1|packet_num\(1),
	combout => \inst2|decoder1|next_h[6]~2_combout\);

-- Location: LCCOMB_X22_Y16_N4
\inst2|draw1|rect1|cx[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cx[6]~2_combout\ = (\inst2|decoder1|h\(0) & (\inst2|draw1|rect1|cy\(0) & (\inst2|decoder1|h\(1) $ (!\inst2|draw1|rect1|cy\(1))))) # (!\inst2|decoder1|h\(0) & (!\inst2|draw1|rect1|cy\(0) & (\inst2|decoder1|h\(1) $ 
-- (!\inst2|draw1|rect1|cy\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|h\(0),
	datab => \inst2|draw1|rect1|cy\(0),
	datac => \inst2|decoder1|h\(1),
	datad => \inst2|draw1|rect1|cy\(1),
	combout => \inst2|draw1|rect1|cx[6]~2_combout\);

-- Location: LCCOMB_X23_Y18_N6
\inst2|draw1|rect1|cx_tmp[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cx_tmp[3]~9_combout\ = (\inst2|draw1|rect1|cx[6]~7_combout\ & (((\inst2|draw1|rect1|cx[6]~1_combout\)))) # (!\inst2|draw1|rect1|cx[6]~7_combout\ & ((\inst2|draw1|rect1|cx[6]~1_combout\ & (\inst2|decoder1|w\(3))) # 
-- (!\inst2|draw1|rect1|cx[6]~1_combout\ & ((\inst2|decoder1|x\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|w\(3),
	datab => \inst2|draw1|rect1|cx[6]~7_combout\,
	datac => \inst2|draw1|rect1|cx[6]~1_combout\,
	datad => \inst2|decoder1|x\(3),
	combout => \inst2|draw1|rect1|cx_tmp[3]~9_combout\);

-- Location: LCCOMB_X23_Y19_N12
\inst2|draw1|rect1|cx_tmp[7]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cx_tmp[7]~21_combout\ = (\inst2|draw1|rect1|cx[6]~7_combout\ & (((\inst2|draw1|rect1|cx[6]~1_combout\)))) # (!\inst2|draw1|rect1|cx[6]~7_combout\ & ((\inst2|draw1|rect1|cx[6]~1_combout\ & (\inst2|decoder1|w\(7))) # 
-- (!\inst2|draw1|rect1|cx[6]~1_combout\ & ((\inst2|decoder1|x\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|w\(7),
	datab => \inst2|decoder1|x\(7),
	datac => \inst2|draw1|rect1|cx[6]~7_combout\,
	datad => \inst2|draw1|rect1|cx[6]~1_combout\,
	combout => \inst2|draw1|rect1|cx_tmp[7]~21_combout\);

-- Location: LCCOMB_X21_Y16_N26
\inst2|draw1|rect1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Add0~12_combout\ = (!\inst2|draw1|rect1|started~regout\ & \inst2|decoder1|h\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|started~regout\,
	datac => \inst2|decoder1|h\(3),
	combout => \inst2|draw1|rect1|Add0~12_combout\);

-- Location: LCCOMB_X21_Y16_N12
\inst2|draw1|rect1|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Add0~15_combout\ = (\inst2|draw1|rect1|cy_tmp[0]~0_combout\ & ((\inst2|draw1|rect1|Add0~12_combout\) # ((\inst2|draw1|rect1|Add0~13_combout\ & \inst2|draw1|rect1|draw_write~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|cy_tmp[0]~0_combout\,
	datab => \inst2|draw1|rect1|Add0~12_combout\,
	datac => \inst2|draw1|rect1|Add0~13_combout\,
	datad => \inst2|draw1|rect1|draw_write~0_combout\,
	combout => \inst2|draw1|rect1|Add0~15_combout\);

-- Location: LCCOMB_X22_Y16_N6
\inst2|draw1|rect1|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Add0~20_combout\ = (\inst2|decoder1|h\(5) & !\inst2|draw1|rect1|started~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|h\(5),
	datad => \inst2|draw1|rect1|started~regout\,
	combout => \inst2|draw1|rect1|Add0~20_combout\);

-- Location: LCCOMB_X24_Y20_N24
\inst2|spi1|index[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|spi1|index[3]~2_combout\ = (!\inst2|sreset~combout\ & ((\inst2|spi1|index\(3)) # (!\inst2|spi1|index[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|spi1|index\(3),
	datab => \inst2|spi1|index[3]~0_combout\,
	datad => \inst2|sreset~combout\,
	combout => \inst2|spi1|index[3]~2_combout\);

-- Location: LCCOMB_X24_Y20_N18
\inst2|spi1|index~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|spi1|index~5_combout\ = (!\inst2|spi1|index[3]~0_combout\ & (\inst2|spi1|index\(3) & !\inst2|sreset~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|spi1|index[3]~0_combout\,
	datac => \inst2|spi1|index\(3),
	datad => \inst2|sreset~combout\,
	combout => \inst2|spi1|index~5_combout\);

-- Location: LCCOMB_X23_Y20_N16
\inst4|Equal63~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Equal63~3_combout\ = (!\inst2|decoder1|packet_num\(2) & (\inst2|decoder1|packet_num\(0) & !\inst2|decoder1|packet_num\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|packet_num\(2),
	datac => \inst2|decoder1|packet_num\(0),
	datad => \inst2|decoder1|packet_num\(1),
	combout => \inst4|Equal63~3_combout\);

-- Location: LCCOMB_X20_Y19_N6
\inst2|decoder1|w[7]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|w[7]~13_combout\ = (((\inst2|decoder1|w[7]~3_combout\) # (\inst2|decoder1|packet_num\(1))) # (!\inst2|decoder1|packet_num\(2))) # (!\inst2|decoder1|current_instruction\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|current_instruction\(2),
	datab => \inst2|decoder1|packet_num\(2),
	datac => \inst2|decoder1|w[7]~3_combout\,
	datad => \inst2|decoder1|packet_num\(1),
	combout => \inst2|decoder1|w[7]~13_combout\);

-- Location: LCCOMB_X20_Y19_N20
\inst2|decoder1|w[7]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|w[7]~3_combout\ = (\inst2|decoder1|packet_num\(0)) # ((\inst2|decoder1|current_instruction\(1) & \inst2|decoder1|current_instruction\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|current_instruction\(1),
	datac => \inst2|decoder1|packet_num\(0),
	datad => \inst2|decoder1|current_instruction\(0),
	combout => \inst2|decoder1|w[7]~3_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock_50mhz~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clock_50mhz,
	combout => \clock_50mhz~combout\);

-- Location: CLKCTRL_G10
\inst1|count[2]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|count[2]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|count[2]~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\clock_50mhz~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_50mhz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_50mhz~clkctrl_outclk\);

-- Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SPIMOSI~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SPIMOSI,
	combout => \SPIMOSI~combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LCCOMB_X20_Y20_N0
\inst2|decoder1|prev_spi_data_available~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|prev_spi_data_available~0_combout\ = (\inst2|spi1|spi_data_available~regout\ & \reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|spi1|spi_data_available~regout\,
	datac => \reset~combout\,
	combout => \inst2|decoder1|prev_spi_data_available~0_combout\);

-- Location: LCFF_X20_Y20_N1
\inst2|decoder1|prev_spi_data_available\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|prev_spi_data_available~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|prev_spi_data_available~regout\);

-- Location: LCCOMB_X23_Y20_N0
\inst2|decoder1|current_instruction~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|current_instruction~6_combout\ = (\reset~combout\ & (\inst2|decoder1|current_instruction~1_combout\ & (\inst2|spi1|spi_rx_data\(0) $ (\inst2|spi1|spi_rx_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|spi1|spi_rx_data\(0),
	datab => \reset~combout\,
	datac => \inst2|spi1|spi_rx_data\(1),
	datad => \inst2|decoder1|current_instruction~1_combout\,
	combout => \inst2|decoder1|current_instruction~6_combout\);

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SPICLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SPICLK,
	combout => \SPICLK~combout\);

-- Location: LCCOMB_X25_Y20_N24
\inst2|spi1|sclk_latched~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|spi1|sclk_latched~0_combout\ = (\SPICLK~combout\ & !\inst2|sreset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SPICLK~combout\,
	datad => \inst2|sreset~combout\,
	combout => \inst2|spi1|sclk_latched~0_combout\);

-- Location: LCFF_X25_Y20_N25
\inst2|spi1|sclk_latched\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|spi1|sclk_latched~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|spi1|sclk_latched~regout\);

-- Location: LCCOMB_X24_Y20_N20
\inst2|spi1|spi_rx_data[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|spi1|spi_rx_data[4]~0_combout\ = (\inst2|sreset~combout\) # ((!\inst2|spi1|sclk_old~regout\ & \inst2|spi1|sclk_latched~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|spi1|sclk_old~regout\,
	datab => \inst2|spi1|sclk_latched~regout\,
	datad => \inst2|sreset~combout\,
	combout => \inst2|spi1|spi_rx_data[4]~0_combout\);

-- Location: LCFF_X25_Y20_N17
\inst2|spi1|spi_rx_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|spi1|spi_rx_data\(1),
	sclr => \inst2|sreset~combout\,
	sload => VCC,
	ena => \inst2|spi1|spi_rx_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|spi1|spi_rx_data\(2));

-- Location: LCCOMB_X22_Y17_N30
\inst2|decoder1|h~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|h~5_combout\ = (\inst2|decoder1|current_instruction\(2) & \inst2|spi1|spi_rx_data\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|current_instruction\(2),
	datad => \inst2|spi1|spi_rx_data\(2),
	combout => \inst2|decoder1|h~5_combout\);

-- Location: LCCOMB_X19_Y20_N8
\inst2|decoder1|packet_num[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|packet_num[0]~5_combout\ = (\inst2|decoder1|packet_num[0]~2_combout\ & (((\inst2|decoder1|packet_num\(0))))) # (!\inst2|decoder1|packet_num[0]~2_combout\ & (\inst2|decoder1|current_instruction~1_combout\ & (!\inst2|decoder1|packet_num\(0) 
-- & \reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|packet_num[0]~2_combout\,
	datab => \inst2|decoder1|current_instruction~1_combout\,
	datac => \inst2|decoder1|packet_num\(0),
	datad => \reset~combout\,
	combout => \inst2|decoder1|packet_num[0]~5_combout\);

-- Location: LCFF_X19_Y20_N9
\inst2|decoder1|packet_num[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|packet_num[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|packet_num\(0));

-- Location: LCCOMB_X22_Y19_N28
\inst2|decoder1|current_instruction~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|current_instruction~2_combout\ = (\reset~combout\ & \inst2|decoder1|current_instruction~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datac => \inst2|decoder1|current_instruction~1_combout\,
	combout => \inst2|decoder1|current_instruction~2_combout\);

-- Location: LCCOMB_X20_Y19_N18
\inst2|decoder1|packet_num[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|packet_num[1]~4_combout\ = (\inst2|decoder1|packet_num[0]~2_combout\ & (((\inst2|decoder1|packet_num\(1))))) # (!\inst2|decoder1|packet_num[0]~2_combout\ & (\inst2|decoder1|current_instruction~2_combout\ & (\inst2|decoder1|packet_num\(0) $ 
-- (\inst2|decoder1|packet_num\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|packet_num\(0),
	datab => \inst2|decoder1|packet_num[0]~2_combout\,
	datac => \inst2|decoder1|packet_num\(1),
	datad => \inst2|decoder1|current_instruction~2_combout\,
	combout => \inst2|decoder1|packet_num[1]~4_combout\);

-- Location: LCFF_X20_Y19_N19
\inst2|decoder1|packet_num[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|packet_num[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|packet_num\(1));

-- Location: LCCOMB_X20_Y19_N2
\inst4|hex0[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|hex0[0]~7_combout\ = (\inst2|decoder1|packet_num\(2) & (\inst2|decoder1|packet_num\(0) & !\inst2|decoder1|packet_num\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|packet_num\(2),
	datac => \inst2|decoder1|packet_num\(0),
	datad => \inst2|decoder1|packet_num\(1),
	combout => \inst4|hex0[0]~7_combout\);

-- Location: LCCOMB_X20_Y20_N4
\inst2|decoder1|h~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|h~1_combout\ = (\inst4|hex0[0]~7_combout\ & (\inst2|decoder1|current_instruction\(2) & ((!\inst2|decoder1|current_instruction\(0)) # (!\inst2|decoder1|current_instruction\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|current_instruction\(1),
	datab => \inst2|decoder1|current_instruction\(0),
	datac => \inst4|hex0[0]~7_combout\,
	datad => \inst2|decoder1|current_instruction\(2),
	combout => \inst2|decoder1|h~1_combout\);

-- Location: LCCOMB_X22_Y19_N2
\inst4|hex1[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|hex1[2]~4_combout\ = ((\inst2|decoder1|current_instruction\(2)) # (\inst2|decoder1|current_instruction\(0))) # (!\inst2|decoder1|current_instruction\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|current_instruction\(1),
	datac => \inst2|decoder1|current_instruction\(2),
	datad => \inst2|decoder1|current_instruction\(0),
	combout => \inst4|hex1[2]~4_combout\);

-- Location: LCCOMB_X20_Y20_N2
\inst2|decoder1|h~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|h~2_combout\ = ((\inst2|decoder1|decode_comb~0_combout\ & ((\inst2|decoder1|h~1_combout\) # (!\inst4|hex1[2]~4_combout\)))) # (!\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|decode_comb~0_combout\,
	datab => \inst2|decoder1|h~1_combout\,
	datac => \reset~combout\,
	datad => \inst4|hex1[2]~4_combout\,
	combout => \inst2|decoder1|h~2_combout\);

-- Location: LCFF_X23_Y17_N13
\inst2|decoder1|h[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|decoder1|h~5_combout\,
	sclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \inst2|decoder1|h~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|h\(2));

-- Location: LCCOMB_X21_Y16_N28
\inst2|draw1|rect1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Add0~8_combout\ = (!\inst2|draw1|rect1|started~regout\ & \inst2|decoder1|h\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|started~regout\,
	datac => \inst2|decoder1|h\(2),
	combout => \inst2|draw1|rect1|Add0~8_combout\);

-- Location: LCCOMB_X23_Y19_N0
\inst2|decoder1|h~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|h~0_combout\ = (\inst2|spi1|spi_rx_data\(1) & \inst2|decoder1|current_instruction\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|spi1|spi_rx_data\(1),
	datad => \inst2|decoder1|current_instruction\(2),
	combout => \inst2|decoder1|h~0_combout\);

-- Location: LCFF_X23_Y17_N29
\inst2|decoder1|h[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|decoder1|h~0_combout\,
	sclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \inst2|decoder1|h~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|h\(1));

-- Location: LCCOMB_X24_Y20_N26
\inst2|spi1|index[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|spi1|index[3]~0_combout\ = (!\inst2|spi1|index\(2) & (!\inst2|spi1|index\(1) & !\inst2|spi1|index\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|spi1|index\(2),
	datab => \inst2|spi1|index\(1),
	datad => \inst2|spi1|index\(0),
	combout => \inst2|spi1|index[3]~0_combout\);

-- Location: LCCOMB_X24_Y20_N10
\inst2|spi1|index~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|spi1|index~1_combout\ = ((\inst2|sreset~combout\) # ((!\inst2|spi1|index\(3) & \inst2|spi1|index[3]~0_combout\))) # (!\inst2|spi1|index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|spi1|index\(3),
	datab => \inst2|spi1|index[3]~0_combout\,
	datac => \inst2|spi1|index\(0),
	datad => \inst2|sreset~combout\,
	combout => \inst2|spi1|index~1_combout\);

-- Location: LCFF_X24_Y20_N11
\inst2|spi1|index[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|spi1|index~1_combout\,
	ena => \inst2|spi1|spi_rx_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|spi1|index\(0));

-- Location: LCCOMB_X24_Y20_N22
\inst2|spi1|index~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|spi1|index~3_combout\ = (\inst2|spi1|index\(1) $ (!\inst2|spi1|index\(0))) # (!\inst2|spi1|index[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|spi1|index[3]~2_combout\,
	datac => \inst2|spi1|index\(1),
	datad => \inst2|spi1|index\(0),
	combout => \inst2|spi1|index~3_combout\);

-- Location: LCFF_X24_Y20_N23
\inst2|spi1|index[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|spi1|index~3_combout\,
	ena => \inst2|spi1|spi_rx_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|spi1|index\(1));

-- Location: LCCOMB_X24_Y20_N6
\inst2|spi1|index~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|spi1|index~4_combout\ = (\inst2|spi1|index\(2) $ (((!\inst2|spi1|index\(1) & !\inst2|spi1|index\(0))))) # (!\inst2|spi1|index[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|spi1|index[3]~2_combout\,
	datab => \inst2|spi1|index\(1),
	datac => \inst2|spi1|index\(2),
	datad => \inst2|spi1|index\(0),
	combout => \inst2|spi1|index~4_combout\);

-- Location: LCFF_X24_Y20_N7
\inst2|spi1|index[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|spi1|index~4_combout\,
	ena => \inst2|spi1|spi_rx_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|spi1|index\(2));

-- Location: LCCOMB_X24_Y20_N12
\inst2|spi1|sclk_old~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|spi1|sclk_old~0_combout\ = (\inst2|spi1|sclk_latched~regout\ & !\inst2|sreset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|spi1|sclk_latched~regout\,
	datad => \inst2|sreset~combout\,
	combout => \inst2|spi1|sclk_old~0_combout\);

-- Location: LCFF_X24_Y20_N13
\inst2|spi1|sclk_old\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|spi1|sclk_old~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|spi1|sclk_old~regout\);

-- Location: LCCOMB_X24_Y20_N30
\inst2|spi1|spi_data_available~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|spi1|spi_data_available~0_combout\ = (\inst2|spi1|index\(0) & (\inst2|spi1|index\(1) & (\inst2|spi1|sclk_old~regout\ & !\inst2|spi1|sclk_latched~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|spi1|index\(0),
	datab => \inst2|spi1|index\(1),
	datac => \inst2|spi1|sclk_old~regout\,
	datad => \inst2|spi1|sclk_latched~regout\,
	combout => \inst2|spi1|spi_data_available~0_combout\);

-- Location: LCCOMB_X24_Y20_N16
\inst2|spi1|spi_data_available~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|spi1|spi_data_available~1_combout\ = (!\inst2|spi1|index\(3) & (\inst2|spi1|index\(2) & (\inst2|spi1|spi_data_available~0_combout\ & !\inst2|sreset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|spi1|index\(3),
	datab => \inst2|spi1|index\(2),
	datac => \inst2|spi1|spi_data_available~0_combout\,
	datad => \inst2|sreset~combout\,
	combout => \inst2|spi1|spi_data_available~1_combout\);

-- Location: LCFF_X24_Y20_N17
\inst2|spi1|spi_data_available\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|spi1|spi_data_available~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|spi1|spi_data_available~regout\);

-- Location: LCCOMB_X20_Y20_N16
\inst2|decoder1|decode_comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|decode_comb~1_combout\ = (!\inst2|decoder1|prev_spi_data_available~regout\ & \inst2|spi1|spi_data_available~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|prev_spi_data_available~regout\,
	datac => \inst2|spi1|spi_data_available~regout\,
	combout => \inst2|decoder1|decode_comb~1_combout\);

-- Location: LCCOMB_X20_Y20_N22
\inst2|decoder1|en~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|en~5_combout\ = (\inst2|decoder1|current_instruction\(2) & (((\inst2|decoder1|decode_comb~1_combout\)))) # (!\inst2|decoder1|current_instruction\(2) & (\inst2|decoder1|current_instruction\(1) & ((\inst2|decoder1|decode_comb~1_combout\) # 
-- (!\inst2|decoder1|current_instruction\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|current_instruction\(2),
	datab => \inst2|decoder1|current_instruction\(0),
	datac => \inst2|decoder1|decode_comb~1_combout\,
	datad => \inst2|decoder1|current_instruction\(1),
	combout => \inst2|decoder1|en~5_combout\);

-- Location: LCCOMB_X20_Y20_N28
\inst2|decoder1|en~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|en~9_combout\ = (\inst2|decoder1|en~5_combout\ & ((\inst2|decoder1|en~8_combout\) # ((\inst2|decoder1|en\(2) & \inst4|hex1[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|en~8_combout\,
	datab => \inst2|decoder1|en~5_combout\,
	datac => \inst2|decoder1|en\(2),
	datad => \inst4|hex1[2]~4_combout\,
	combout => \inst2|decoder1|en~9_combout\);

-- Location: LCCOMB_X19_Y20_N14
\inst4|hex1[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|hex1[3]~8_combout\ = (!\inst2|decoder1|current_instruction\(2) & !\inst2|decoder1|current_instruction\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|current_instruction\(2),
	datac => \inst2|decoder1|current_instruction\(1),
	combout => \inst4|hex1[3]~8_combout\);

-- Location: LCCOMB_X19_Y20_N0
\inst2|decoder1|en~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|en~3_combout\ = (!\inst2|decoder1|spi_reset~0_combout\ & \inst2|draw1|draw_ready~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|spi_reset~0_combout\,
	datad => \inst2|draw1|draw_ready~1_combout\,
	combout => \inst2|decoder1|en~3_combout\);

-- Location: LCCOMB_X19_Y20_N12
\inst2|decoder1|en~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|en~4_combout\ = ((\inst2|decoder1|decode_comb~0_combout\ & (!\inst4|hex1[3]~8_combout\)) # (!\inst2|decoder1|decode_comb~0_combout\ & ((!\inst2|decoder1|en~3_combout\)))) # (!\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \inst2|decoder1|decode_comb~0_combout\,
	datac => \inst4|hex1[3]~8_combout\,
	datad => \inst2|decoder1|en~3_combout\,
	combout => \inst2|decoder1|en~4_combout\);

-- Location: LCFF_X20_Y20_N29
\inst2|decoder1|en[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|en~9_combout\,
	sclr => \ALT_INV_reset~combout\,
	ena => \inst2|decoder1|en~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|en\(2));

-- Location: LCCOMB_X20_Y20_N14
\inst2|decoder1|en~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|en~11_combout\ = (\inst2|decoder1|en~5_combout\ & ((\inst2|decoder1|en~10_combout\) # ((\inst2|decoder1|en\(1) & \inst4|hex1[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|en~10_combout\,
	datab => \inst2|decoder1|en~5_combout\,
	datac => \inst2|decoder1|en\(1),
	datad => \inst4|hex1[2]~4_combout\,
	combout => \inst2|decoder1|en~11_combout\);

-- Location: LCFF_X20_Y20_N15
\inst2|decoder1|en[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|en~11_combout\,
	sclr => \ALT_INV_reset~combout\,
	ena => \inst2|decoder1|en~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|en\(1));

-- Location: LCCOMB_X21_Y20_N8
\inst2|draw1|rect1|cy_tmp[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cy_tmp[0]~0_combout\ = (\reset~combout\ & ((\inst2|decoder1|en\(2)) # (\inst2|decoder1|en\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|en\(2),
	datac => \reset~combout\,
	datad => \inst2|decoder1|en\(1),
	combout => \inst2|draw1|rect1|cy_tmp[0]~0_combout\);

-- Location: LCCOMB_X25_Y20_N6
\inst2|decoder1|next_is_init~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|next_is_init~0_combout\ = (\inst2|spi1|spi_rx_data\(0) & (\inst2|spi1|spi_rx_data\(2) & \inst2|spi1|spi_rx_data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|spi1|spi_rx_data\(0),
	datac => \inst2|spi1|spi_rx_data\(2),
	datad => \inst2|spi1|spi_rx_data\(1),
	combout => \inst2|decoder1|next_is_init~0_combout\);

-- Location: LCCOMB_X21_Y20_N12
\inst2|decoder1|next_is_init~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|next_is_init~1_combout\ = (\inst2|decoder1|decoder_claim~regout\ & ((\inst2|decoder1|Equal0~0_combout\) # ((\inst2|decoder1|next_is_init~0_combout\) # (!\inst2|decoder1|decode_comb~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|Equal0~0_combout\,
	datab => \inst2|decoder1|decode_comb~0_combout\,
	datac => \inst2|decoder1|decoder_claim~regout\,
	datad => \inst2|decoder1|next_is_init~0_combout\,
	combout => \inst2|decoder1|next_is_init~1_combout\);

-- Location: LCFF_X21_Y20_N13
\inst2|decoder1|decoder_claim\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|next_is_init~1_combout\,
	sdata => VCC,
	sload => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|decoder_claim~regout\);

-- Location: LCCOMB_X20_Y18_N22
\inst2|vgacontroller1|new_v_count[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|new_v_count[6]~7_combout\ = (\inst2|vgacontroller1|Add1~12_combout\ & !\inst2|vgacontroller1|LessThan9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|Add1~12_combout\,
	datac => \inst2|vgacontroller1|LessThan9~2_combout\,
	combout => \inst2|vgacontroller1|new_v_count[6]~7_combout\);

-- Location: LCCOMB_X21_Y19_N4
\inst2|vgacontroller1|h_count[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|h_count[0]~8_combout\ = \inst2|vgacontroller1|h_count\(0) $ (VCC)
-- \inst2|vgacontroller1|h_count[0]~9\ = CARRY(\inst2|vgacontroller1|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|vgacontroller1|h_count\(0),
	datad => VCC,
	combout => \inst2|vgacontroller1|h_count[0]~8_combout\,
	cout => \inst2|vgacontroller1|h_count[0]~9\);

-- Location: LCCOMB_X22_Y19_N8
\reset~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \reset~_wirecell_combout\ = !\reset~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	combout => \reset~_wirecell_combout\);

-- Location: LCFF_X21_Y19_N5
\inst2|vgacontroller1|h_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|vgacontroller1|h_count[0]~8_combout\,
	sdata => \reset~_wirecell_combout\,
	sload => \inst2|vgacontroller1|h_count[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|vgacontroller1|h_count\(0));

-- Location: LCCOMB_X21_Y19_N6
\inst2|vgacontroller1|h_count[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|h_count[1]~10_combout\ = (\inst2|vgacontroller1|h_count\(1) & (!\inst2|vgacontroller1|h_count[0]~9\)) # (!\inst2|vgacontroller1|h_count\(1) & ((\inst2|vgacontroller1|h_count[0]~9\) # (GND)))
-- \inst2|vgacontroller1|h_count[1]~11\ = CARRY((!\inst2|vgacontroller1|h_count[0]~9\) # (!\inst2|vgacontroller1|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|h_count\(1),
	datad => VCC,
	cin => \inst2|vgacontroller1|h_count[0]~9\,
	combout => \inst2|vgacontroller1|h_count[1]~10_combout\,
	cout => \inst2|vgacontroller1|h_count[1]~11\);

-- Location: LCCOMB_X21_Y19_N8
\inst2|vgacontroller1|h_count[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|h_count[2]~12_combout\ = (\inst2|vgacontroller1|h_count\(2) & (\inst2|vgacontroller1|h_count[1]~11\ $ (GND))) # (!\inst2|vgacontroller1|h_count\(2) & (!\inst2|vgacontroller1|h_count[1]~11\ & VCC))
-- \inst2|vgacontroller1|h_count[2]~13\ = CARRY((\inst2|vgacontroller1|h_count\(2) & !\inst2|vgacontroller1|h_count[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|vgacontroller1|h_count\(2),
	datad => VCC,
	cin => \inst2|vgacontroller1|h_count[1]~11\,
	combout => \inst2|vgacontroller1|h_count[2]~12_combout\,
	cout => \inst2|vgacontroller1|h_count[2]~13\);

-- Location: LCFF_X21_Y19_N9
\inst2|vgacontroller1|h_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|vgacontroller1|h_count[2]~12_combout\,
	sdata => \reset~_wirecell_combout\,
	sload => \inst2|vgacontroller1|h_count[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|vgacontroller1|h_count\(2));

-- Location: LCCOMB_X21_Y19_N12
\inst2|vgacontroller1|h_count[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|h_count[4]~16_combout\ = (\inst2|vgacontroller1|h_count\(4) & (\inst2|vgacontroller1|h_count[3]~15\ $ (GND))) # (!\inst2|vgacontroller1|h_count\(4) & (!\inst2|vgacontroller1|h_count[3]~15\ & VCC))
-- \inst2|vgacontroller1|h_count[4]~17\ = CARRY((\inst2|vgacontroller1|h_count\(4) & !\inst2|vgacontroller1|h_count[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|h_count\(4),
	datad => VCC,
	cin => \inst2|vgacontroller1|h_count[3]~15\,
	combout => \inst2|vgacontroller1|h_count[4]~16_combout\,
	cout => \inst2|vgacontroller1|h_count[4]~17\);

-- Location: LCCOMB_X21_Y19_N14
\inst2|vgacontroller1|h_count[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|h_count[5]~19_combout\ = (\inst2|vgacontroller1|h_count\(5) & (!\inst2|vgacontroller1|h_count[4]~17\)) # (!\inst2|vgacontroller1|h_count\(5) & ((\inst2|vgacontroller1|h_count[4]~17\) # (GND)))
-- \inst2|vgacontroller1|h_count[5]~20\ = CARRY((!\inst2|vgacontroller1|h_count[4]~17\) # (!\inst2|vgacontroller1|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|vgacontroller1|h_count\(5),
	datad => VCC,
	cin => \inst2|vgacontroller1|h_count[4]~17\,
	combout => \inst2|vgacontroller1|h_count[5]~19_combout\,
	cout => \inst2|vgacontroller1|h_count[5]~20\);

-- Location: LCCOMB_X21_Y19_N2
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCFF_X21_Y19_N15
\inst2|vgacontroller1|h_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|vgacontroller1|h_count[5]~19_combout\,
	sdata => \~GND~combout\,
	sload => \inst2|vgacontroller1|h_count[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|vgacontroller1|h_count\(5));

-- Location: LCCOMB_X21_Y19_N16
\inst2|vgacontroller1|h_count[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|h_count[6]~21_combout\ = (\inst2|vgacontroller1|h_count\(6) & (\inst2|vgacontroller1|h_count[5]~20\ $ (GND))) # (!\inst2|vgacontroller1|h_count\(6) & (!\inst2|vgacontroller1|h_count[5]~20\ & VCC))
-- \inst2|vgacontroller1|h_count[6]~22\ = CARRY((\inst2|vgacontroller1|h_count\(6) & !\inst2|vgacontroller1|h_count[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|h_count\(6),
	datad => VCC,
	cin => \inst2|vgacontroller1|h_count[5]~20\,
	combout => \inst2|vgacontroller1|h_count[6]~21_combout\,
	cout => \inst2|vgacontroller1|h_count[6]~22\);

-- Location: LCCOMB_X21_Y19_N18
\inst2|vgacontroller1|h_count[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|h_count[7]~23_combout\ = \inst2|vgacontroller1|h_count[6]~22\ $ (\inst2|vgacontroller1|h_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|vgacontroller1|h_count\(7),
	cin => \inst2|vgacontroller1|h_count[6]~22\,
	combout => \inst2|vgacontroller1|h_count[7]~23_combout\);

-- Location: LCFF_X21_Y19_N19
\inst2|vgacontroller1|h_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|vgacontroller1|h_count[7]~23_combout\,
	sdata => \reset~_wirecell_combout\,
	sload => \inst2|vgacontroller1|h_count[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|vgacontroller1|h_count\(7));

-- Location: LCFF_X21_Y19_N17
\inst2|vgacontroller1|h_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|vgacontroller1|h_count[6]~21_combout\,
	sdata => \reset~_wirecell_combout\,
	sload => \inst2|vgacontroller1|h_count[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|vgacontroller1|h_count\(6));

-- Location: LCFF_X21_Y19_N13
\inst2|vgacontroller1|h_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|vgacontroller1|h_count[4]~16_combout\,
	sdata => \~GND~combout\,
	sload => \inst2|vgacontroller1|h_count[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|vgacontroller1|h_count\(4));

-- Location: LCCOMB_X21_Y19_N30
\inst2|vgacontroller1|LessThan8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|LessThan8~1_combout\ = (!\inst2|vgacontroller1|h_count\(3) & !\inst2|vgacontroller1|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|h_count\(3),
	datad => \inst2|vgacontroller1|h_count\(4),
	combout => \inst2|vgacontroller1|LessThan8~1_combout\);

-- Location: LCCOMB_X21_Y19_N20
\inst2|vgacontroller1|LessThan8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|LessThan8~2_combout\ = (\inst2|vgacontroller1|h_count\(7) & (\inst2|vgacontroller1|h_count\(6) & ((\inst2|vgacontroller1|LessThan8~0_combout\) # (!\inst2|vgacontroller1|LessThan8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|LessThan8~0_combout\,
	datab => \inst2|vgacontroller1|h_count\(7),
	datac => \inst2|vgacontroller1|h_count\(6),
	datad => \inst2|vgacontroller1|LessThan8~1_combout\,
	combout => \inst2|vgacontroller1|LessThan8~2_combout\);

-- Location: LCCOMB_X21_Y18_N4
\inst2|vgacontroller1|h_count[2]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|h_count[2]~18_combout\ = (\inst2|vgacontroller1|LessThan8~2_combout\) # (!\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|vgacontroller1|LessThan8~2_combout\,
	datad => \reset~combout\,
	combout => \inst2|vgacontroller1|h_count[2]~18_combout\);

-- Location: LCFF_X20_Y18_N23
\inst2|vgacontroller1|v_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|vgacontroller1|new_v_count[6]~7_combout\,
	sclr => \ALT_INV_reset~combout\,
	ena => \inst2|vgacontroller1|h_count[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|vgacontroller1|v_count\(6));

-- Location: LCCOMB_X21_Y18_N24
\inst2|vgacontroller1|new_v_count[7]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|new_v_count[7]~6_combout\ = (\inst2|vgacontroller1|Add1~14_combout\ & !\inst2|vgacontroller1|LessThan9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|Add1~14_combout\,
	datad => \inst2|vgacontroller1|LessThan9~2_combout\,
	combout => \inst2|vgacontroller1|new_v_count[7]~6_combout\);

-- Location: LCFF_X21_Y18_N25
\inst2|vgacontroller1|v_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|vgacontroller1|new_v_count[7]~6_combout\,
	sclr => \ALT_INV_reset~combout\,
	ena => \inst2|vgacontroller1|h_count[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|vgacontroller1|v_count\(7));

-- Location: LCCOMB_X20_Y18_N0
\inst2|vgacontroller1|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|Add1~0_combout\ = \inst2|vgacontroller1|v_count\(0) $ (VCC)
-- \inst2|vgacontroller1|Add1~1\ = CARRY(\inst2|vgacontroller1|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|vgacontroller1|v_count\(0),
	datad => VCC,
	combout => \inst2|vgacontroller1|Add1~0_combout\,
	cout => \inst2|vgacontroller1|Add1~1\);

-- Location: LCCOMB_X20_Y18_N26
\inst2|vgacontroller1|new_v_count[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|new_v_count[0]~1_combout\ = (\reset~combout\ & (\inst2|vgacontroller1|Add1~0_combout\ & !\inst2|vgacontroller1|LessThan9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \inst2|vgacontroller1|Add1~0_combout\,
	datac => \inst2|vgacontroller1|LessThan9~2_combout\,
	combout => \inst2|vgacontroller1|new_v_count[0]~1_combout\);

-- Location: LCFF_X20_Y18_N27
\inst2|vgacontroller1|v_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|vgacontroller1|new_v_count[0]~1_combout\,
	ena => \inst2|vgacontroller1|h_count[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|vgacontroller1|v_count\(0));

-- Location: LCCOMB_X20_Y18_N2
\inst2|vgacontroller1|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|Add1~2_combout\ = (\inst2|vgacontroller1|v_count\(1) & (!\inst2|vgacontroller1|Add1~1\)) # (!\inst2|vgacontroller1|v_count\(1) & ((\inst2|vgacontroller1|Add1~1\) # (GND)))
-- \inst2|vgacontroller1|Add1~3\ = CARRY((!\inst2|vgacontroller1|Add1~1\) # (!\inst2|vgacontroller1|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|vgacontroller1|v_count\(1),
	datad => VCC,
	cin => \inst2|vgacontroller1|Add1~1\,
	combout => \inst2|vgacontroller1|Add1~2_combout\,
	cout => \inst2|vgacontroller1|Add1~3\);

-- Location: LCCOMB_X20_Y18_N28
\inst2|vgacontroller1|new_v_count[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|new_v_count[1]~2_combout\ = ((\inst2|vgacontroller1|Add1~2_combout\ & !\inst2|vgacontroller1|LessThan9~2_combout\)) # (!\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \inst2|vgacontroller1|Add1~2_combout\,
	datac => \inst2|vgacontroller1|LessThan9~2_combout\,
	combout => \inst2|vgacontroller1|new_v_count[1]~2_combout\);

-- Location: LCFF_X20_Y18_N29
\inst2|vgacontroller1|v_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|vgacontroller1|new_v_count[1]~2_combout\,
	ena => \inst2|vgacontroller1|h_count[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|vgacontroller1|v_count\(1));

-- Location: LCCOMB_X20_Y18_N4
\inst2|vgacontroller1|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|Add1~4_combout\ = (\inst2|vgacontroller1|v_count\(2) & (\inst2|vgacontroller1|Add1~3\ $ (GND))) # (!\inst2|vgacontroller1|v_count\(2) & (!\inst2|vgacontroller1|Add1~3\ & VCC))
-- \inst2|vgacontroller1|Add1~5\ = CARRY((\inst2|vgacontroller1|v_count\(2) & !\inst2|vgacontroller1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|v_count\(2),
	datad => VCC,
	cin => \inst2|vgacontroller1|Add1~3\,
	combout => \inst2|vgacontroller1|Add1~4_combout\,
	cout => \inst2|vgacontroller1|Add1~5\);

-- Location: LCCOMB_X20_Y18_N6
\inst2|vgacontroller1|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|Add1~6_combout\ = (\inst2|vgacontroller1|v_count\(3) & (!\inst2|vgacontroller1|Add1~5\)) # (!\inst2|vgacontroller1|v_count\(3) & ((\inst2|vgacontroller1|Add1~5\) # (GND)))
-- \inst2|vgacontroller1|Add1~7\ = CARRY((!\inst2|vgacontroller1|Add1~5\) # (!\inst2|vgacontroller1|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|vgacontroller1|v_count\(3),
	datad => VCC,
	cin => \inst2|vgacontroller1|Add1~5\,
	combout => \inst2|vgacontroller1|Add1~6_combout\,
	cout => \inst2|vgacontroller1|Add1~7\);

-- Location: LCCOMB_X21_Y18_N22
\inst2|vgacontroller1|v_count[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|v_count[3]~0_combout\ = (\inst2|vgacontroller1|Add1~6_combout\ & !\inst2|vgacontroller1|LessThan9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|vgacontroller1|Add1~6_combout\,
	datad => \inst2|vgacontroller1|LessThan9~2_combout\,
	combout => \inst2|vgacontroller1|v_count[3]~0_combout\);

-- Location: LCCOMB_X21_Y18_N28
\inst2|vgacontroller1|v_count[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|v_count[3]~1_combout\ = ((\inst2|vgacontroller1|LessThan8~2_combout\ & (\inst2|vgacontroller1|v_count[3]~0_combout\)) # (!\inst2|vgacontroller1|LessThan8~2_combout\ & ((\inst2|vgacontroller1|v_count\(3))))) # (!\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|LessThan8~2_combout\,
	datab => \inst2|vgacontroller1|v_count[3]~0_combout\,
	datac => \inst2|vgacontroller1|v_count\(3),
	datad => \reset~combout\,
	combout => \inst2|vgacontroller1|v_count[3]~1_combout\);

-- Location: LCFF_X21_Y18_N29
\inst2|vgacontroller1|v_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|vgacontroller1|v_count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|vgacontroller1|v_count\(3));

-- Location: LCCOMB_X20_Y18_N16
\inst2|vgacontroller1|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|Add1~16_combout\ = (\inst2|vgacontroller1|v_count\(8) & (\inst2|vgacontroller1|Add1~15\ $ (GND))) # (!\inst2|vgacontroller1|v_count\(8) & (!\inst2|vgacontroller1|Add1~15\ & VCC))
-- \inst2|vgacontroller1|Add1~17\ = CARRY((\inst2|vgacontroller1|v_count\(8) & !\inst2|vgacontroller1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|vgacontroller1|v_count\(8),
	datad => VCC,
	cin => \inst2|vgacontroller1|Add1~15\,
	combout => \inst2|vgacontroller1|Add1~16_combout\,
	cout => \inst2|vgacontroller1|Add1~17\);

-- Location: LCCOMB_X21_Y18_N30
\inst2|vgacontroller1|new_v_count[8]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|new_v_count[8]~5_combout\ = (\inst2|vgacontroller1|Add1~16_combout\ & !\inst2|vgacontroller1|LessThan9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|vgacontroller1|Add1~16_combout\,
	datad => \inst2|vgacontroller1|LessThan9~2_combout\,
	combout => \inst2|vgacontroller1|new_v_count[8]~5_combout\);

-- Location: LCFF_X21_Y18_N31
\inst2|vgacontroller1|v_count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|vgacontroller1|new_v_count[8]~5_combout\,
	sclr => \ALT_INV_reset~combout\,
	ena => \inst2|vgacontroller1|h_count[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|vgacontroller1|v_count\(8));

-- Location: LCCOMB_X20_Y18_N24
\inst2|vgacontroller1|new_v_count[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|new_v_count[2]~0_combout\ = (!\inst2|vgacontroller1|LessThan9~2_combout\ & \inst2|vgacontroller1|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|vgacontroller1|LessThan9~2_combout\,
	datac => \inst2|vgacontroller1|Add1~4_combout\,
	combout => \inst2|vgacontroller1|new_v_count[2]~0_combout\);

-- Location: LCFF_X20_Y18_N25
\inst2|vgacontroller1|v_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|vgacontroller1|new_v_count[2]~0_combout\,
	sclr => \ALT_INV_reset~combout\,
	ena => \inst2|vgacontroller1|h_count[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|vgacontroller1|v_count\(2));

-- Location: LCCOMB_X21_Y18_N20
\inst2|vgacontroller1|LessThan9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|LessThan9~0_combout\ = (\inst2|vgacontroller1|v_count\(7)) # ((\inst2|vgacontroller1|v_count\(8)) # ((\inst2|vgacontroller1|v_count\(2) & \inst2|vgacontroller1|v_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|v_count\(7),
	datab => \inst2|vgacontroller1|v_count\(8),
	datac => \inst2|vgacontroller1|v_count\(2),
	datad => \inst2|vgacontroller1|v_count\(3),
	combout => \inst2|vgacontroller1|LessThan9~0_combout\);

-- Location: LCCOMB_X20_Y18_N20
\inst2|vgacontroller1|new_v_count[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|new_v_count[5]~8_combout\ = (\inst2|vgacontroller1|Add1~10_combout\ & !\inst2|vgacontroller1|LessThan9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|Add1~10_combout\,
	datac => \inst2|vgacontroller1|LessThan9~2_combout\,
	combout => \inst2|vgacontroller1|new_v_count[5]~8_combout\);

-- Location: LCFF_X20_Y18_N21
\inst2|vgacontroller1|v_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|vgacontroller1|new_v_count[5]~8_combout\,
	sclr => \ALT_INV_reset~combout\,
	ena => \inst2|vgacontroller1|h_count[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|vgacontroller1|v_count\(5));

-- Location: LCCOMB_X21_Y18_N26
\inst2|vgacontroller1|LessThan9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|LessThan9~1_combout\ = (\inst2|vgacontroller1|v_count\(4)) # (\inst2|vgacontroller1|v_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|v_count\(4),
	datac => \inst2|vgacontroller1|v_count\(5),
	combout => \inst2|vgacontroller1|LessThan9~1_combout\);

-- Location: LCCOMB_X21_Y18_N0
\inst2|vgacontroller1|LessThan9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|LessThan9~2_combout\ = (\inst2|vgacontroller1|v_count\(9) & ((\inst2|vgacontroller1|v_count\(6)) # ((\inst2|vgacontroller1|LessThan9~0_combout\) # (\inst2|vgacontroller1|LessThan9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|v_count\(9),
	datab => \inst2|vgacontroller1|v_count\(6),
	datac => \inst2|vgacontroller1|LessThan9~0_combout\,
	datad => \inst2|vgacontroller1|LessThan9~1_combout\,
	combout => \inst2|vgacontroller1|LessThan9~2_combout\);

-- Location: LCCOMB_X21_Y19_N26
\inst2|vgacontroller1|vga_combi~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|vga_combi~2_combout\ = (!\inst2|vgacontroller1|h_count\(1) & (!\inst2|vgacontroller1|h_count\(2) & (!\inst2|vgacontroller1|h_count\(0) & \inst2|vgacontroller1|LessThan8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|h_count\(1),
	datab => \inst2|vgacontroller1|h_count\(2),
	datac => \inst2|vgacontroller1|h_count\(0),
	datad => \inst2|vgacontroller1|LessThan8~1_combout\,
	combout => \inst2|vgacontroller1|vga_combi~2_combout\);

-- Location: LCCOMB_X21_Y19_N0
\inst2|vgacontroller1|vga_combi~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|vga_combi~3_combout\ = ((!\inst2|vgacontroller1|h_count\(6) & ((\inst2|vgacontroller1|vga_combi~2_combout\) # (!\inst2|vgacontroller1|h_count\(5))))) # (!\inst2|vgacontroller1|h_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|h_count\(6),
	datab => \inst2|vgacontroller1|h_count\(7),
	datac => \inst2|vgacontroller1|h_count\(5),
	datad => \inst2|vgacontroller1|vga_combi~2_combout\,
	combout => \inst2|vgacontroller1|vga_combi~3_combout\);

-- Location: LCCOMB_X21_Y18_N14
\inst2|vgacontroller1|vga_combi~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|vga_combi~5_combout\ = (\inst2|vgacontroller1|LessThan9~2_combout\) # ((\inst2|vgacontroller1|LessThan8~2_combout\) # ((\inst2|vgacontroller1|vga_combi~4_combout\ & \inst2|vgacontroller1|vga_combi~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|vga_combi~4_combout\,
	datab => \inst2|vgacontroller1|LessThan9~2_combout\,
	datac => \inst2|vgacontroller1|LessThan8~2_combout\,
	datad => \inst2|vgacontroller1|vga_combi~3_combout\,
	combout => \inst2|vgacontroller1|vga_combi~5_combout\);

-- Location: LCCOMB_X20_Y17_N12
\inst2|ramcontroller1|draw_can_access~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ramcontroller1|draw_can_access~0_combout\ = (!\inst2|decoder1|decoder_claim~regout\ & ((!\inst2|vgacontroller1|vga_combi~5_combout\) # (!\reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datac => \inst2|decoder1|decoder_claim~regout\,
	datad => \inst2|vgacontroller1|vga_combi~5_combout\,
	combout => \inst2|ramcontroller1|draw_can_access~0_combout\);

-- Location: LCCOMB_X22_Y17_N6
\inst2|draw1|rect1|started_tmp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|started_tmp~0_combout\ = (\inst2|draw1|rect1|cy_tmp[0]~0_combout\ & ((\inst2|draw1|rect1|started~regout\) # (\inst2|ramcontroller1|draw_can_access~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|draw1|rect1|cy_tmp[0]~0_combout\,
	datac => \inst2|draw1|rect1|started~regout\,
	datad => \inst2|ramcontroller1|draw_can_access~0_combout\,
	combout => \inst2|draw1|rect1|started_tmp~0_combout\);

-- Location: LCFF_X22_Y17_N7
\inst2|draw1|rect1|started\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|rect1|started_tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|rect1|started~regout\);

-- Location: LCCOMB_X22_Y16_N28
\inst2|draw1|rect1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Add0~4_combout\ = (\inst2|decoder1|h\(1) & !\inst2|draw1|rect1|started~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|h\(1),
	datad => \inst2|draw1|rect1|started~regout\,
	combout => \inst2|draw1|rect1|Add0~4_combout\);

-- Location: LCCOMB_X23_Y19_N2
\inst2|decoder1|h~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|h~3_combout\ = (\inst2|spi1|spi_rx_data\(0) & \inst2|decoder1|current_instruction\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|spi1|spi_rx_data\(0),
	datad => \inst2|decoder1|current_instruction\(2),
	combout => \inst2|decoder1|h~3_combout\);

-- Location: LCFF_X23_Y17_N11
\inst2|decoder1|h[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|decoder1|h~3_combout\,
	sclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \inst2|decoder1|h~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|h\(0));

-- Location: LCCOMB_X22_Y16_N0
\inst2|draw1|rect1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Add0~0_combout\ = (\inst2|decoder1|h\(0) & !\inst2|draw1|rect1|started~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|decoder1|h\(0),
	datad => \inst2|draw1|rect1|started~regout\,
	combout => \inst2|draw1|rect1|Add0~0_combout\);

-- Location: LCCOMB_X22_Y16_N8
\inst2|draw1|rect1|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Add0~1_combout\ = \inst2|draw1|rect1|cy\(0) $ (VCC)
-- \inst2|draw1|rect1|Add0~2\ = CARRY(\inst2|draw1|rect1|cy\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|draw1|rect1|cy\(0),
	datad => VCC,
	combout => \inst2|draw1|rect1|Add0~1_combout\,
	cout => \inst2|draw1|rect1|Add0~2\);

-- Location: LCCOMB_X21_Y16_N6
\inst2|draw1|rect1|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Add0~3_combout\ = (\inst2|draw1|rect1|cy_tmp[0]~0_combout\ & ((\inst2|draw1|rect1|Add0~0_combout\) # ((\inst2|draw1|rect1|draw_write~0_combout\ & \inst2|draw1|rect1|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|draw_write~0_combout\,
	datab => \inst2|draw1|rect1|Add0~0_combout\,
	datac => \inst2|draw1|rect1|Add0~1_combout\,
	datad => \inst2|draw1|rect1|cy_tmp[0]~0_combout\,
	combout => \inst2|draw1|rect1|Add0~3_combout\);

-- Location: LCCOMB_X21_Y20_N14
\inst2|draw1|rect1|cy_tmp[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cy_tmp[0]~1_combout\ = (!\inst2|decoder1|decoder_claim~regout\ & !\inst2|vgacontroller1|vga_combi~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|decoder_claim~regout\,
	datad => \inst2|vgacontroller1|vga_combi~5_combout\,
	combout => \inst2|draw1|rect1|cy_tmp[0]~1_combout\);

-- Location: LCCOMB_X22_Y17_N24
\inst2|decoder1|x~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|x~5_combout\ = (\inst2|spi1|spi_rx_data\(2) & (\inst2|decoder1|current_instruction\(2) $ (((\inst2|decoder1|current_instruction\(1) & \inst2|decoder1|current_instruction\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|current_instruction\(2),
	datab => \inst2|decoder1|current_instruction\(1),
	datac => \inst2|decoder1|current_instruction\(0),
	datad => \inst2|spi1|spi_rx_data\(2),
	combout => \inst2|decoder1|x~5_combout\);

-- Location: LCCOMB_X23_Y20_N28
\inst4|Equal63~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Equal63~0_combout\ = (!\inst2|decoder1|packet_num\(2) & (!\inst2|decoder1|packet_num\(0) & \inst2|decoder1|packet_num\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|packet_num\(2),
	datac => \inst2|decoder1|packet_num\(0),
	datad => \inst2|decoder1|packet_num\(1),
	combout => \inst4|Equal63~0_combout\);

-- Location: LCCOMB_X22_Y17_N26
\inst2|decoder1|x[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|x[5]~1_combout\ = \inst2|decoder1|current_instruction\(2) $ (((\inst2|decoder1|current_instruction\(0) & \inst2|decoder1|current_instruction\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|current_instruction\(2),
	datac => \inst2|decoder1|current_instruction\(0),
	datad => \inst2|decoder1|current_instruction\(1),
	combout => \inst2|decoder1|x[5]~1_combout\);

-- Location: LCCOMB_X23_Y20_N22
\inst2|decoder1|x~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|x~2_combout\ = ((\inst2|decoder1|y~0_combout\ & ((\inst4|Equal63~0_combout\) # (!\inst2|decoder1|x[5]~1_combout\)))) # (!\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|y~0_combout\,
	datab => \inst4|Equal63~0_combout\,
	datac => \reset~combout\,
	datad => \inst2|decoder1|x[5]~1_combout\,
	combout => \inst2|decoder1|x~2_combout\);

-- Location: LCFF_X24_Y19_N15
\inst2|decoder1|x[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|decoder1|x~5_combout\,
	sclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \inst2|decoder1|x~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|x\(2));

-- Location: LCCOMB_X23_Y20_N6
\inst2|sreset~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|sreset~0_combout\ = ((\inst2|decoder1|current_instruction\(1) & (!\inst2|decoder1|current_instruction\(2) & !\inst2|decoder1|current_instruction\(0)))) # (!\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|current_instruction\(1),
	datab => \inst2|decoder1|current_instruction\(2),
	datac => \reset~combout\,
	datad => \inst2|decoder1|current_instruction\(0),
	combout => \inst2|sreset~0_combout\);

-- Location: LCCOMB_X22_Y19_N26
\inst2|decoder1|w[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|w[7]~12_combout\ = ((\inst2|decoder1|decode_comb~0_combout\ & ((!\inst4|hex1[2]~4_combout\) # (!\inst2|decoder1|w[7]~13_combout\)))) # (!\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|w[7]~13_combout\,
	datab => \inst4|hex1[2]~4_combout\,
	datac => \reset~combout\,
	datad => \inst2|decoder1|decode_comb~0_combout\,
	combout => \inst2|decoder1|w[7]~12_combout\);

-- Location: LCFF_X23_Y19_N19
\inst2|decoder1|w[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|spi1|spi_rx_data\(2),
	sclr => \inst2|sreset~0_combout\,
	sload => VCC,
	ena => \inst2|decoder1|w[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|w\(2));

-- Location: LCCOMB_X22_Y19_N0
\inst2|decoder1|next_h[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|next_h[6]~0_combout\ = (\inst2|decoder1|current_instruction\(1) & (!\inst2|decoder1|current_instruction\(0) & ((\inst2|decoder1|decode_comb~1_combout\) # (!\inst2|decoder1|current_instruction\(2))))) # 
-- (!\inst2|decoder1|current_instruction\(1) & (\inst2|decoder1|decode_comb~1_combout\ & (\inst2|decoder1|current_instruction\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|decode_comb~1_combout\,
	datab => \inst2|decoder1|current_instruction\(1),
	datac => \inst2|decoder1|current_instruction\(2),
	datad => \inst2|decoder1|current_instruction\(0),
	combout => \inst2|decoder1|next_h[6]~0_combout\);

-- Location: LCFF_X24_Y20_N15
\inst2|spi1|spi_rx_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|spi1|spi_rx_data\(2),
	sclr => \inst2|sreset~combout\,
	sload => VCC,
	ena => \inst2|spi1|spi_rx_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|spi1|spi_rx_data\(3));

-- Location: LCFF_X24_Y20_N1
\inst2|spi1|spi_rx_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|spi1|spi_rx_data\(3),
	sclr => \inst2|sreset~combout\,
	sload => VCC,
	ena => \inst2|spi1|spi_rx_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|spi1|spi_rx_data\(4));

-- Location: LCFF_X24_Y20_N25
\inst2|spi1|spi_rx_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|spi1|spi_rx_data\(4),
	sclr => \inst2|sreset~combout\,
	sload => VCC,
	ena => \inst2|spi1|spi_rx_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|spi1|spi_rx_data\(5));

-- Location: LCFF_X24_Y20_N9
\inst2|spi1|spi_rx_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|spi1|spi_rx_data\(5),
	sclr => \inst2|sreset~combout\,
	sload => VCC,
	ena => \inst2|spi1|spi_rx_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|spi1|spi_rx_data\(6));

-- Location: LCCOMB_X22_Y19_N30
\inst2|decoder1|next_h[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|next_h[6]~1_combout\ = (\inst2|decoder1|h\(6) & (((\inst2|decoder1|current_instruction\(2) & !\inst4|hex0[0]~7_combout\)) # (!\inst2|decoder1|next_h[6]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|h\(6),
	datab => \inst2|decoder1|current_instruction\(2),
	datac => \inst4|hex0[0]~7_combout\,
	datad => \inst2|decoder1|next_h[6]~0_combout\,
	combout => \inst2|decoder1|next_h[6]~1_combout\);

-- Location: LCCOMB_X22_Y19_N20
\inst2|decoder1|next_h[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|next_h[6]~3_combout\ = (\inst2|decoder1|next_h[6]~1_combout\) # ((\inst2|decoder1|next_h[6]~2_combout\ & (\inst2|decoder1|next_h[6]~0_combout\ & \inst2|spi1|spi_rx_data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|next_h[6]~2_combout\,
	datab => \inst2|decoder1|next_h[6]~0_combout\,
	datac => \inst2|spi1|spi_rx_data\(6),
	datad => \inst2|decoder1|next_h[6]~1_combout\,
	combout => \inst2|decoder1|next_h[6]~3_combout\);

-- Location: LCFF_X22_Y17_N13
\inst2|decoder1|h[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|decoder1|next_h[6]~3_combout\,
	sclr => \ALT_INV_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|h\(6));

-- Location: LCCOMB_X23_Y16_N2
\inst2|draw1|rect1|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Add0~24_combout\ = (\inst2|decoder1|h\(6) & !\inst2|draw1|rect1|started~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|decoder1|h\(6),
	datad => \inst2|draw1|rect1|started~regout\,
	combout => \inst2|draw1|rect1|Add0~24_combout\);

-- Location: LCCOMB_X23_Y16_N28
\inst2|draw1|rect1|draw_write~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|draw_write~0_combout\ = (!\inst2|draw1|rect1|almost_done~regout\ & \inst2|draw1|rect1|started~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|draw1|rect1|almost_done~regout\,
	datad => \inst2|draw1|rect1|started~regout\,
	combout => \inst2|draw1|rect1|draw_write~0_combout\);

-- Location: LCCOMB_X23_Y16_N8
\inst2|draw1|rect1|Add0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Add0~27_combout\ = (\inst2|draw1|rect1|cy_tmp[0]~0_combout\ & ((\inst2|draw1|rect1|Add0~24_combout\) # ((\inst2|draw1|rect1|Add0~25_combout\ & \inst2|draw1|rect1|draw_write~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|Add0~25_combout\,
	datab => \inst2|draw1|rect1|Add0~24_combout\,
	datac => \inst2|draw1|rect1|cy_tmp[0]~0_combout\,
	datad => \inst2|draw1|rect1|draw_write~0_combout\,
	combout => \inst2|draw1|rect1|Add0~27_combout\);

-- Location: LCFF_X22_Y16_N27
\inst2|draw1|rect1|cy[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|draw1|rect1|Add0~27_combout\,
	sload => VCC,
	ena => \inst2|draw1|rect1|cy_tmp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|rect1|cy\(6));

-- Location: LCCOMB_X21_Y16_N14
\inst2|draw1|rect1|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Equal2~0_combout\ = \inst2|draw1|rect1|cy\(6) $ (\inst2|decoder1|h\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|draw1|rect1|cy\(6),
	datad => \inst2|decoder1|h\(6),
	combout => \inst2|draw1|rect1|Equal2~0_combout\);

-- Location: LCCOMB_X23_Y19_N6
\inst2|decoder1|h~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|h~4_combout\ = (\inst2|decoder1|current_instruction\(2) & \inst2|spi1|spi_rx_data\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|current_instruction\(2),
	datad => \inst2|spi1|spi_rx_data\(3),
	combout => \inst2|decoder1|h~4_combout\);

-- Location: LCFF_X23_Y17_N31
\inst2|decoder1|h[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|decoder1|h~4_combout\,
	sclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \inst2|decoder1|h~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|h\(3));

-- Location: LCCOMB_X21_Y16_N4
\inst2|draw1|rect1|cx[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cx[6]~3_combout\ = (\inst2|draw1|rect1|cy\(3) & (\inst2|decoder1|h\(3) & (\inst2|decoder1|h\(2) $ (!\inst2|draw1|rect1|cy\(2))))) # (!\inst2|draw1|rect1|cy\(3) & (!\inst2|decoder1|h\(3) & (\inst2|decoder1|h\(2) $ 
-- (!\inst2|draw1|rect1|cy\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|cy\(3),
	datab => \inst2|decoder1|h\(2),
	datac => \inst2|decoder1|h\(3),
	datad => \inst2|draw1|rect1|cy\(2),
	combout => \inst2|draw1|rect1|cx[6]~3_combout\);

-- Location: LCCOMB_X22_Y17_N20
\inst2|decoder1|h~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|h~6_combout\ = (\inst2|spi1|spi_rx_data\(5) & \inst2|decoder1|current_instruction\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|spi1|spi_rx_data\(5),
	datad => \inst2|decoder1|current_instruction\(2),
	combout => \inst2|decoder1|h~6_combout\);

-- Location: LCFF_X23_Y17_N9
\inst2|decoder1|h[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|decoder1|h~6_combout\,
	sclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \inst2|decoder1|h~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|h\(5));

-- Location: LCCOMB_X22_Y16_N26
\inst2|draw1|rect1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Add0~16_combout\ = (\inst2|decoder1|h\(4) & !\inst2|draw1|rect1|started~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|h\(4),
	datad => \inst2|draw1|rect1|started~regout\,
	combout => \inst2|draw1|rect1|Add0~16_combout\);

-- Location: LCCOMB_X22_Y16_N24
\inst2|draw1|rect1|Add0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Add0~19_combout\ = (\inst2|draw1|rect1|cy_tmp[0]~0_combout\ & ((\inst2|draw1|rect1|Add0~16_combout\) # ((\inst2|draw1|rect1|Add0~17_combout\ & \inst2|draw1|rect1|draw_write~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|Add0~17_combout\,
	datab => \inst2|draw1|rect1|Add0~16_combout\,
	datac => \inst2|draw1|rect1|cy_tmp[0]~0_combout\,
	datad => \inst2|draw1|rect1|draw_write~0_combout\,
	combout => \inst2|draw1|rect1|Add0~19_combout\);

-- Location: LCFF_X22_Y16_N25
\inst2|draw1|rect1|cy[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|rect1|Add0~19_combout\,
	ena => \inst2|draw1|rect1|cy_tmp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|rect1|cy\(4));

-- Location: LCCOMB_X22_Y16_N12
\inst2|draw1|rect1|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Add0~9_combout\ = (\inst2|draw1|rect1|cy\(2) & ((GND) # (!\inst2|draw1|rect1|Add0~6\))) # (!\inst2|draw1|rect1|cy\(2) & (\inst2|draw1|rect1|Add0~6\ $ (GND)))
-- \inst2|draw1|rect1|Add0~10\ = CARRY((\inst2|draw1|rect1|cy\(2)) # (!\inst2|draw1|rect1|Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|draw1|rect1|cy\(2),
	datad => VCC,
	cin => \inst2|draw1|rect1|Add0~6\,
	combout => \inst2|draw1|rect1|Add0~9_combout\,
	cout => \inst2|draw1|rect1|Add0~10\);

-- Location: LCCOMB_X22_Y16_N22
\inst2|draw1|rect1|Add0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Add0~23_combout\ = (\inst2|draw1|rect1|cy_tmp[0]~0_combout\ & ((\inst2|draw1|rect1|Add0~20_combout\) # ((\inst2|draw1|rect1|Add0~21_combout\ & \inst2|draw1|rect1|draw_write~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|Add0~20_combout\,
	datab => \inst2|draw1|rect1|Add0~21_combout\,
	datac => \inst2|draw1|rect1|cy_tmp[0]~0_combout\,
	datad => \inst2|draw1|rect1|draw_write~0_combout\,
	combout => \inst2|draw1|rect1|Add0~23_combout\);

-- Location: LCFF_X22_Y16_N23
\inst2|draw1|rect1|cy[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|rect1|Add0~23_combout\,
	ena => \inst2|draw1|rect1|cy_tmp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|rect1|cy\(5));

-- Location: LCCOMB_X22_Y16_N30
\inst2|draw1|rect1|cx[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cx[6]~4_combout\ = (\inst2|decoder1|h\(4) & (\inst2|draw1|rect1|cy\(4) & (\inst2|decoder1|h\(5) $ (!\inst2|draw1|rect1|cy\(5))))) # (!\inst2|decoder1|h\(4) & (!\inst2|draw1|rect1|cy\(4) & (\inst2|decoder1|h\(5) $ 
-- (!\inst2|draw1|rect1|cy\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|h\(4),
	datab => \inst2|decoder1|h\(5),
	datac => \inst2|draw1|rect1|cy\(4),
	datad => \inst2|draw1|rect1|cy\(5),
	combout => \inst2|draw1|rect1|cx[6]~4_combout\);

-- Location: LCCOMB_X21_Y16_N24
\inst2|draw1|rect1|cx[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cx[6]~5_combout\ = (\inst2|draw1|rect1|cx[6]~2_combout\ & (!\inst2|draw1|rect1|Equal2~0_combout\ & (\inst2|draw1|rect1|cx[6]~3_combout\ & \inst2|draw1|rect1|cx[6]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|cx[6]~2_combout\,
	datab => \inst2|draw1|rect1|Equal2~0_combout\,
	datac => \inst2|draw1|rect1|cx[6]~3_combout\,
	datad => \inst2|draw1|rect1|cx[6]~4_combout\,
	combout => \inst2|draw1|rect1|cx[6]~5_combout\);

-- Location: LCCOMB_X21_Y20_N30
\inst2|draw1|rect1|cx[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cx[6]~6_combout\ = (\inst2|draw1|rect1|almost_done_tmp~3_combout\) # ((\inst2|draw1|rect1|cx[6]~5_combout\) # ((!\inst2|decoder1|en\(1) & \inst2|decoder1|en\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|en\(1),
	datab => \inst2|decoder1|en\(2),
	datac => \inst2|draw1|rect1|almost_done_tmp~3_combout\,
	datad => \inst2|draw1|rect1|cx[6]~5_combout\,
	combout => \inst2|draw1|rect1|cx[6]~6_combout\);

-- Location: LCCOMB_X21_Y20_N24
\inst2|vgacontroller1|vga_claim~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|vga_claim~0_combout\ = (!\inst2|decoder1|decoder_claim~regout\ & (\reset~combout\ & \inst2|vgacontroller1|vga_combi~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|decoder_claim~regout\,
	datac => \reset~combout\,
	datad => \inst2|vgacontroller1|vga_combi~5_combout\,
	combout => \inst2|vgacontroller1|vga_claim~0_combout\);

-- Location: LCCOMB_X22_Y18_N12
\inst2|draw1|rect1|cx[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cx[6]~0_combout\ = (\inst2|draw1|rect1|started~regout\ & ((\inst2|draw1|rect1|almost_done~regout\) # (!\inst2|draw1|rect1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|almost_done~regout\,
	datac => \inst2|draw1|rect1|started~regout\,
	datad => \inst2|draw1|rect1|Equal0~4_combout\,
	combout => \inst2|draw1|rect1|cx[6]~0_combout\);

-- Location: LCCOMB_X21_Y20_N16
\inst2|draw1|rect1|cx[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cx[6]~7_combout\ = (\inst2|decoder1|decoder_claim~regout\) # ((\inst2|vgacontroller1|vga_claim~0_combout\) # ((\inst2|draw1|rect1|cx[6]~6_combout\ & \inst2|draw1|rect1|cx[6]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|decoder_claim~regout\,
	datab => \inst2|draw1|rect1|cx[6]~6_combout\,
	datac => \inst2|vgacontroller1|vga_claim~0_combout\,
	datad => \inst2|draw1|rect1|cx[6]~0_combout\,
	combout => \inst2|draw1|rect1|cx[6]~7_combout\);

-- Location: LCCOMB_X21_Y20_N22
\inst2|draw1|rect1|cx[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cx[6]~1_combout\ = (\inst2|decoder1|decoder_claim~regout\) # (((\reset~combout\ & \inst2|vgacontroller1|vga_combi~5_combout\)) # (!\inst2|draw1|rect1|cx[6]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|decoder_claim~regout\,
	datab => \inst2|draw1|rect1|cx[6]~0_combout\,
	datac => \reset~combout\,
	datad => \inst2|vgacontroller1|vga_combi~5_combout\,
	combout => \inst2|draw1|rect1|cx[6]~1_combout\);

-- Location: LCFF_X23_Y19_N9
\inst2|decoder1|w[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|spi1|spi_rx_data\(1),
	sclr => \inst2|sreset~0_combout\,
	sload => VCC,
	ena => \inst2|decoder1|w[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|w\(1));

-- Location: LCCOMB_X23_Y19_N8
\inst2|draw1|rect1|cx_tmp[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cx_tmp[1]~3_combout\ = (\inst2|draw1|rect1|cx[6]~1_combout\ & (((\inst2|decoder1|w\(1)) # (\inst2|draw1|rect1|cx[6]~7_combout\)))) # (!\inst2|draw1|rect1|cx[6]~1_combout\ & (\inst2|decoder1|x\(1) & 
-- ((!\inst2|draw1|rect1|cx[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|x\(1),
	datab => \inst2|draw1|rect1|cx[6]~1_combout\,
	datac => \inst2|decoder1|w\(1),
	datad => \inst2|draw1|rect1|cx[6]~7_combout\,
	combout => \inst2|draw1|rect1|cx_tmp[1]~3_combout\);

-- Location: LCCOMB_X24_Y18_N8
\inst2|draw1|rect1|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Add1~0_combout\ = \inst2|draw1|rect1|cx\(0) $ (VCC)
-- \inst2|draw1|rect1|Add1~1\ = CARRY(\inst2|draw1|rect1|cx\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|draw1|rect1|cx\(0),
	datad => VCC,
	combout => \inst2|draw1|rect1|Add1~0_combout\,
	cout => \inst2|draw1|rect1|Add1~1\);

-- Location: LCCOMB_X25_Y18_N24
\inst2|draw1|rect1|cx_tmp[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cx_tmp[0]~0_combout\ = (\inst2|draw1|rect1|cx[6]~7_combout\ & (((\inst2|draw1|rect1|Add1~0_combout\) # (\inst2|draw1|rect1|cx[6]~1_combout\)))) # (!\inst2|draw1|rect1|cx[6]~7_combout\ & (\inst2|decoder1|x\(0) & 
-- ((!\inst2|draw1|rect1|cx[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|x\(0),
	datab => \inst2|draw1|rect1|Add1~0_combout\,
	datac => \inst2|draw1|rect1|cx[6]~7_combout\,
	datad => \inst2|draw1|rect1|cx[6]~1_combout\,
	combout => \inst2|draw1|rect1|cx_tmp[0]~0_combout\);

-- Location: LCCOMB_X25_Y18_N18
\inst2|draw1|rect1|cx_tmp[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cx_tmp[0]~1_combout\ = (\inst2|draw1|rect1|cx_tmp[0]~0_combout\ & (((\inst2|draw1|rect1|cx\(0)) # (!\inst2|draw1|rect1|cx[6]~1_combout\)))) # (!\inst2|draw1|rect1|cx_tmp[0]~0_combout\ & (\inst2|decoder1|w\(0) & 
-- ((\inst2|draw1|rect1|cx[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|w\(0),
	datab => \inst2|draw1|rect1|cx\(0),
	datac => \inst2|draw1|rect1|cx_tmp[0]~0_combout\,
	datad => \inst2|draw1|rect1|cx[6]~1_combout\,
	combout => \inst2|draw1|rect1|cx_tmp[0]~1_combout\);

-- Location: LCCOMB_X25_Y18_N30
\inst2|draw1|rect1|cx_tmp[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cx_tmp[0]~2_combout\ = (\inst2|draw1|rect1|cy_tmp[0]~0_combout\ & (\inst2|draw1|rect1|cx_tmp[0]~1_combout\ & ((\inst2|draw1|rect1|cx[6]~1_combout\) # (!\inst2|draw1|rect1|almost_done~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|almost_done~regout\,
	datab => \inst2|draw1|rect1|cy_tmp[0]~0_combout\,
	datac => \inst2|draw1|rect1|cx[6]~1_combout\,
	datad => \inst2|draw1|rect1|cx_tmp[0]~1_combout\,
	combout => \inst2|draw1|rect1|cx_tmp[0]~2_combout\);

-- Location: LCFF_X25_Y18_N31
\inst2|draw1|rect1|cx[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|rect1|cx_tmp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|rect1|cx\(0));

-- Location: LCCOMB_X24_Y18_N10
\inst2|draw1|rect1|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Add1~2_combout\ = (\inst2|draw1|rect1|cx\(1) & (\inst2|draw1|rect1|Add1~1\ & VCC)) # (!\inst2|draw1|rect1|cx\(1) & (!\inst2|draw1|rect1|Add1~1\))
-- \inst2|draw1|rect1|Add1~3\ = CARRY((!\inst2|draw1|rect1|cx\(1) & !\inst2|draw1|rect1|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|draw1|rect1|cx\(1),
	datad => VCC,
	cin => \inst2|draw1|rect1|Add1~1\,
	combout => \inst2|draw1|rect1|Add1~2_combout\,
	cout => \inst2|draw1|rect1|Add1~3\);

-- Location: LCCOMB_X24_Y18_N0
\inst2|draw1|rect1|cx_tmp[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cx_tmp[1]~4_combout\ = (\inst2|draw1|rect1|cx[6]~7_combout\ & ((\inst2|draw1|rect1|cx_tmp[1]~3_combout\ & (\inst2|draw1|rect1|cx\(1))) # (!\inst2|draw1|rect1|cx_tmp[1]~3_combout\ & ((\inst2|draw1|rect1|Add1~2_combout\))))) # 
-- (!\inst2|draw1|rect1|cx[6]~7_combout\ & (((\inst2|draw1|rect1|cx_tmp[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|cx[6]~7_combout\,
	datab => \inst2|draw1|rect1|cx\(1),
	datac => \inst2|draw1|rect1|cx_tmp[1]~3_combout\,
	datad => \inst2|draw1|rect1|Add1~2_combout\,
	combout => \inst2|draw1|rect1|cx_tmp[1]~4_combout\);

-- Location: LCCOMB_X24_Y18_N28
\inst2|draw1|rect1|cx_tmp[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cx_tmp[1]~5_combout\ = (\inst2|draw1|rect1|cy_tmp[0]~0_combout\ & (\inst2|draw1|rect1|cx_tmp[1]~4_combout\ & ((\inst2|draw1|rect1|cx[6]~1_combout\) # (!\inst2|draw1|rect1|almost_done~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|almost_done~regout\,
	datab => \inst2|draw1|rect1|cx[6]~1_combout\,
	datac => \inst2|draw1|rect1|cy_tmp[0]~0_combout\,
	datad => \inst2|draw1|rect1|cx_tmp[1]~4_combout\,
	combout => \inst2|draw1|rect1|cx_tmp[1]~5_combout\);

-- Location: LCFF_X24_Y18_N29
\inst2|draw1|rect1|cx[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|rect1|cx_tmp[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|rect1|cx\(1));

-- Location: LCCOMB_X24_Y18_N12
\inst2|draw1|rect1|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Add1~4_combout\ = (\inst2|draw1|rect1|cx\(2) & ((GND) # (!\inst2|draw1|rect1|Add1~3\))) # (!\inst2|draw1|rect1|cx\(2) & (\inst2|draw1|rect1|Add1~3\ $ (GND)))
-- \inst2|draw1|rect1|Add1~5\ = CARRY((\inst2|draw1|rect1|cx\(2)) # (!\inst2|draw1|rect1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|draw1|rect1|cx\(2),
	datad => VCC,
	cin => \inst2|draw1|rect1|Add1~3\,
	combout => \inst2|draw1|rect1|Add1~4_combout\,
	cout => \inst2|draw1|rect1|Add1~5\);

-- Location: LCCOMB_X23_Y18_N22
\inst2|draw1|rect1|cx_tmp[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cx_tmp[2]~6_combout\ = (\inst2|draw1|rect1|cx[6]~1_combout\ & (((\inst2|draw1|rect1|cx[6]~7_combout\)))) # (!\inst2|draw1|rect1|cx[6]~1_combout\ & ((\inst2|draw1|rect1|cx[6]~7_combout\ & ((\inst2|draw1|rect1|Add1~4_combout\))) # 
-- (!\inst2|draw1|rect1|cx[6]~7_combout\ & (\inst2|decoder1|x\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|cx[6]~1_combout\,
	datab => \inst2|decoder1|x\(2),
	datac => \inst2|draw1|rect1|cx[6]~7_combout\,
	datad => \inst2|draw1|rect1|Add1~4_combout\,
	combout => \inst2|draw1|rect1|cx_tmp[2]~6_combout\);

-- Location: LCCOMB_X23_Y18_N20
\inst2|draw1|rect1|cx_tmp[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cx_tmp[2]~7_combout\ = (\inst2|draw1|rect1|cx[6]~1_combout\ & ((\inst2|draw1|rect1|cx_tmp[2]~6_combout\ & (\inst2|draw1|rect1|cx\(2))) # (!\inst2|draw1|rect1|cx_tmp[2]~6_combout\ & ((\inst2|decoder1|w\(2)))))) # 
-- (!\inst2|draw1|rect1|cx[6]~1_combout\ & (((\inst2|draw1|rect1|cx_tmp[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|cx[6]~1_combout\,
	datab => \inst2|draw1|rect1|cx\(2),
	datac => \inst2|decoder1|w\(2),
	datad => \inst2|draw1|rect1|cx_tmp[2]~6_combout\,
	combout => \inst2|draw1|rect1|cx_tmp[2]~7_combout\);

-- Location: LCCOMB_X23_Y18_N4
\inst2|draw1|rect1|cx_tmp[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cx_tmp[2]~8_combout\ = (\inst2|draw1|rect1|cy_tmp[0]~0_combout\ & (\inst2|draw1|rect1|cx_tmp[2]~7_combout\ & ((\inst2|draw1|rect1|cx[6]~1_combout\) # (!\inst2|draw1|rect1|almost_done~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|cx[6]~1_combout\,
	datab => \inst2|draw1|rect1|cy_tmp[0]~0_combout\,
	datac => \inst2|draw1|rect1|cx_tmp[2]~7_combout\,
	datad => \inst2|draw1|rect1|almost_done~regout\,
	combout => \inst2|draw1|rect1|cx_tmp[2]~8_combout\);

-- Location: LCFF_X23_Y18_N5
\inst2|draw1|rect1|cx[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|rect1|cx_tmp[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|rect1|cx\(2));

-- Location: LCCOMB_X24_Y18_N14
\inst2|draw1|rect1|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Add1~6_combout\ = (\inst2|draw1|rect1|cx\(3) & (\inst2|draw1|rect1|Add1~5\ & VCC)) # (!\inst2|draw1|rect1|cx\(3) & (!\inst2|draw1|rect1|Add1~5\))
-- \inst2|draw1|rect1|Add1~7\ = CARRY((!\inst2|draw1|rect1|cx\(3) & !\inst2|draw1|rect1|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|draw1|rect1|cx\(3),
	datad => VCC,
	cin => \inst2|draw1|rect1|Add1~5\,
	combout => \inst2|draw1|rect1|Add1~6_combout\,
	cout => \inst2|draw1|rect1|Add1~7\);

-- Location: LCCOMB_X23_Y18_N12
\inst2|draw1|rect1|cx_tmp[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cx_tmp[3]~10_combout\ = (\inst2|draw1|rect1|cx_tmp[3]~9_combout\ & ((\inst2|draw1|rect1|cx\(3)) # ((!\inst2|draw1|rect1|cx[6]~7_combout\)))) # (!\inst2|draw1|rect1|cx_tmp[3]~9_combout\ & (((\inst2|draw1|rect1|Add1~6_combout\ & 
-- \inst2|draw1|rect1|cx[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|cx_tmp[3]~9_combout\,
	datab => \inst2|draw1|rect1|cx\(3),
	datac => \inst2|draw1|rect1|Add1~6_combout\,
	datad => \inst2|draw1|rect1|cx[6]~7_combout\,
	combout => \inst2|draw1|rect1|cx_tmp[3]~10_combout\);

-- Location: LCCOMB_X24_Y18_N30
\inst2|draw1|rect1|cx_tmp[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cx_tmp[3]~11_combout\ = (\inst2|draw1|rect1|cy_tmp[0]~0_combout\ & (\inst2|draw1|rect1|cx_tmp[3]~10_combout\ & ((\inst2|draw1|rect1|cx[6]~1_combout\) # (!\inst2|draw1|rect1|almost_done~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|almost_done~regout\,
	datab => \inst2|draw1|rect1|cx[6]~1_combout\,
	datac => \inst2|draw1|rect1|cy_tmp[0]~0_combout\,
	datad => \inst2|draw1|rect1|cx_tmp[3]~10_combout\,
	combout => \inst2|draw1|rect1|cx_tmp[3]~11_combout\);

-- Location: LCFF_X24_Y18_N31
\inst2|draw1|rect1|cx[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|rect1|cx_tmp[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|rect1|cx\(3));

-- Location: LCCOMB_X23_Y18_N30
\inst2|draw1|rect1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Equal0~1_combout\ = (\inst2|decoder1|x\(3) & (\inst2|draw1|rect1|cx\(3) & (\inst2|decoder1|x\(2) $ (!\inst2|draw1|rect1|cx\(2))))) # (!\inst2|decoder1|x\(3) & (!\inst2|draw1|rect1|cx\(3) & (\inst2|decoder1|x\(2) $ 
-- (!\inst2|draw1|rect1|cx\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|x\(3),
	datab => \inst2|decoder1|x\(2),
	datac => \inst2|draw1|rect1|cx\(2),
	datad => \inst2|draw1|rect1|cx\(3),
	combout => \inst2|draw1|rect1|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y17_N2
\inst2|decoder1|x~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|x~6_combout\ = (\inst2|spi1|spi_rx_data\(5) & (\inst2|decoder1|current_instruction\(2) $ (((\inst2|decoder1|current_instruction\(0) & \inst2|decoder1|current_instruction\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|current_instruction\(0),
	datab => \inst2|decoder1|current_instruction\(1),
	datac => \inst2|spi1|spi_rx_data\(5),
	datad => \inst2|decoder1|current_instruction\(2),
	combout => \inst2|decoder1|x~6_combout\);

-- Location: LCFF_X24_Y19_N19
\inst2|decoder1|x[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|decoder1|x~6_combout\,
	sclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \inst2|decoder1|x~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|x\(5));

-- Location: LCFF_X23_Y19_N5
\inst2|decoder1|w[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|spi1|spi_rx_data\(5),
	sclr => \inst2|sreset~0_combout\,
	sload => VCC,
	ena => \inst2|decoder1|w[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|w\(5));

-- Location: LCCOMB_X23_Y19_N4
\inst2|draw1|rect1|cx_tmp[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cx_tmp[5]~15_combout\ = (\inst2|draw1|rect1|cx[6]~7_combout\ & (((\inst2|draw1|rect1|cx[6]~1_combout\)))) # (!\inst2|draw1|rect1|cx[6]~7_combout\ & ((\inst2|draw1|rect1|cx[6]~1_combout\ & ((\inst2|decoder1|w\(5)))) # 
-- (!\inst2|draw1|rect1|cx[6]~1_combout\ & (\inst2|decoder1|x\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|cx[6]~7_combout\,
	datab => \inst2|decoder1|x\(5),
	datac => \inst2|decoder1|w\(5),
	datad => \inst2|draw1|rect1|cx[6]~1_combout\,
	combout => \inst2|draw1|rect1|cx_tmp[5]~15_combout\);

-- Location: LCCOMB_X23_Y18_N26
\inst2|draw1|rect1|cx_tmp[5]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cx_tmp[5]~16_combout\ = (\inst2|draw1|rect1|cx[6]~7_combout\ & ((\inst2|draw1|rect1|cx_tmp[5]~15_combout\ & ((\inst2|draw1|rect1|cx\(5)))) # (!\inst2|draw1|rect1|cx_tmp[5]~15_combout\ & (\inst2|draw1|rect1|Add1~10_combout\)))) # 
-- (!\inst2|draw1|rect1|cx[6]~7_combout\ & (((\inst2|draw1|rect1|cx_tmp[5]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|Add1~10_combout\,
	datab => \inst2|draw1|rect1|cx\(5),
	datac => \inst2|draw1|rect1|cx[6]~7_combout\,
	datad => \inst2|draw1|rect1|cx_tmp[5]~15_combout\,
	combout => \inst2|draw1|rect1|cx_tmp[5]~16_combout\);

-- Location: LCCOMB_X23_Y18_N18
\inst2|draw1|rect1|cx_tmp[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cx_tmp[5]~17_combout\ = (\inst2|draw1|rect1|cy_tmp[0]~0_combout\ & (\inst2|draw1|rect1|cx_tmp[5]~16_combout\ & ((\inst2|draw1|rect1|cx[6]~1_combout\) # (!\inst2|draw1|rect1|almost_done~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|almost_done~regout\,
	datab => \inst2|draw1|rect1|cy_tmp[0]~0_combout\,
	datac => \inst2|draw1|rect1|cx[6]~1_combout\,
	datad => \inst2|draw1|rect1|cx_tmp[5]~16_combout\,
	combout => \inst2|draw1|rect1|cx_tmp[5]~17_combout\);

-- Location: LCFF_X23_Y18_N19
\inst2|draw1|rect1|cx[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|rect1|cx_tmp[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|rect1|cx\(5));

-- Location: LCCOMB_X23_Y20_N4
\inst2|decoder1|x~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|x~7_combout\ = (\inst2|spi1|spi_rx_data\(4) & (\inst2|decoder1|current_instruction\(2) $ (((\inst2|decoder1|current_instruction\(0) & \inst2|decoder1|current_instruction\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|current_instruction\(0),
	datab => \inst2|decoder1|current_instruction\(2),
	datac => \inst2|decoder1|current_instruction\(1),
	datad => \inst2|spi1|spi_rx_data\(4),
	combout => \inst2|decoder1|x~7_combout\);

-- Location: LCFF_X24_Y19_N29
\inst2|decoder1|x[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|decoder1|x~7_combout\,
	sclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \inst2|decoder1|x~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|x\(4));

-- Location: LCCOMB_X23_Y18_N0
\inst2|draw1|rect1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Equal0~2_combout\ = (\inst2|draw1|rect1|cx\(4) & (\inst2|decoder1|x\(4) & (\inst2|draw1|rect1|cx\(5) $ (!\inst2|decoder1|x\(5))))) # (!\inst2|draw1|rect1|cx\(4) & (!\inst2|decoder1|x\(4) & (\inst2|draw1|rect1|cx\(5) $ 
-- (!\inst2|decoder1|x\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|cx\(4),
	datab => \inst2|draw1|rect1|cx\(5),
	datac => \inst2|decoder1|x\(5),
	datad => \inst2|decoder1|x\(4),
	combout => \inst2|draw1|rect1|Equal0~2_combout\);

-- Location: LCCOMB_X23_Y20_N18
\inst2|decoder1|x~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|x~3_combout\ = (\inst2|spi1|spi_rx_data\(0) & (\inst2|decoder1|current_instruction\(2) $ (((\inst2|decoder1|current_instruction\(1) & \inst2|decoder1|current_instruction\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|spi1|spi_rx_data\(0),
	datab => \inst2|decoder1|current_instruction\(2),
	datac => \inst2|decoder1|current_instruction\(1),
	datad => \inst2|decoder1|current_instruction\(0),
	combout => \inst2|decoder1|x~3_combout\);

-- Location: LCFF_X24_Y19_N7
\inst2|decoder1|x[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|decoder1|x~3_combout\,
	sclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \inst2|decoder1|x~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|x\(0));

-- Location: LCCOMB_X23_Y20_N12
\inst2|decoder1|x~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|x~0_combout\ = (\inst2|spi1|spi_rx_data\(1) & (\inst2|decoder1|current_instruction\(2) $ (((\inst2|decoder1|current_instruction\(1) & \inst2|decoder1|current_instruction\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|spi1|spi_rx_data\(1),
	datab => \inst2|decoder1|current_instruction\(2),
	datac => \inst2|decoder1|current_instruction\(1),
	datad => \inst2|decoder1|current_instruction\(0),
	combout => \inst2|decoder1|x~0_combout\);

-- Location: LCFF_X24_Y19_N5
\inst2|decoder1|x[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|decoder1|x~0_combout\,
	sclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \inst2|decoder1|x~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|x\(1));

-- Location: LCCOMB_X25_Y18_N20
\inst2|draw1|rect1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Equal0~0_combout\ = (\inst2|draw1|rect1|cx\(1) & (\inst2|decoder1|x\(1) & (\inst2|draw1|rect1|cx\(0) $ (!\inst2|decoder1|x\(0))))) # (!\inst2|draw1|rect1|cx\(1) & (!\inst2|decoder1|x\(1) & (\inst2|draw1|rect1|cx\(0) $ 
-- (!\inst2|decoder1|x\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|cx\(1),
	datab => \inst2|draw1|rect1|cx\(0),
	datac => \inst2|decoder1|x\(0),
	datad => \inst2|decoder1|x\(1),
	combout => \inst2|draw1|rect1|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y18_N28
\inst2|draw1|rect1|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Equal0~4_combout\ = (\inst2|draw1|rect1|Equal0~3_combout\ & (\inst2|draw1|rect1|Equal0~1_combout\ & (\inst2|draw1|rect1|Equal0~2_combout\ & \inst2|draw1|rect1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|Equal0~3_combout\,
	datab => \inst2|draw1|rect1|Equal0~1_combout\,
	datac => \inst2|draw1|rect1|Equal0~2_combout\,
	datad => \inst2|draw1|rect1|Equal0~0_combout\,
	combout => \inst2|draw1|rect1|Equal0~4_combout\);

-- Location: LCCOMB_X21_Y16_N16
\inst2|draw1|rect1|cy_tmp[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cy_tmp[0]~2_combout\ = ((\inst2|draw1|rect1|cy_tmp[0]~1_combout\ & ((\inst2|draw1|rect1|Equal0~4_combout\) # (!\inst2|draw1|rect1|draw_write~0_combout\)))) # (!\inst2|draw1|rect1|cy_tmp[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|cy_tmp[0]~0_combout\,
	datab => \inst2|draw1|rect1|cy_tmp[0]~1_combout\,
	datac => \inst2|draw1|rect1|Equal0~4_combout\,
	datad => \inst2|draw1|rect1|draw_write~0_combout\,
	combout => \inst2|draw1|rect1|cy_tmp[0]~2_combout\);

-- Location: LCFF_X22_Y16_N29
\inst2|draw1|rect1|cy[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|draw1|rect1|Add0~3_combout\,
	sload => VCC,
	ena => \inst2|draw1|rect1|cy_tmp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|rect1|cy\(0));

-- Location: LCCOMB_X22_Y16_N10
\inst2|draw1|rect1|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Add0~5_combout\ = (\inst2|draw1|rect1|cy\(1) & (\inst2|draw1|rect1|Add0~2\ & VCC)) # (!\inst2|draw1|rect1|cy\(1) & (!\inst2|draw1|rect1|Add0~2\))
-- \inst2|draw1|rect1|Add0~6\ = CARRY((!\inst2|draw1|rect1|cy\(1) & !\inst2|draw1|rect1|Add0~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|draw1|rect1|cy\(1),
	datad => VCC,
	cin => \inst2|draw1|rect1|Add0~2\,
	combout => \inst2|draw1|rect1|Add0~5_combout\,
	cout => \inst2|draw1|rect1|Add0~6\);

-- Location: LCCOMB_X21_Y16_N30
\inst2|draw1|rect1|Add0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Add0~7_combout\ = (\inst2|draw1|rect1|cy_tmp[0]~0_combout\ & ((\inst2|draw1|rect1|Add0~4_combout\) # ((\inst2|draw1|rect1|draw_write~0_combout\ & \inst2|draw1|rect1|Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|draw_write~0_combout\,
	datab => \inst2|draw1|rect1|Add0~4_combout\,
	datac => \inst2|draw1|rect1|Add0~5_combout\,
	datad => \inst2|draw1|rect1|cy_tmp[0]~0_combout\,
	combout => \inst2|draw1|rect1|Add0~7_combout\);

-- Location: LCFF_X22_Y16_N3
\inst2|draw1|rect1|cy[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|draw1|rect1|Add0~7_combout\,
	sload => VCC,
	ena => \inst2|draw1|rect1|cy_tmp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|rect1|cy\(1));

-- Location: LCCOMB_X21_Y16_N22
\inst2|draw1|rect1|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Add0~11_combout\ = (\inst2|draw1|rect1|cy_tmp[0]~0_combout\ & ((\inst2|draw1|rect1|Add0~8_combout\) # ((\inst2|draw1|rect1|Add0~9_combout\ & \inst2|draw1|rect1|draw_write~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|cy_tmp[0]~0_combout\,
	datab => \inst2|draw1|rect1|Add0~8_combout\,
	datac => \inst2|draw1|rect1|Add0~9_combout\,
	datad => \inst2|draw1|rect1|draw_write~0_combout\,
	combout => \inst2|draw1|rect1|Add0~11_combout\);

-- Location: LCFF_X21_Y16_N23
\inst2|draw1|rect1|cy[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|rect1|Add0~11_combout\,
	ena => \inst2|draw1|rect1|cy_tmp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|rect1|cy\(2));

-- Location: LCCOMB_X23_Y20_N24
\inst4|Equal63~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Equal63~2_combout\ = (!\inst2|decoder1|packet_num\(2) & (\inst2|decoder1|packet_num\(0) & \inst2|decoder1|packet_num\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|packet_num\(2),
	datac => \inst2|decoder1|packet_num\(0),
	datad => \inst2|decoder1|packet_num\(1),
	combout => \inst4|Equal63~2_combout\);

-- Location: LCCOMB_X23_Y20_N14
\inst2|decoder1|y~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|y~1_combout\ = ((\inst2|decoder1|y~0_combout\ & ((\inst4|Equal63~2_combout\) # (!\inst2|decoder1|x[5]~1_combout\)))) # (!\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|y~0_combout\,
	datab => \inst4|Equal63~2_combout\,
	datac => \reset~combout\,
	datad => \inst2|decoder1|x[5]~1_combout\,
	combout => \inst2|decoder1|y~1_combout\);

-- Location: LCFF_X23_Y17_N21
\inst2|decoder1|y[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|decoder1|x~5_combout\,
	sclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \inst2|decoder1|y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|y\(2));

-- Location: LCCOMB_X23_Y20_N10
\inst2|decoder1|x~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|x~4_combout\ = (\inst2|spi1|spi_rx_data\(3) & (\inst2|decoder1|current_instruction\(2) $ (((\inst2|decoder1|current_instruction\(1) & \inst2|decoder1|current_instruction\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|spi1|spi_rx_data\(3),
	datab => \inst2|decoder1|current_instruction\(2),
	datac => \inst2|decoder1|current_instruction\(1),
	datad => \inst2|decoder1|current_instruction\(0),
	combout => \inst2|decoder1|x~4_combout\);

-- Location: LCFF_X23_Y17_N23
\inst2|decoder1|y[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|decoder1|x~4_combout\,
	sclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \inst2|decoder1|y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|y\(3));

-- Location: LCCOMB_X21_Y16_N2
\inst2|draw1|rect1|almost_done_tmp~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|almost_done_tmp~1_combout\ = (\inst2|draw1|rect1|cy\(3) & (\inst2|decoder1|y\(3) & (\inst2|draw1|rect1|cy\(2) $ (!\inst2|decoder1|y\(2))))) # (!\inst2|draw1|rect1|cy\(3) & (!\inst2|decoder1|y\(3) & (\inst2|draw1|rect1|cy\(2) $ 
-- (!\inst2|decoder1|y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|cy\(3),
	datab => \inst2|draw1|rect1|cy\(2),
	datac => \inst2|decoder1|y\(2),
	datad => \inst2|decoder1|y\(3),
	combout => \inst2|draw1|rect1|almost_done_tmp~1_combout\);

-- Location: LCCOMB_X22_Y19_N22
\inst2|decoder1|x~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|x~9_combout\ = (\inst2|spi1|spi_rx_data\(6) & (\inst2|decoder1|current_instruction\(2) $ (((\inst2|decoder1|current_instruction\(1) & \inst2|decoder1|current_instruction\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|current_instruction\(1),
	datab => \inst2|decoder1|current_instruction\(2),
	datac => \inst2|spi1|spi_rx_data\(6),
	datad => \inst2|decoder1|current_instruction\(0),
	combout => \inst2|decoder1|x~9_combout\);

-- Location: LCFF_X23_Y17_N15
\inst2|decoder1|y[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|decoder1|x~9_combout\,
	sclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \inst2|decoder1|y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|y\(6));

-- Location: LCCOMB_X21_Y16_N20
\inst2|draw1|rect1|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Equal1~0_combout\ = \inst2|draw1|rect1|cy\(6) $ (\inst2|decoder1|y\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|draw1|rect1|cy\(6),
	datad => \inst2|decoder1|y\(6),
	combout => \inst2|draw1|rect1|Equal1~0_combout\);

-- Location: LCFF_X23_Y17_N25
\inst2|decoder1|y[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|decoder1|x~7_combout\,
	sclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \inst2|decoder1|y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|y\(4));

-- Location: LCCOMB_X23_Y16_N16
\inst2|draw1|rect1|almost_done_tmp~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|almost_done_tmp~2_combout\ = (\inst2|decoder1|y\(5) & (\inst2|draw1|rect1|cy\(5) & (\inst2|decoder1|y\(4) $ (!\inst2|draw1|rect1|cy\(4))))) # (!\inst2|decoder1|y\(5) & (!\inst2|draw1|rect1|cy\(5) & (\inst2|decoder1|y\(4) $ 
-- (!\inst2|draw1|rect1|cy\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|y\(5),
	datab => \inst2|draw1|rect1|cy\(5),
	datac => \inst2|decoder1|y\(4),
	datad => \inst2|draw1|rect1|cy\(4),
	combout => \inst2|draw1|rect1|almost_done_tmp~2_combout\);

-- Location: LCCOMB_X21_Y16_N18
\inst2|draw1|rect1|almost_done_tmp~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|almost_done_tmp~3_combout\ = (\inst2|draw1|rect1|almost_done_tmp~0_combout\ & (\inst2|draw1|rect1|almost_done_tmp~1_combout\ & (!\inst2|draw1|rect1|Equal1~0_combout\ & \inst2|draw1|rect1|almost_done_tmp~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|almost_done_tmp~0_combout\,
	datab => \inst2|draw1|rect1|almost_done_tmp~1_combout\,
	datac => \inst2|draw1|rect1|Equal1~0_combout\,
	datad => \inst2|draw1|rect1|almost_done_tmp~2_combout\,
	combout => \inst2|draw1|rect1|almost_done_tmp~3_combout\);

-- Location: LCCOMB_X20_Y17_N2
\inst2|draw1|rect1|draw_write~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|draw_write~1_combout\ = (!\inst2|draw1|rect1|draw_rect_combi~0_combout\ & (\reset~combout\ & (!\inst2|decoder1|decoder_claim~regout\ & !\inst2|vgacontroller1|vga_combi~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|draw_rect_combi~0_combout\,
	datab => \reset~combout\,
	datac => \inst2|decoder1|decoder_claim~regout\,
	datad => \inst2|vgacontroller1|vga_combi~5_combout\,
	combout => \inst2|draw1|rect1|draw_write~1_combout\);

-- Location: LCCOMB_X21_Y16_N0
\inst2|draw1|rect1|almost_done_tmp~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|almost_done_tmp~4_combout\ = (\inst2|draw1|rect1|draw_write~0_combout\ & (\inst2|draw1|rect1|almost_done_tmp~3_combout\ & (\inst2|draw1|rect1|Equal0~4_combout\ & \inst2|draw1|rect1|draw_write~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|draw_write~0_combout\,
	datab => \inst2|draw1|rect1|almost_done_tmp~3_combout\,
	datac => \inst2|draw1|rect1|Equal0~4_combout\,
	datad => \inst2|draw1|rect1|draw_write~1_combout\,
	combout => \inst2|draw1|rect1|almost_done_tmp~4_combout\);

-- Location: LCFF_X21_Y16_N1
\inst2|draw1|rect1|almost_done\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|rect1|almost_done_tmp~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|rect1|almost_done~regout\);

-- Location: LCCOMB_X21_Y17_N24
\inst2|draw1|draw_ready~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|draw_ready~0_combout\ = (!\inst2|draw1|rect1|started~regout\) # (!\inst2|draw1|rect1|almost_done~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|draw1|rect1|almost_done~regout\,
	datad => \inst2|draw1|rect1|started~regout\,
	combout => \inst2|draw1|draw_ready~0_combout\);

-- Location: LCCOMB_X20_Y20_N18
\inst2|decoder1|en~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|en~7_combout\ = (\inst2|decoder1|en~5_combout\ & ((\inst2|decoder1|en~6_combout\) # ((\inst2|decoder1|en\(3) & \inst4|hex1[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|en~6_combout\,
	datab => \inst2|decoder1|en~5_combout\,
	datac => \inst2|decoder1|en\(3),
	datad => \inst4|hex1[2]~4_combout\,
	combout => \inst2|decoder1|en~7_combout\);

-- Location: LCFF_X20_Y20_N19
\inst2|decoder1|en[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|en~7_combout\,
	sclr => \ALT_INV_reset~combout\,
	ena => \inst2|decoder1|en~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|en\(3));

-- Location: LCCOMB_X21_Y17_N8
\inst2|draw1|line1|Add10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add10~0_combout\ = \inst2|draw1|line1|cy\(0) $ (VCC)
-- \inst2|draw1|line1|Add10~1\ = CARRY(\inst2|draw1|line1|cy\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|draw1|line1|cy\(0),
	datad => VCC,
	combout => \inst2|draw1|line1|Add10~0_combout\,
	cout => \inst2|draw1|line1|Add10~1\);

-- Location: LCCOMB_X20_Y17_N18
\inst2|draw1|line1|cx[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|cx[3]~0_combout\ = (!\inst2|decoder1|en\(3)) # (!\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datad => \inst2|decoder1|en\(3),
	combout => \inst2|draw1|line1|cx[3]~0_combout\);

-- Location: LCFF_X23_Y17_N17
\inst2|decoder1|y[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|decoder1|x~3_combout\,
	sclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \inst2|decoder1|y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|y\(0));

-- Location: LCCOMB_X21_Y17_N22
\inst2|draw1|line1|Add10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add10~2_combout\ = (!\inst2|draw1|line1|cx[3]~0_combout\ & ((\inst2|draw1|line1|setup~regout\ & ((\inst2|decoder1|y\(0)))) # (!\inst2|draw1|line1|setup~regout\ & (\inst2|draw1|line1|Add10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|setup~regout\,
	datab => \inst2|draw1|line1|Add10~0_combout\,
	datac => \inst2|draw1|line1|cx[3]~0_combout\,
	datad => \inst2|decoder1|y\(0),
	combout => \inst2|draw1|line1|Add10~2_combout\);

-- Location: LCCOMB_X20_Y17_N20
\inst2|draw1|line1|next_setup~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|next_setup~0_combout\ = ((\inst2|draw1|line1|setup~regout\ & ((!\inst2|ramcontroller1|draw_can_access~0_combout\))) # (!\inst2|draw1|line1|setup~regout\ & (\inst2|draw1|line1|draw_line_comb~9_combout\ & 
-- \inst2|ramcontroller1|draw_can_access~0_combout\))) # (!\inst2|decoder1|en\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|draw_line_comb~9_combout\,
	datab => \inst2|decoder1|en\(3),
	datac => \inst2|draw1|line1|setup~regout\,
	datad => \inst2|ramcontroller1|draw_can_access~0_combout\,
	combout => \inst2|draw1|line1|next_setup~0_combout\);

-- Location: LCFF_X20_Y17_N21
\inst2|draw1|line1|setup\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|line1|next_setup~0_combout\,
	sclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|line1|setup~regout\);

-- Location: LCFF_X24_Y20_N21
\inst2|spi1|spi_rx_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|spi1|spi_rx_data\(6),
	sclr => \inst2|sreset~combout\,
	sload => VCC,
	ena => \inst2|spi1|spi_rx_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|spi1|spi_rx_data\(7));

-- Location: LCCOMB_X22_Y19_N4
\inst2|decoder1|x~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|x~8_combout\ = (\inst2|spi1|spi_rx_data\(7) & (\inst2|decoder1|current_instruction\(2) $ (((\inst2|decoder1|current_instruction\(1) & \inst2|decoder1|current_instruction\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|current_instruction\(1),
	datab => \inst2|decoder1|current_instruction\(2),
	datac => \inst2|spi1|spi_rx_data\(7),
	datad => \inst2|decoder1|current_instruction\(0),
	combout => \inst2|decoder1|x~8_combout\);

-- Location: LCFF_X22_Y19_N5
\inst2|decoder1|x[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|x~8_combout\,
	sclr => \ALT_INV_reset~combout\,
	ena => \inst2|decoder1|x~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|x\(7));

-- Location: LCFF_X23_Y19_N1
\inst2|decoder1|w[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|spi1|spi_rx_data\(6),
	sclr => \inst2|sreset~0_combout\,
	sload => VCC,
	ena => \inst2|decoder1|w[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|w\(6));

-- Location: LCFF_X24_Y19_N17
\inst2|decoder1|x[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|decoder1|x~4_combout\,
	sclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \inst2|decoder1|x~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|x\(3));

-- Location: LCFF_X23_Y19_N3
\inst2|decoder1|w[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|spi1|spi_rx_data\(0),
	sclr => \inst2|sreset~0_combout\,
	sload => VCC,
	ena => \inst2|decoder1|w[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|w\(0));

-- Location: LCCOMB_X23_Y19_N16
\inst2|draw1|line1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add0~2_combout\ = (\inst2|decoder1|x\(1) & ((\inst2|decoder1|w\(1) & (!\inst2|draw1|line1|Add0~1\)) # (!\inst2|decoder1|w\(1) & ((\inst2|draw1|line1|Add0~1\) # (GND))))) # (!\inst2|decoder1|x\(1) & ((\inst2|decoder1|w\(1) & 
-- (\inst2|draw1|line1|Add0~1\ & VCC)) # (!\inst2|decoder1|w\(1) & (!\inst2|draw1|line1|Add0~1\))))
-- \inst2|draw1|line1|Add0~3\ = CARRY((\inst2|decoder1|x\(1) & ((!\inst2|draw1|line1|Add0~1\) # (!\inst2|decoder1|w\(1)))) # (!\inst2|decoder1|x\(1) & (!\inst2|decoder1|w\(1) & !\inst2|draw1|line1|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|x\(1),
	datab => \inst2|decoder1|w\(1),
	datad => VCC,
	cin => \inst2|draw1|line1|Add0~1\,
	combout => \inst2|draw1|line1|Add0~2_combout\,
	cout => \inst2|draw1|line1|Add0~3\);

-- Location: LCCOMB_X23_Y19_N18
\inst2|draw1|line1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add0~4_combout\ = ((\inst2|decoder1|w\(2) $ (\inst2|decoder1|x\(2) $ (\inst2|draw1|line1|Add0~3\)))) # (GND)
-- \inst2|draw1|line1|Add0~5\ = CARRY((\inst2|decoder1|w\(2) & ((!\inst2|draw1|line1|Add0~3\) # (!\inst2|decoder1|x\(2)))) # (!\inst2|decoder1|w\(2) & (!\inst2|decoder1|x\(2) & !\inst2|draw1|line1|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|w\(2),
	datab => \inst2|decoder1|x\(2),
	datad => VCC,
	cin => \inst2|draw1|line1|Add0~3\,
	combout => \inst2|draw1|line1|Add0~4_combout\,
	cout => \inst2|draw1|line1|Add0~5\);

-- Location: LCCOMB_X23_Y19_N22
\inst2|draw1|line1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add0~8_combout\ = ((\inst2|decoder1|w\(4) $ (\inst2|decoder1|x\(4) $ (\inst2|draw1|line1|Add0~7\)))) # (GND)
-- \inst2|draw1|line1|Add0~9\ = CARRY((\inst2|decoder1|w\(4) & ((!\inst2|draw1|line1|Add0~7\) # (!\inst2|decoder1|x\(4)))) # (!\inst2|decoder1|w\(4) & (!\inst2|decoder1|x\(4) & !\inst2|draw1|line1|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|w\(4),
	datab => \inst2|decoder1|x\(4),
	datad => VCC,
	cin => \inst2|draw1|line1|Add0~7\,
	combout => \inst2|draw1|line1|Add0~8_combout\,
	cout => \inst2|draw1|line1|Add0~9\);

-- Location: LCCOMB_X23_Y19_N24
\inst2|draw1|line1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add0~10_combout\ = (\inst2|decoder1|x\(5) & ((\inst2|decoder1|w\(5) & (!\inst2|draw1|line1|Add0~9\)) # (!\inst2|decoder1|w\(5) & ((\inst2|draw1|line1|Add0~9\) # (GND))))) # (!\inst2|decoder1|x\(5) & ((\inst2|decoder1|w\(5) & 
-- (\inst2|draw1|line1|Add0~9\ & VCC)) # (!\inst2|decoder1|w\(5) & (!\inst2|draw1|line1|Add0~9\))))
-- \inst2|draw1|line1|Add0~11\ = CARRY((\inst2|decoder1|x\(5) & ((!\inst2|draw1|line1|Add0~9\) # (!\inst2|decoder1|w\(5)))) # (!\inst2|decoder1|x\(5) & (!\inst2|decoder1|w\(5) & !\inst2|draw1|line1|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|x\(5),
	datab => \inst2|decoder1|w\(5),
	datad => VCC,
	cin => \inst2|draw1|line1|Add0~9\,
	combout => \inst2|draw1|line1|Add0~10_combout\,
	cout => \inst2|draw1|line1|Add0~11\);

-- Location: LCCOMB_X23_Y19_N26
\inst2|draw1|line1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add0~12_combout\ = ((\inst2|decoder1|x\(6) $ (\inst2|decoder1|w\(6) $ (\inst2|draw1|line1|Add0~11\)))) # (GND)
-- \inst2|draw1|line1|Add0~13\ = CARRY((\inst2|decoder1|x\(6) & (\inst2|decoder1|w\(6) & !\inst2|draw1|line1|Add0~11\)) # (!\inst2|decoder1|x\(6) & ((\inst2|decoder1|w\(6)) # (!\inst2|draw1|line1|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|x\(6),
	datab => \inst2|decoder1|w\(6),
	datad => VCC,
	cin => \inst2|draw1|line1|Add0~11\,
	combout => \inst2|draw1|line1|Add0~12_combout\,
	cout => \inst2|draw1|line1|Add0~13\);

-- Location: LCCOMB_X23_Y19_N28
\inst2|draw1|line1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add0~14_combout\ = (\inst2|decoder1|w\(7) & ((\inst2|decoder1|x\(7) & (!\inst2|draw1|line1|Add0~13\)) # (!\inst2|decoder1|x\(7) & (\inst2|draw1|line1|Add0~13\ & VCC)))) # (!\inst2|decoder1|w\(7) & ((\inst2|decoder1|x\(7) & 
-- ((\inst2|draw1|line1|Add0~13\) # (GND))) # (!\inst2|decoder1|x\(7) & (!\inst2|draw1|line1|Add0~13\))))
-- \inst2|draw1|line1|Add0~15\ = CARRY((\inst2|decoder1|w\(7) & (\inst2|decoder1|x\(7) & !\inst2|draw1|line1|Add0~13\)) # (!\inst2|decoder1|w\(7) & ((\inst2|decoder1|x\(7)) # (!\inst2|draw1|line1|Add0~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|w\(7),
	datab => \inst2|decoder1|x\(7),
	datad => VCC,
	cin => \inst2|draw1|line1|Add0~13\,
	combout => \inst2|draw1|line1|Add0~14_combout\,
	cout => \inst2|draw1|line1|Add0~15\);

-- Location: LCCOMB_X23_Y19_N30
\inst2|draw1|line1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add0~16_combout\ = !\inst2|draw1|line1|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|draw1|line1|Add0~15\,
	combout => \inst2|draw1|line1|Add0~16_combout\);

-- Location: LCCOMB_X24_Y19_N4
\inst2|draw1|line1|dx~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|dx~0_combout\ = \inst2|draw1|line1|Add0~0_combout\ $ (\inst2|draw1|line1|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add0~0_combout\,
	datad => \inst2|draw1|line1|Add0~16_combout\,
	combout => \inst2|draw1|line1|dx~0_combout\);

-- Location: LCCOMB_X24_Y19_N14
\inst2|draw1|line1|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add1~0_combout\ = (\inst2|draw1|line1|Add0~16_combout\ & (!\inst2|draw1|line1|dx~0_combout\ & VCC)) # (!\inst2|draw1|line1|Add0~16_combout\ & (\inst2|draw1|line1|dx~0_combout\ $ (GND)))
-- \inst2|draw1|line1|Add1~1\ = CARRY((!\inst2|draw1|line1|Add0~16_combout\ & !\inst2|draw1|line1|dx~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add0~16_combout\,
	datab => \inst2|draw1|line1|dx~0_combout\,
	datad => VCC,
	combout => \inst2|draw1|line1|Add1~0_combout\,
	cout => \inst2|draw1|line1|Add1~1\);

-- Location: LCCOMB_X24_Y19_N16
\inst2|draw1|line1|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add1~2_combout\ = (\inst2|draw1|line1|Add1~1\ & (\inst2|draw1|line1|Add0~16_combout\ $ ((\inst2|draw1|line1|Add0~2_combout\)))) # (!\inst2|draw1|line1|Add1~1\ & ((\inst2|draw1|line1|Add0~16_combout\ $ 
-- (!\inst2|draw1|line1|Add0~2_combout\)) # (GND)))
-- \inst2|draw1|line1|Add1~3\ = CARRY((\inst2|draw1|line1|Add0~16_combout\ $ (\inst2|draw1|line1|Add0~2_combout\)) # (!\inst2|draw1|line1|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add0~16_combout\,
	datab => \inst2|draw1|line1|Add0~2_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add1~1\,
	combout => \inst2|draw1|line1|Add1~2_combout\,
	cout => \inst2|draw1|line1|Add1~3\);

-- Location: LCCOMB_X24_Y19_N18
\inst2|draw1|line1|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add1~4_combout\ = (\inst2|draw1|line1|Add1~3\ & ((\inst2|draw1|line1|Add0~16_combout\ $ (!\inst2|draw1|line1|Add0~4_combout\)))) # (!\inst2|draw1|line1|Add1~3\ & (\inst2|draw1|line1|Add0~16_combout\ $ (\inst2|draw1|line1|Add0~4_combout\ 
-- $ (GND))))
-- \inst2|draw1|line1|Add1~5\ = CARRY((!\inst2|draw1|line1|Add1~3\ & (\inst2|draw1|line1|Add0~16_combout\ $ (!\inst2|draw1|line1|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add0~16_combout\,
	datab => \inst2|draw1|line1|Add0~4_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add1~3\,
	combout => \inst2|draw1|line1|Add1~4_combout\,
	cout => \inst2|draw1|line1|Add1~5\);

-- Location: LCCOMB_X24_Y19_N20
\inst2|draw1|line1|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add1~6_combout\ = (\inst2|draw1|line1|Add1~5\ & (\inst2|draw1|line1|Add0~6_combout\ $ ((\inst2|draw1|line1|Add0~16_combout\)))) # (!\inst2|draw1|line1|Add1~5\ & ((\inst2|draw1|line1|Add0~6_combout\ $ 
-- (!\inst2|draw1|line1|Add0~16_combout\)) # (GND)))
-- \inst2|draw1|line1|Add1~7\ = CARRY((\inst2|draw1|line1|Add0~6_combout\ $ (\inst2|draw1|line1|Add0~16_combout\)) # (!\inst2|draw1|line1|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add0~6_combout\,
	datab => \inst2|draw1|line1|Add0~16_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add1~5\,
	combout => \inst2|draw1|line1|Add1~6_combout\,
	cout => \inst2|draw1|line1|Add1~7\);

-- Location: LCCOMB_X24_Y19_N22
\inst2|draw1|line1|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add1~8_combout\ = (\inst2|draw1|line1|Add1~7\ & ((\inst2|draw1|line1|Add0~16_combout\ $ (!\inst2|draw1|line1|Add0~8_combout\)))) # (!\inst2|draw1|line1|Add1~7\ & (\inst2|draw1|line1|Add0~16_combout\ $ (\inst2|draw1|line1|Add0~8_combout\ 
-- $ (GND))))
-- \inst2|draw1|line1|Add1~9\ = CARRY((!\inst2|draw1|line1|Add1~7\ & (\inst2|draw1|line1|Add0~16_combout\ $ (!\inst2|draw1|line1|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add0~16_combout\,
	datab => \inst2|draw1|line1|Add0~8_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add1~7\,
	combout => \inst2|draw1|line1|Add1~8_combout\,
	cout => \inst2|draw1|line1|Add1~9\);

-- Location: LCCOMB_X24_Y19_N24
\inst2|draw1|line1|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add1~10_combout\ = (\inst2|draw1|line1|Add1~9\ & (\inst2|draw1|line1|Add0~16_combout\ $ ((\inst2|draw1|line1|Add0~10_combout\)))) # (!\inst2|draw1|line1|Add1~9\ & ((\inst2|draw1|line1|Add0~16_combout\ $ 
-- (!\inst2|draw1|line1|Add0~10_combout\)) # (GND)))
-- \inst2|draw1|line1|Add1~11\ = CARRY((\inst2|draw1|line1|Add0~16_combout\ $ (\inst2|draw1|line1|Add0~10_combout\)) # (!\inst2|draw1|line1|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add0~16_combout\,
	datab => \inst2|draw1|line1|Add0~10_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add1~9\,
	combout => \inst2|draw1|line1|Add1~10_combout\,
	cout => \inst2|draw1|line1|Add1~11\);

-- Location: LCCOMB_X24_Y19_N26
\inst2|draw1|line1|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add1~12_combout\ = (\inst2|draw1|line1|Add1~11\ & ((\inst2|draw1|line1|Add0~16_combout\ $ (!\inst2|draw1|line1|Add0~12_combout\)))) # (!\inst2|draw1|line1|Add1~11\ & (\inst2|draw1|line1|Add0~16_combout\ $ 
-- (\inst2|draw1|line1|Add0~12_combout\ $ (GND))))
-- \inst2|draw1|line1|Add1~13\ = CARRY((!\inst2|draw1|line1|Add1~11\ & (\inst2|draw1|line1|Add0~16_combout\ $ (!\inst2|draw1|line1|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add0~16_combout\,
	datab => \inst2|draw1|line1|Add0~12_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add1~11\,
	combout => \inst2|draw1|line1|Add1~12_combout\,
	cout => \inst2|draw1|line1|Add1~13\);

-- Location: LCCOMB_X24_Y19_N28
\inst2|draw1|line1|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add1~14_combout\ = (\inst2|draw1|line1|Add1~13\ & (\inst2|draw1|line1|Add0~16_combout\ $ ((\inst2|draw1|line1|Add0~14_combout\)))) # (!\inst2|draw1|line1|Add1~13\ & ((\inst2|draw1|line1|Add0~16_combout\ $ 
-- (!\inst2|draw1|line1|Add0~14_combout\)) # (GND)))
-- \inst2|draw1|line1|Add1~15\ = CARRY((\inst2|draw1|line1|Add0~16_combout\ $ (\inst2|draw1|line1|Add0~14_combout\)) # (!\inst2|draw1|line1|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add0~16_combout\,
	datab => \inst2|draw1|line1|Add0~14_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add1~13\,
	combout => \inst2|draw1|line1|Add1~14_combout\,
	cout => \inst2|draw1|line1|Add1~15\);

-- Location: LCFF_X23_Y17_N27
\inst2|decoder1|y[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|decoder1|x~6_combout\,
	sclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \inst2|decoder1|y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|y\(5));

-- Location: LCCOMB_X23_Y17_N18
\inst2|draw1|line1|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add2~2_combout\ = (\inst2|decoder1|y\(1) & ((\inst2|decoder1|h\(1) & (!\inst2|draw1|line1|Add2~1\)) # (!\inst2|decoder1|h\(1) & ((\inst2|draw1|line1|Add2~1\) # (GND))))) # (!\inst2|decoder1|y\(1) & ((\inst2|decoder1|h\(1) & 
-- (\inst2|draw1|line1|Add2~1\ & VCC)) # (!\inst2|decoder1|h\(1) & (!\inst2|draw1|line1|Add2~1\))))
-- \inst2|draw1|line1|Add2~3\ = CARRY((\inst2|decoder1|y\(1) & ((!\inst2|draw1|line1|Add2~1\) # (!\inst2|decoder1|h\(1)))) # (!\inst2|decoder1|y\(1) & (!\inst2|decoder1|h\(1) & !\inst2|draw1|line1|Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|y\(1),
	datab => \inst2|decoder1|h\(1),
	datad => VCC,
	cin => \inst2|draw1|line1|Add2~1\,
	combout => \inst2|draw1|line1|Add2~2_combout\,
	cout => \inst2|draw1|line1|Add2~3\);

-- Location: LCCOMB_X23_Y17_N20
\inst2|draw1|line1|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add2~4_combout\ = ((\inst2|decoder1|y\(2) $ (\inst2|decoder1|h\(2) $ (\inst2|draw1|line1|Add2~3\)))) # (GND)
-- \inst2|draw1|line1|Add2~5\ = CARRY((\inst2|decoder1|y\(2) & (\inst2|decoder1|h\(2) & !\inst2|draw1|line1|Add2~3\)) # (!\inst2|decoder1|y\(2) & ((\inst2|decoder1|h\(2)) # (!\inst2|draw1|line1|Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|y\(2),
	datab => \inst2|decoder1|h\(2),
	datad => VCC,
	cin => \inst2|draw1|line1|Add2~3\,
	combout => \inst2|draw1|line1|Add2~4_combout\,
	cout => \inst2|draw1|line1|Add2~5\);

-- Location: LCCOMB_X23_Y17_N22
\inst2|draw1|line1|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add2~6_combout\ = (\inst2|decoder1|h\(3) & ((\inst2|decoder1|y\(3) & (!\inst2|draw1|line1|Add2~5\)) # (!\inst2|decoder1|y\(3) & (\inst2|draw1|line1|Add2~5\ & VCC)))) # (!\inst2|decoder1|h\(3) & ((\inst2|decoder1|y\(3) & 
-- ((\inst2|draw1|line1|Add2~5\) # (GND))) # (!\inst2|decoder1|y\(3) & (!\inst2|draw1|line1|Add2~5\))))
-- \inst2|draw1|line1|Add2~7\ = CARRY((\inst2|decoder1|h\(3) & (\inst2|decoder1|y\(3) & !\inst2|draw1|line1|Add2~5\)) # (!\inst2|decoder1|h\(3) & ((\inst2|decoder1|y\(3)) # (!\inst2|draw1|line1|Add2~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|h\(3),
	datab => \inst2|decoder1|y\(3),
	datad => VCC,
	cin => \inst2|draw1|line1|Add2~5\,
	combout => \inst2|draw1|line1|Add2~6_combout\,
	cout => \inst2|draw1|line1|Add2~7\);

-- Location: LCCOMB_X23_Y17_N24
\inst2|draw1|line1|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add2~8_combout\ = ((\inst2|decoder1|h\(4) $ (\inst2|decoder1|y\(4) $ (\inst2|draw1|line1|Add2~7\)))) # (GND)
-- \inst2|draw1|line1|Add2~9\ = CARRY((\inst2|decoder1|h\(4) & ((!\inst2|draw1|line1|Add2~7\) # (!\inst2|decoder1|y\(4)))) # (!\inst2|decoder1|h\(4) & (!\inst2|decoder1|y\(4) & !\inst2|draw1|line1|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|h\(4),
	datab => \inst2|decoder1|y\(4),
	datad => VCC,
	cin => \inst2|draw1|line1|Add2~7\,
	combout => \inst2|draw1|line1|Add2~8_combout\,
	cout => \inst2|draw1|line1|Add2~9\);

-- Location: LCCOMB_X23_Y17_N26
\inst2|draw1|line1|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add2~10_combout\ = (\inst2|decoder1|h\(5) & ((\inst2|decoder1|y\(5) & (!\inst2|draw1|line1|Add2~9\)) # (!\inst2|decoder1|y\(5) & (\inst2|draw1|line1|Add2~9\ & VCC)))) # (!\inst2|decoder1|h\(5) & ((\inst2|decoder1|y\(5) & 
-- ((\inst2|draw1|line1|Add2~9\) # (GND))) # (!\inst2|decoder1|y\(5) & (!\inst2|draw1|line1|Add2~9\))))
-- \inst2|draw1|line1|Add2~11\ = CARRY((\inst2|decoder1|h\(5) & (\inst2|decoder1|y\(5) & !\inst2|draw1|line1|Add2~9\)) # (!\inst2|decoder1|h\(5) & ((\inst2|decoder1|y\(5)) # (!\inst2|draw1|line1|Add2~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|h\(5),
	datab => \inst2|decoder1|y\(5),
	datad => VCC,
	cin => \inst2|draw1|line1|Add2~9\,
	combout => \inst2|draw1|line1|Add2~10_combout\,
	cout => \inst2|draw1|line1|Add2~11\);

-- Location: LCCOMB_X23_Y17_N28
\inst2|draw1|line1|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add2~12_combout\ = ((\inst2|decoder1|h\(6) $ (\inst2|decoder1|y\(6) $ (\inst2|draw1|line1|Add2~11\)))) # (GND)
-- \inst2|draw1|line1|Add2~13\ = CARRY((\inst2|decoder1|h\(6) & ((!\inst2|draw1|line1|Add2~11\) # (!\inst2|decoder1|y\(6)))) # (!\inst2|decoder1|h\(6) & (!\inst2|decoder1|y\(6) & !\inst2|draw1|line1|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|h\(6),
	datab => \inst2|decoder1|y\(6),
	datad => VCC,
	cin => \inst2|draw1|line1|Add2~11\,
	combout => \inst2|draw1|line1|Add2~12_combout\,
	cout => \inst2|draw1|line1|Add2~13\);

-- Location: LCCOMB_X23_Y17_N30
\inst2|draw1|line1|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add2~14_combout\ = \inst2|draw1|line1|Add2~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|draw1|line1|Add2~13\,
	combout => \inst2|draw1|line1|Add2~14_combout\);

-- Location: LCCOMB_X24_Y17_N16
\inst2|draw1|line1|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add3~0_combout\ = (\inst2|draw1|line1|dy~0_combout\ & (!\inst2|draw1|line1|Add2~14_combout\ & VCC)) # (!\inst2|draw1|line1|dy~0_combout\ & (\inst2|draw1|line1|Add2~14_combout\ $ (GND)))
-- \inst2|draw1|line1|Add3~1\ = CARRY((!\inst2|draw1|line1|dy~0_combout\ & !\inst2|draw1|line1|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|dy~0_combout\,
	datab => \inst2|draw1|line1|Add2~14_combout\,
	datad => VCC,
	combout => \inst2|draw1|line1|Add3~0_combout\,
	cout => \inst2|draw1|line1|Add3~1\);

-- Location: LCCOMB_X24_Y17_N18
\inst2|draw1|line1|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add3~2_combout\ = (\inst2|draw1|line1|Add3~1\ & (\inst2|draw1|line1|Add2~14_combout\ $ ((\inst2|draw1|line1|Add2~2_combout\)))) # (!\inst2|draw1|line1|Add3~1\ & ((\inst2|draw1|line1|Add2~14_combout\ $ 
-- (!\inst2|draw1|line1|Add2~2_combout\)) # (GND)))
-- \inst2|draw1|line1|Add3~3\ = CARRY((\inst2|draw1|line1|Add2~14_combout\ $ (\inst2|draw1|line1|Add2~2_combout\)) # (!\inst2|draw1|line1|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add2~14_combout\,
	datab => \inst2|draw1|line1|Add2~2_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add3~1\,
	combout => \inst2|draw1|line1|Add3~2_combout\,
	cout => \inst2|draw1|line1|Add3~3\);

-- Location: LCCOMB_X24_Y17_N22
\inst2|draw1|line1|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add3~6_combout\ = (\inst2|draw1|line1|Add3~5\ & (\inst2|draw1|line1|Add2~14_combout\ $ ((\inst2|draw1|line1|Add2~6_combout\)))) # (!\inst2|draw1|line1|Add3~5\ & ((\inst2|draw1|line1|Add2~14_combout\ $ 
-- (!\inst2|draw1|line1|Add2~6_combout\)) # (GND)))
-- \inst2|draw1|line1|Add3~7\ = CARRY((\inst2|draw1|line1|Add2~14_combout\ $ (\inst2|draw1|line1|Add2~6_combout\)) # (!\inst2|draw1|line1|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add2~14_combout\,
	datab => \inst2|draw1|line1|Add2~6_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add3~5\,
	combout => \inst2|draw1|line1|Add3~6_combout\,
	cout => \inst2|draw1|line1|Add3~7\);

-- Location: LCCOMB_X24_Y17_N26
\inst2|draw1|line1|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add3~10_combout\ = (\inst2|draw1|line1|Add3~9\ & (\inst2|draw1|line1|Add2~14_combout\ $ ((\inst2|draw1|line1|Add2~10_combout\)))) # (!\inst2|draw1|line1|Add3~9\ & ((\inst2|draw1|line1|Add2~14_combout\ $ 
-- (!\inst2|draw1|line1|Add2~10_combout\)) # (GND)))
-- \inst2|draw1|line1|Add3~11\ = CARRY((\inst2|draw1|line1|Add2~14_combout\ $ (\inst2|draw1|line1|Add2~10_combout\)) # (!\inst2|draw1|line1|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add2~14_combout\,
	datab => \inst2|draw1|line1|Add2~10_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add3~9\,
	combout => \inst2|draw1|line1|Add3~10_combout\,
	cout => \inst2|draw1|line1|Add3~11\);

-- Location: LCCOMB_X24_Y17_N28
\inst2|draw1|line1|Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add3~12_combout\ = (\inst2|draw1|line1|Add3~11\ & ((\inst2|draw1|line1|Add2~14_combout\ $ (!\inst2|draw1|line1|Add2~12_combout\)))) # (!\inst2|draw1|line1|Add3~11\ & (\inst2|draw1|line1|Add2~14_combout\ $ 
-- (\inst2|draw1|line1|Add2~12_combout\ $ (GND))))
-- \inst2|draw1|line1|Add3~13\ = CARRY((!\inst2|draw1|line1|Add3~11\ & (\inst2|draw1|line1|Add2~14_combout\ $ (!\inst2|draw1|line1|Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add2~14_combout\,
	datab => \inst2|draw1|line1|Add2~12_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add3~11\,
	combout => \inst2|draw1|line1|Add3~12_combout\,
	cout => \inst2|draw1|line1|Add3~13\);

-- Location: LCCOMB_X25_Y18_N2
\inst2|draw1|line1|Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add4~2_combout\ = (\inst2|draw1|line1|Add1~2_combout\ & ((\inst2|draw1|line1|Add3~2_combout\ & (!\inst2|draw1|line1|Add4~1\)) # (!\inst2|draw1|line1|Add3~2_combout\ & (\inst2|draw1|line1|Add4~1\ & VCC)))) # 
-- (!\inst2|draw1|line1|Add1~2_combout\ & ((\inst2|draw1|line1|Add3~2_combout\ & ((\inst2|draw1|line1|Add4~1\) # (GND))) # (!\inst2|draw1|line1|Add3~2_combout\ & (!\inst2|draw1|line1|Add4~1\))))
-- \inst2|draw1|line1|Add4~3\ = CARRY((\inst2|draw1|line1|Add1~2_combout\ & (\inst2|draw1|line1|Add3~2_combout\ & !\inst2|draw1|line1|Add4~1\)) # (!\inst2|draw1|line1|Add1~2_combout\ & ((\inst2|draw1|line1|Add3~2_combout\) # (!\inst2|draw1|line1|Add4~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add1~2_combout\,
	datab => \inst2|draw1|line1|Add3~2_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add4~1\,
	combout => \inst2|draw1|line1|Add4~2_combout\,
	cout => \inst2|draw1|line1|Add4~3\);

-- Location: LCCOMB_X25_Y18_N6
\inst2|draw1|line1|Add4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add4~6_combout\ = (\inst2|draw1|line1|Add3~6_combout\ & ((\inst2|draw1|line1|Add1~6_combout\ & (!\inst2|draw1|line1|Add4~5\)) # (!\inst2|draw1|line1|Add1~6_combout\ & ((\inst2|draw1|line1|Add4~5\) # (GND))))) # 
-- (!\inst2|draw1|line1|Add3~6_combout\ & ((\inst2|draw1|line1|Add1~6_combout\ & (\inst2|draw1|line1|Add4~5\ & VCC)) # (!\inst2|draw1|line1|Add1~6_combout\ & (!\inst2|draw1|line1|Add4~5\))))
-- \inst2|draw1|line1|Add4~7\ = CARRY((\inst2|draw1|line1|Add3~6_combout\ & ((!\inst2|draw1|line1|Add4~5\) # (!\inst2|draw1|line1|Add1~6_combout\))) # (!\inst2|draw1|line1|Add3~6_combout\ & (!\inst2|draw1|line1|Add1~6_combout\ & 
-- !\inst2|draw1|line1|Add4~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add3~6_combout\,
	datab => \inst2|draw1|line1|Add1~6_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add4~5\,
	combout => \inst2|draw1|line1|Add4~6_combout\,
	cout => \inst2|draw1|line1|Add4~7\);

-- Location: LCCOMB_X25_Y18_N14
\inst2|draw1|line1|Add4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add4~14_combout\ = (\inst2|draw1|line1|Add3~14_combout\ & ((\inst2|draw1|line1|Add1~14_combout\ & (!\inst2|draw1|line1|Add4~13\)) # (!\inst2|draw1|line1|Add1~14_combout\ & ((\inst2|draw1|line1|Add4~13\) # (GND))))) # 
-- (!\inst2|draw1|line1|Add3~14_combout\ & ((\inst2|draw1|line1|Add1~14_combout\ & (\inst2|draw1|line1|Add4~13\ & VCC)) # (!\inst2|draw1|line1|Add1~14_combout\ & (!\inst2|draw1|line1|Add4~13\))))
-- \inst2|draw1|line1|Add4~15\ = CARRY((\inst2|draw1|line1|Add3~14_combout\ & ((!\inst2|draw1|line1|Add4~13\) # (!\inst2|draw1|line1|Add1~14_combout\))) # (!\inst2|draw1|line1|Add3~14_combout\ & (!\inst2|draw1|line1|Add1~14_combout\ & 
-- !\inst2|draw1|line1|Add4~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add3~14_combout\,
	datab => \inst2|draw1|line1|Add1~14_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add4~13\,
	combout => \inst2|draw1|line1|Add4~14_combout\,
	cout => \inst2|draw1|line1|Add4~15\);

-- Location: LCCOMB_X25_Y17_N24
\inst2|draw1|line1|err[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|err[0]~1_combout\ = (\inst2|draw1|line1|setup~regout\) # ((!\inst2|draw1|line1|LessThan2~10_combout\ & \inst2|draw1|line1|LessThan3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|draw1|line1|setup~regout\,
	datac => \inst2|draw1|line1|LessThan2~10_combout\,
	datad => \inst2|draw1|line1|LessThan3~5_combout\,
	combout => \inst2|draw1|line1|err[0]~1_combout\);

-- Location: LCCOMB_X27_Y17_N4
\inst2|draw1|line1|Add7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add7~2_combout\ = (\inst2|draw1|line1|err\(1) & ((\inst2|draw1|line1|Add3~2_combout\ & (!\inst2|draw1|line1|Add7~1\)) # (!\inst2|draw1|line1|Add3~2_combout\ & (\inst2|draw1|line1|Add7~1\ & VCC)))) # (!\inst2|draw1|line1|err\(1) & 
-- ((\inst2|draw1|line1|Add3~2_combout\ & ((\inst2|draw1|line1|Add7~1\) # (GND))) # (!\inst2|draw1|line1|Add3~2_combout\ & (!\inst2|draw1|line1|Add7~1\))))
-- \inst2|draw1|line1|Add7~3\ = CARRY((\inst2|draw1|line1|err\(1) & (\inst2|draw1|line1|Add3~2_combout\ & !\inst2|draw1|line1|Add7~1\)) # (!\inst2|draw1|line1|err\(1) & ((\inst2|draw1|line1|Add3~2_combout\) # (!\inst2|draw1|line1|Add7~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|err\(1),
	datab => \inst2|draw1|line1|Add3~2_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add7~1\,
	combout => \inst2|draw1|line1|Add7~2_combout\,
	cout => \inst2|draw1|line1|Add7~3\);

-- Location: LCCOMB_X26_Y18_N8
\inst2|draw1|line1|Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add5~0_combout\ = (\inst2|draw1|line1|Add7~0_combout\ & (\inst2|draw1|line1|Add1~0_combout\ $ (VCC))) # (!\inst2|draw1|line1|Add7~0_combout\ & (\inst2|draw1|line1|Add1~0_combout\ & VCC))
-- \inst2|draw1|line1|Add5~1\ = CARRY((\inst2|draw1|line1|Add7~0_combout\ & \inst2|draw1|line1|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add7~0_combout\,
	datab => \inst2|draw1|line1|Add1~0_combout\,
	datad => VCC,
	combout => \inst2|draw1|line1|Add5~0_combout\,
	cout => \inst2|draw1|line1|Add5~1\);

-- Location: LCCOMB_X26_Y18_N10
\inst2|draw1|line1|Add5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add5~2_combout\ = (\inst2|draw1|line1|Add1~2_combout\ & ((\inst2|draw1|line1|Add7~2_combout\ & (\inst2|draw1|line1|Add5~1\ & VCC)) # (!\inst2|draw1|line1|Add7~2_combout\ & (!\inst2|draw1|line1|Add5~1\)))) # 
-- (!\inst2|draw1|line1|Add1~2_combout\ & ((\inst2|draw1|line1|Add7~2_combout\ & (!\inst2|draw1|line1|Add5~1\)) # (!\inst2|draw1|line1|Add7~2_combout\ & ((\inst2|draw1|line1|Add5~1\) # (GND)))))
-- \inst2|draw1|line1|Add5~3\ = CARRY((\inst2|draw1|line1|Add1~2_combout\ & (!\inst2|draw1|line1|Add7~2_combout\ & !\inst2|draw1|line1|Add5~1\)) # (!\inst2|draw1|line1|Add1~2_combout\ & ((!\inst2|draw1|line1|Add5~1\) # 
-- (!\inst2|draw1|line1|Add7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add1~2_combout\,
	datab => \inst2|draw1|line1|Add7~2_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add5~1\,
	combout => \inst2|draw1|line1|Add5~2_combout\,
	cout => \inst2|draw1|line1|Add5~3\);

-- Location: LCCOMB_X27_Y17_N30
\inst2|draw1|line1|err~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|err~16_combout\ = (\inst2|draw1|line1|err[0]~0_combout\ & ((\inst2|draw1|line1|Add9~2_combout\) # ((\inst2|draw1|line1|err[0]~1_combout\)))) # (!\inst2|draw1|line1|err[0]~0_combout\ & (((\inst2|draw1|line1|Add5~2_combout\ & 
-- !\inst2|draw1|line1|err[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add9~2_combout\,
	datab => \inst2|draw1|line1|Add5~2_combout\,
	datac => \inst2|draw1|line1|err[0]~0_combout\,
	datad => \inst2|draw1|line1|err[0]~1_combout\,
	combout => \inst2|draw1|line1|err~16_combout\);

-- Location: LCCOMB_X27_Y17_N24
\inst2|draw1|line1|err~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|err~17_combout\ = (\inst2|draw1|line1|err[0]~1_combout\ & ((\inst2|draw1|line1|err~16_combout\ & (\inst2|draw1|line1|Add7~2_combout\)) # (!\inst2|draw1|line1|err~16_combout\ & ((\inst2|draw1|line1|Add4~2_combout\))))) # 
-- (!\inst2|draw1|line1|err[0]~1_combout\ & (((\inst2|draw1|line1|err~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add7~2_combout\,
	datab => \inst2|draw1|line1|err[0]~1_combout\,
	datac => \inst2|draw1|line1|Add4~2_combout\,
	datad => \inst2|draw1|line1|err~16_combout\,
	combout => \inst2|draw1|line1|err~17_combout\);

-- Location: LCCOMB_X25_Y17_N28
\inst2|draw1|line1|err[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|err[0]~4_combout\ = (\inst2|draw1|line1|draw_line_comb~9_combout\) # ((!\inst2|draw1|line1|LessThan2~10_combout\ & !\inst2|draw1|line1|LessThan3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|draw1|line1|draw_line_comb~9_combout\,
	datac => \inst2|draw1|line1|LessThan2~10_combout\,
	datad => \inst2|draw1|line1|LessThan3~5_combout\,
	combout => \inst2|draw1|line1|err[0]~4_combout\);

-- Location: LCCOMB_X25_Y17_N2
\inst2|draw1|line1|err[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|err[0]~5_combout\ = (\inst2|draw1|line1|cx[3]~0_combout\) # ((\inst2|draw1|rect1|cy_tmp[0]~1_combout\ & ((\inst2|draw1|line1|setup~regout\) # (!\inst2|draw1|line1|err[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|setup~regout\,
	datab => \inst2|draw1|rect1|cy_tmp[0]~1_combout\,
	datac => \inst2|draw1|line1|cx[3]~0_combout\,
	datad => \inst2|draw1|line1|err[0]~4_combout\,
	combout => \inst2|draw1|line1|err[0]~5_combout\);

-- Location: LCFF_X27_Y17_N25
\inst2|draw1|line1|err[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|line1|err~17_combout\,
	sclr => \inst2|draw1|line1|cx[3]~0_combout\,
	ena => \inst2|draw1|line1|err[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|line1|err\(1));

-- Location: LCCOMB_X26_Y17_N8
\inst2|draw1|line1|Add9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add9~0_combout\ = (\inst2|draw1|line1|err\(0) & (\inst2|draw1|line1|Add1~0_combout\ $ (VCC))) # (!\inst2|draw1|line1|err\(0) & (\inst2|draw1|line1|Add1~0_combout\ & VCC))
-- \inst2|draw1|line1|Add9~1\ = CARRY((\inst2|draw1|line1|err\(0) & \inst2|draw1|line1|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|err\(0),
	datab => \inst2|draw1|line1|Add1~0_combout\,
	datad => VCC,
	combout => \inst2|draw1|line1|Add9~0_combout\,
	cout => \inst2|draw1|line1|Add9~1\);

-- Location: LCCOMB_X26_Y17_N12
\inst2|draw1|line1|Add9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add9~4_combout\ = ((\inst2|draw1|line1|err\(2) $ (\inst2|draw1|line1|Add1~4_combout\ $ (!\inst2|draw1|line1|Add9~3\)))) # (GND)
-- \inst2|draw1|line1|Add9~5\ = CARRY((\inst2|draw1|line1|err\(2) & ((\inst2|draw1|line1|Add1~4_combout\) # (!\inst2|draw1|line1|Add9~3\))) # (!\inst2|draw1|line1|err\(2) & (\inst2|draw1|line1|Add1~4_combout\ & !\inst2|draw1|line1|Add9~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|err\(2),
	datab => \inst2|draw1|line1|Add1~4_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add9~3\,
	combout => \inst2|draw1|line1|Add9~4_combout\,
	cout => \inst2|draw1|line1|Add9~5\);

-- Location: LCCOMB_X26_Y17_N16
\inst2|draw1|line1|Add9~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add9~8_combout\ = ((\inst2|draw1|line1|err\(4) $ (\inst2|draw1|line1|Add1~8_combout\ $ (!\inst2|draw1|line1|Add9~7\)))) # (GND)
-- \inst2|draw1|line1|Add9~9\ = CARRY((\inst2|draw1|line1|err\(4) & ((\inst2|draw1|line1|Add1~8_combout\) # (!\inst2|draw1|line1|Add9~7\))) # (!\inst2|draw1|line1|err\(4) & (\inst2|draw1|line1|Add1~8_combout\ & !\inst2|draw1|line1|Add9~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|err\(4),
	datab => \inst2|draw1|line1|Add1~8_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add9~7\,
	combout => \inst2|draw1|line1|Add9~8_combout\,
	cout => \inst2|draw1|line1|Add9~9\);

-- Location: LCCOMB_X27_Y17_N6
\inst2|draw1|line1|Add7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add7~4_combout\ = ((\inst2|draw1|line1|Add3~4_combout\ $ (\inst2|draw1|line1|err\(2) $ (\inst2|draw1|line1|Add7~3\)))) # (GND)
-- \inst2|draw1|line1|Add7~5\ = CARRY((\inst2|draw1|line1|Add3~4_combout\ & (\inst2|draw1|line1|err\(2) & !\inst2|draw1|line1|Add7~3\)) # (!\inst2|draw1|line1|Add3~4_combout\ & ((\inst2|draw1|line1|err\(2)) # (!\inst2|draw1|line1|Add7~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add3~4_combout\,
	datab => \inst2|draw1|line1|err\(2),
	datad => VCC,
	cin => \inst2|draw1|line1|Add7~3\,
	combout => \inst2|draw1|line1|Add7~4_combout\,
	cout => \inst2|draw1|line1|Add7~5\);

-- Location: LCCOMB_X26_Y18_N12
\inst2|draw1|line1|Add5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add5~4_combout\ = ((\inst2|draw1|line1|Add1~4_combout\ $ (\inst2|draw1|line1|Add7~4_combout\ $ (!\inst2|draw1|line1|Add5~3\)))) # (GND)
-- \inst2|draw1|line1|Add5~5\ = CARRY((\inst2|draw1|line1|Add1~4_combout\ & ((\inst2|draw1|line1|Add7~4_combout\) # (!\inst2|draw1|line1|Add5~3\))) # (!\inst2|draw1|line1|Add1~4_combout\ & (\inst2|draw1|line1|Add7~4_combout\ & !\inst2|draw1|line1|Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add1~4_combout\,
	datab => \inst2|draw1|line1|Add7~4_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add5~3\,
	combout => \inst2|draw1|line1|Add5~4_combout\,
	cout => \inst2|draw1|line1|Add5~5\);

-- Location: LCCOMB_X27_Y17_N0
\inst2|draw1|line1|err~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|err~14_combout\ = (\inst2|draw1|line1|err[0]~0_combout\ & (((\inst2|draw1|line1|err[0]~1_combout\)))) # (!\inst2|draw1|line1|err[0]~0_combout\ & ((\inst2|draw1|line1|err[0]~1_combout\ & (\inst2|draw1|line1|Add4~4_combout\)) # 
-- (!\inst2|draw1|line1|err[0]~1_combout\ & ((\inst2|draw1|line1|Add5~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add4~4_combout\,
	datab => \inst2|draw1|line1|Add5~4_combout\,
	datac => \inst2|draw1|line1|err[0]~0_combout\,
	datad => \inst2|draw1|line1|err[0]~1_combout\,
	combout => \inst2|draw1|line1|err~14_combout\);

-- Location: LCCOMB_X27_Y17_N22
\inst2|draw1|line1|err~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|err~15_combout\ = (\inst2|draw1|line1|err[0]~0_combout\ & ((\inst2|draw1|line1|err~14_combout\ & (\inst2|draw1|line1|Add7~4_combout\)) # (!\inst2|draw1|line1|err~14_combout\ & ((\inst2|draw1|line1|Add9~4_combout\))))) # 
-- (!\inst2|draw1|line1|err[0]~0_combout\ & (((\inst2|draw1|line1|err~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add7~4_combout\,
	datab => \inst2|draw1|line1|Add9~4_combout\,
	datac => \inst2|draw1|line1|err[0]~0_combout\,
	datad => \inst2|draw1|line1|err~14_combout\,
	combout => \inst2|draw1|line1|err~15_combout\);

-- Location: LCFF_X27_Y17_N23
\inst2|draw1|line1|err[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|line1|err~15_combout\,
	sclr => \inst2|draw1|line1|cx[3]~0_combout\,
	ena => \inst2|draw1|line1|err[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|line1|err\(2));

-- Location: LCCOMB_X27_Y17_N8
\inst2|draw1|line1|Add7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add7~6_combout\ = (\inst2|draw1|line1|err\(3) & ((\inst2|draw1|line1|Add3~6_combout\ & (!\inst2|draw1|line1|Add7~5\)) # (!\inst2|draw1|line1|Add3~6_combout\ & (\inst2|draw1|line1|Add7~5\ & VCC)))) # (!\inst2|draw1|line1|err\(3) & 
-- ((\inst2|draw1|line1|Add3~6_combout\ & ((\inst2|draw1|line1|Add7~5\) # (GND))) # (!\inst2|draw1|line1|Add3~6_combout\ & (!\inst2|draw1|line1|Add7~5\))))
-- \inst2|draw1|line1|Add7~7\ = CARRY((\inst2|draw1|line1|err\(3) & (\inst2|draw1|line1|Add3~6_combout\ & !\inst2|draw1|line1|Add7~5\)) # (!\inst2|draw1|line1|err\(3) & ((\inst2|draw1|line1|Add3~6_combout\) # (!\inst2|draw1|line1|Add7~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|err\(3),
	datab => \inst2|draw1|line1|Add3~6_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add7~5\,
	combout => \inst2|draw1|line1|Add7~6_combout\,
	cout => \inst2|draw1|line1|Add7~7\);

-- Location: LCCOMB_X26_Y18_N14
\inst2|draw1|line1|Add5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add5~6_combout\ = (\inst2|draw1|line1|Add1~6_combout\ & ((\inst2|draw1|line1|Add7~6_combout\ & (\inst2|draw1|line1|Add5~5\ & VCC)) # (!\inst2|draw1|line1|Add7~6_combout\ & (!\inst2|draw1|line1|Add5~5\)))) # 
-- (!\inst2|draw1|line1|Add1~6_combout\ & ((\inst2|draw1|line1|Add7~6_combout\ & (!\inst2|draw1|line1|Add5~5\)) # (!\inst2|draw1|line1|Add7~6_combout\ & ((\inst2|draw1|line1|Add5~5\) # (GND)))))
-- \inst2|draw1|line1|Add5~7\ = CARRY((\inst2|draw1|line1|Add1~6_combout\ & (!\inst2|draw1|line1|Add7~6_combout\ & !\inst2|draw1|line1|Add5~5\)) # (!\inst2|draw1|line1|Add1~6_combout\ & ((!\inst2|draw1|line1|Add5~5\) # 
-- (!\inst2|draw1|line1|Add7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add1~6_combout\,
	datab => \inst2|draw1|line1|Add7~6_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add5~5\,
	combout => \inst2|draw1|line1|Add5~6_combout\,
	cout => \inst2|draw1|line1|Add5~7\);

-- Location: LCCOMB_X26_Y18_N16
\inst2|draw1|line1|Add5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add5~8_combout\ = ((\inst2|draw1|line1|Add7~8_combout\ $ (\inst2|draw1|line1|Add1~8_combout\ $ (!\inst2|draw1|line1|Add5~7\)))) # (GND)
-- \inst2|draw1|line1|Add5~9\ = CARRY((\inst2|draw1|line1|Add7~8_combout\ & ((\inst2|draw1|line1|Add1~8_combout\) # (!\inst2|draw1|line1|Add5~7\))) # (!\inst2|draw1|line1|Add7~8_combout\ & (\inst2|draw1|line1|Add1~8_combout\ & !\inst2|draw1|line1|Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add7~8_combout\,
	datab => \inst2|draw1|line1|Add1~8_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add5~7\,
	combout => \inst2|draw1|line1|Add5~8_combout\,
	cout => \inst2|draw1|line1|Add5~9\);

-- Location: LCCOMB_X27_Y17_N26
\inst2|draw1|line1|err~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|err~8_combout\ = (\inst2|draw1|line1|err[0]~0_combout\ & (((\inst2|draw1|line1|err[0]~1_combout\)))) # (!\inst2|draw1|line1|err[0]~0_combout\ & ((\inst2|draw1|line1|err[0]~1_combout\ & (\inst2|draw1|line1|Add4~8_combout\)) # 
-- (!\inst2|draw1|line1|err[0]~1_combout\ & ((\inst2|draw1|line1|Add5~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add4~8_combout\,
	datab => \inst2|draw1|line1|Add5~8_combout\,
	datac => \inst2|draw1|line1|err[0]~0_combout\,
	datad => \inst2|draw1|line1|err[0]~1_combout\,
	combout => \inst2|draw1|line1|err~8_combout\);

-- Location: LCCOMB_X27_Y17_N28
\inst2|draw1|line1|err~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|err~9_combout\ = (\inst2|draw1|line1|err[0]~0_combout\ & ((\inst2|draw1|line1|err~8_combout\ & (\inst2|draw1|line1|Add7~8_combout\)) # (!\inst2|draw1|line1|err~8_combout\ & ((\inst2|draw1|line1|Add9~8_combout\))))) # 
-- (!\inst2|draw1|line1|err[0]~0_combout\ & (((\inst2|draw1|line1|err~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add7~8_combout\,
	datab => \inst2|draw1|line1|Add9~8_combout\,
	datac => \inst2|draw1|line1|err[0]~0_combout\,
	datad => \inst2|draw1|line1|err~8_combout\,
	combout => \inst2|draw1|line1|err~9_combout\);

-- Location: LCFF_X27_Y17_N29
\inst2|draw1|line1|err[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|line1|err~9_combout\,
	sclr => \inst2|draw1|line1|cx[3]~0_combout\,
	ena => \inst2|draw1|line1|err[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|line1|err\(4));

-- Location: LCCOMB_X27_Y17_N12
\inst2|draw1|line1|Add7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add7~10_combout\ = (\inst2|draw1|line1|err\(5) & ((\inst2|draw1|line1|Add3~10_combout\ & (!\inst2|draw1|line1|Add7~9\)) # (!\inst2|draw1|line1|Add3~10_combout\ & (\inst2|draw1|line1|Add7~9\ & VCC)))) # (!\inst2|draw1|line1|err\(5) & 
-- ((\inst2|draw1|line1|Add3~10_combout\ & ((\inst2|draw1|line1|Add7~9\) # (GND))) # (!\inst2|draw1|line1|Add3~10_combout\ & (!\inst2|draw1|line1|Add7~9\))))
-- \inst2|draw1|line1|Add7~11\ = CARRY((\inst2|draw1|line1|err\(5) & (\inst2|draw1|line1|Add3~10_combout\ & !\inst2|draw1|line1|Add7~9\)) # (!\inst2|draw1|line1|err\(5) & ((\inst2|draw1|line1|Add3~10_combout\) # (!\inst2|draw1|line1|Add7~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|err\(5),
	datab => \inst2|draw1|line1|Add3~10_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add7~9\,
	combout => \inst2|draw1|line1|Add7~10_combout\,
	cout => \inst2|draw1|line1|Add7~11\);

-- Location: LCCOMB_X27_Y17_N14
\inst2|draw1|line1|Add7~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add7~12_combout\ = ((\inst2|draw1|line1|err\(6) $ (\inst2|draw1|line1|Add3~12_combout\ $ (\inst2|draw1|line1|Add7~11\)))) # (GND)
-- \inst2|draw1|line1|Add7~13\ = CARRY((\inst2|draw1|line1|err\(6) & ((!\inst2|draw1|line1|Add7~11\) # (!\inst2|draw1|line1|Add3~12_combout\))) # (!\inst2|draw1|line1|err\(6) & (!\inst2|draw1|line1|Add3~12_combout\ & !\inst2|draw1|line1|Add7~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|err\(6),
	datab => \inst2|draw1|line1|Add3~12_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add7~11\,
	combout => \inst2|draw1|line1|Add7~12_combout\,
	cout => \inst2|draw1|line1|Add7~13\);

-- Location: LCCOMB_X26_Y18_N18
\inst2|draw1|line1|Add5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add5~10_combout\ = (\inst2|draw1|line1|Add1~10_combout\ & ((\inst2|draw1|line1|Add7~10_combout\ & (\inst2|draw1|line1|Add5~9\ & VCC)) # (!\inst2|draw1|line1|Add7~10_combout\ & (!\inst2|draw1|line1|Add5~9\)))) # 
-- (!\inst2|draw1|line1|Add1~10_combout\ & ((\inst2|draw1|line1|Add7~10_combout\ & (!\inst2|draw1|line1|Add5~9\)) # (!\inst2|draw1|line1|Add7~10_combout\ & ((\inst2|draw1|line1|Add5~9\) # (GND)))))
-- \inst2|draw1|line1|Add5~11\ = CARRY((\inst2|draw1|line1|Add1~10_combout\ & (!\inst2|draw1|line1|Add7~10_combout\ & !\inst2|draw1|line1|Add5~9\)) # (!\inst2|draw1|line1|Add1~10_combout\ & ((!\inst2|draw1|line1|Add5~9\) # 
-- (!\inst2|draw1|line1|Add7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add1~10_combout\,
	datab => \inst2|draw1|line1|Add7~10_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add5~9\,
	combout => \inst2|draw1|line1|Add5~10_combout\,
	cout => \inst2|draw1|line1|Add5~11\);

-- Location: LCCOMB_X26_Y18_N20
\inst2|draw1|line1|Add5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add5~12_combout\ = ((\inst2|draw1|line1|Add1~12_combout\ $ (\inst2|draw1|line1|Add7~12_combout\ $ (!\inst2|draw1|line1|Add5~11\)))) # (GND)
-- \inst2|draw1|line1|Add5~13\ = CARRY((\inst2|draw1|line1|Add1~12_combout\ & ((\inst2|draw1|line1|Add7~12_combout\) # (!\inst2|draw1|line1|Add5~11\))) # (!\inst2|draw1|line1|Add1~12_combout\ & (\inst2|draw1|line1|Add7~12_combout\ & 
-- !\inst2|draw1|line1|Add5~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add1~12_combout\,
	datab => \inst2|draw1|line1|Add7~12_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add5~11\,
	combout => \inst2|draw1|line1|Add5~12_combout\,
	cout => \inst2|draw1|line1|Add5~13\);

-- Location: LCCOMB_X25_Y17_N10
\inst2|draw1|line1|err~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|err~2_combout\ = (\inst2|draw1|line1|err[0]~1_combout\ & ((\inst2|draw1|line1|Add4~12_combout\) # ((\inst2|draw1|line1|err[0]~0_combout\)))) # (!\inst2|draw1|line1|err[0]~1_combout\ & (((\inst2|draw1|line1|Add5~12_combout\ & 
-- !\inst2|draw1|line1|err[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add4~12_combout\,
	datab => \inst2|draw1|line1|Add5~12_combout\,
	datac => \inst2|draw1|line1|err[0]~1_combout\,
	datad => \inst2|draw1|line1|err[0]~0_combout\,
	combout => \inst2|draw1|line1|err~2_combout\);

-- Location: LCCOMB_X25_Y17_N8
\inst2|draw1|line1|err~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|err~3_combout\ = (\inst2|draw1|line1|err[0]~0_combout\ & ((\inst2|draw1|line1|err~2_combout\ & ((\inst2|draw1|line1|Add7~12_combout\))) # (!\inst2|draw1|line1|err~2_combout\ & (\inst2|draw1|line1|Add9~12_combout\)))) # 
-- (!\inst2|draw1|line1|err[0]~0_combout\ & (((\inst2|draw1|line1|err~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add9~12_combout\,
	datab => \inst2|draw1|line1|err[0]~0_combout\,
	datac => \inst2|draw1|line1|Add7~12_combout\,
	datad => \inst2|draw1|line1|err~2_combout\,
	combout => \inst2|draw1|line1|err~3_combout\);

-- Location: LCFF_X25_Y17_N9
\inst2|draw1|line1|err[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|line1|err~3_combout\,
	sclr => \inst2|draw1|line1|cx[3]~0_combout\,
	ena => \inst2|draw1|line1|err[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|line1|err\(6));

-- Location: LCCOMB_X26_Y17_N22
\inst2|draw1|line1|Add9~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add9~14_combout\ = (\inst2|draw1|line1|err\(7) & ((\inst2|draw1|line1|Add1~14_combout\ & (\inst2|draw1|line1|Add9~13\ & VCC)) # (!\inst2|draw1|line1|Add1~14_combout\ & (!\inst2|draw1|line1|Add9~13\)))) # (!\inst2|draw1|line1|err\(7) & 
-- ((\inst2|draw1|line1|Add1~14_combout\ & (!\inst2|draw1|line1|Add9~13\)) # (!\inst2|draw1|line1|Add1~14_combout\ & ((\inst2|draw1|line1|Add9~13\) # (GND)))))
-- \inst2|draw1|line1|Add9~15\ = CARRY((\inst2|draw1|line1|err\(7) & (!\inst2|draw1|line1|Add1~14_combout\ & !\inst2|draw1|line1|Add9~13\)) # (!\inst2|draw1|line1|err\(7) & ((!\inst2|draw1|line1|Add9~13\) # (!\inst2|draw1|line1|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|err\(7),
	datab => \inst2|draw1|line1|Add1~14_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add9~13\,
	combout => \inst2|draw1|line1|Add9~14_combout\,
	cout => \inst2|draw1|line1|Add9~15\);

-- Location: LCCOMB_X26_Y17_N6
\inst2|draw1|line1|err~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|err~6_combout\ = (\inst2|draw1|line1|err[0]~1_combout\ & (((\inst2|draw1|line1|err[0]~0_combout\)))) # (!\inst2|draw1|line1|err[0]~1_combout\ & ((\inst2|draw1|line1|err[0]~0_combout\ & ((\inst2|draw1|line1|Add9~14_combout\))) # 
-- (!\inst2|draw1|line1|err[0]~0_combout\ & (\inst2|draw1|line1|Add5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add5~14_combout\,
	datab => \inst2|draw1|line1|Add9~14_combout\,
	datac => \inst2|draw1|line1|err[0]~1_combout\,
	datad => \inst2|draw1|line1|err[0]~0_combout\,
	combout => \inst2|draw1|line1|err~6_combout\);

-- Location: LCCOMB_X26_Y17_N4
\inst2|draw1|line1|err~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|err~7_combout\ = (\inst2|draw1|line1|err[0]~1_combout\ & ((\inst2|draw1|line1|err~6_combout\ & (\inst2|draw1|line1|Add7~14_combout\)) # (!\inst2|draw1|line1|err~6_combout\ & ((\inst2|draw1|line1|Add4~14_combout\))))) # 
-- (!\inst2|draw1|line1|err[0]~1_combout\ & (((\inst2|draw1|line1|err~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add7~14_combout\,
	datab => \inst2|draw1|line1|Add4~14_combout\,
	datac => \inst2|draw1|line1|err[0]~1_combout\,
	datad => \inst2|draw1|line1|err~6_combout\,
	combout => \inst2|draw1|line1|err~7_combout\);

-- Location: LCFF_X26_Y17_N5
\inst2|draw1|line1|err[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|line1|err~7_combout\,
	sclr => \inst2|draw1|line1|cx[3]~0_combout\,
	ena => \inst2|draw1|line1|err[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|line1|err\(7));

-- Location: LCCOMB_X27_Y17_N18
\inst2|draw1|line1|Add7~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add7~16_combout\ = ((\inst2|draw1|line1|Add3~14_combout\ $ (\inst2|draw1|line1|err\(8) $ (\inst2|draw1|line1|Add7~15\)))) # (GND)
-- \inst2|draw1|line1|Add7~17\ = CARRY((\inst2|draw1|line1|Add3~14_combout\ & (\inst2|draw1|line1|err\(8) & !\inst2|draw1|line1|Add7~15\)) # (!\inst2|draw1|line1|Add3~14_combout\ & ((\inst2|draw1|line1|err\(8)) # (!\inst2|draw1|line1|Add7~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add3~14_combout\,
	datab => \inst2|draw1|line1|err\(8),
	datad => VCC,
	cin => \inst2|draw1|line1|Add7~15\,
	combout => \inst2|draw1|line1|Add7~16_combout\,
	cout => \inst2|draw1|line1|Add7~17\);

-- Location: LCCOMB_X27_Y17_N20
\inst2|draw1|line1|Add7~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add7~18_combout\ = \inst2|draw1|line1|Add3~14_combout\ $ (\inst2|draw1|line1|err\(9) $ (!\inst2|draw1|line1|Add7~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add3~14_combout\,
	datab => \inst2|draw1|line1|err\(9),
	cin => \inst2|draw1|line1|Add7~17\,
	combout => \inst2|draw1|line1|Add7~18_combout\);

-- Location: LCCOMB_X24_Y17_N30
\inst2|draw1|line1|Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add3~14_combout\ = \inst2|draw1|line1|Add3~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|draw1|line1|Add3~13\,
	combout => \inst2|draw1|line1|Add3~14_combout\);

-- Location: LCCOMB_X25_Y18_N16
\inst2|draw1|line1|Add4~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add4~16_combout\ = \inst2|draw1|line1|Add1~16_combout\ $ (\inst2|draw1|line1|Add4~15\ $ (\inst2|draw1|line1|Add3~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add1~16_combout\,
	datad => \inst2|draw1|line1|Add3~14_combout\,
	cin => \inst2|draw1|line1|Add4~15\,
	combout => \inst2|draw1|line1|Add4~16_combout\);

-- Location: LCCOMB_X24_Y19_N30
\inst2|draw1|line1|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add1~16_combout\ = !\inst2|draw1|line1|Add1~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|draw1|line1|Add1~15\,
	combout => \inst2|draw1|line1|Add1~16_combout\);

-- Location: LCCOMB_X26_Y17_N26
\inst2|draw1|line1|Add9~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add9~18_combout\ = \inst2|draw1|line1|err\(9) $ (\inst2|draw1|line1|Add9~17\ $ (\inst2|draw1|line1|Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|draw1|line1|err\(9),
	datad => \inst2|draw1|line1|Add1~16_combout\,
	cin => \inst2|draw1|line1|Add9~17\,
	combout => \inst2|draw1|line1|Add9~18_combout\);

-- Location: LCCOMB_X26_Y17_N2
\inst2|draw1|line1|err~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|err~22_combout\ = (\inst2|draw1|line1|err[0]~1_combout\ & (((\inst2|draw1|line1|err[0]~0_combout\)))) # (!\inst2|draw1|line1|err[0]~1_combout\ & ((\inst2|draw1|line1|err[0]~0_combout\ & ((\inst2|draw1|line1|Add9~18_combout\))) # 
-- (!\inst2|draw1|line1|err[0]~0_combout\ & (\inst2|draw1|line1|Add5~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add5~18_combout\,
	datab => \inst2|draw1|line1|Add9~18_combout\,
	datac => \inst2|draw1|line1|err[0]~1_combout\,
	datad => \inst2|draw1|line1|err[0]~0_combout\,
	combout => \inst2|draw1|line1|err~22_combout\);

-- Location: LCCOMB_X26_Y17_N28
\inst2|draw1|line1|err~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|err~23_combout\ = (\inst2|draw1|line1|err[0]~1_combout\ & ((\inst2|draw1|line1|err~22_combout\ & (\inst2|draw1|line1|Add7~18_combout\)) # (!\inst2|draw1|line1|err~22_combout\ & ((\inst2|draw1|line1|Add4~16_combout\))))) # 
-- (!\inst2|draw1|line1|err[0]~1_combout\ & (((\inst2|draw1|line1|err~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|err[0]~1_combout\,
	datab => \inst2|draw1|line1|Add7~18_combout\,
	datac => \inst2|draw1|line1|Add4~16_combout\,
	datad => \inst2|draw1|line1|err~22_combout\,
	combout => \inst2|draw1|line1|err~23_combout\);

-- Location: LCFF_X26_Y17_N29
\inst2|draw1|line1|err[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|line1|err~23_combout\,
	sclr => \inst2|draw1|line1|cx[3]~0_combout\,
	ena => \inst2|draw1|line1|err[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|line1|err\(9));

-- Location: LCCOMB_X26_Y18_N30
\inst2|draw1|line1|err~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|err~10_combout\ = (\inst2|draw1|line1|err[0]~1_combout\ & (((\inst2|draw1|line1|err[0]~0_combout\)))) # (!\inst2|draw1|line1|err[0]~1_combout\ & ((\inst2|draw1|line1|err[0]~0_combout\ & (\inst2|draw1|line1|Add9~10_combout\)) # 
-- (!\inst2|draw1|line1|err[0]~0_combout\ & ((\inst2|draw1|line1|Add5~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add9~10_combout\,
	datab => \inst2|draw1|line1|Add5~10_combout\,
	datac => \inst2|draw1|line1|err[0]~1_combout\,
	datad => \inst2|draw1|line1|err[0]~0_combout\,
	combout => \inst2|draw1|line1|err~10_combout\);

-- Location: LCCOMB_X26_Y18_N4
\inst2|draw1|line1|err~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|err~11_combout\ = (\inst2|draw1|line1|err[0]~1_combout\ & ((\inst2|draw1|line1|err~10_combout\ & ((\inst2|draw1|line1|Add7~10_combout\))) # (!\inst2|draw1|line1|err~10_combout\ & (\inst2|draw1|line1|Add4~10_combout\)))) # 
-- (!\inst2|draw1|line1|err[0]~1_combout\ & (((\inst2|draw1|line1|err~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add4~10_combout\,
	datab => \inst2|draw1|line1|Add7~10_combout\,
	datac => \inst2|draw1|line1|err[0]~1_combout\,
	datad => \inst2|draw1|line1|err~10_combout\,
	combout => \inst2|draw1|line1|err~11_combout\);

-- Location: LCFF_X26_Y18_N5
\inst2|draw1|line1|err[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|line1|err~11_combout\,
	sclr => \inst2|draw1|line1|cx[3]~0_combout\,
	ena => \inst2|draw1|line1|err[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|line1|err\(5));

-- Location: LCCOMB_X24_Y17_N2
\inst2|draw1|line1|Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add6~0_combout\ = (\inst2|draw1|line1|Add3~0_combout\ & (!\inst2|draw1|line1|Add3~2_combout\ & VCC)) # (!\inst2|draw1|line1|Add3~0_combout\ & (\inst2|draw1|line1|Add3~2_combout\ $ (GND)))
-- \inst2|draw1|line1|Add6~1\ = CARRY((!\inst2|draw1|line1|Add3~0_combout\ & !\inst2|draw1|line1|Add3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add3~0_combout\,
	datab => \inst2|draw1|line1|Add3~2_combout\,
	datad => VCC,
	combout => \inst2|draw1|line1|Add6~0_combout\,
	cout => \inst2|draw1|line1|Add6~1\);

-- Location: LCCOMB_X24_Y17_N4
\inst2|draw1|line1|Add6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add6~2_combout\ = (\inst2|draw1|line1|Add3~4_combout\ & ((\inst2|draw1|line1|Add6~1\) # (GND))) # (!\inst2|draw1|line1|Add3~4_combout\ & (!\inst2|draw1|line1|Add6~1\))
-- \inst2|draw1|line1|Add6~3\ = CARRY((\inst2|draw1|line1|Add3~4_combout\) # (!\inst2|draw1|line1|Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add3~4_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add6~1\,
	combout => \inst2|draw1|line1|Add6~2_combout\,
	cout => \inst2|draw1|line1|Add6~3\);

-- Location: LCCOMB_X24_Y17_N6
\inst2|draw1|line1|Add6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add6~4_combout\ = (\inst2|draw1|line1|Add3~6_combout\ & (!\inst2|draw1|line1|Add6~3\ & VCC)) # (!\inst2|draw1|line1|Add3~6_combout\ & (\inst2|draw1|line1|Add6~3\ $ (GND)))
-- \inst2|draw1|line1|Add6~5\ = CARRY((!\inst2|draw1|line1|Add3~6_combout\ & !\inst2|draw1|line1|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|draw1|line1|Add3~6_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add6~3\,
	combout => \inst2|draw1|line1|Add6~4_combout\,
	cout => \inst2|draw1|line1|Add6~5\);

-- Location: LCCOMB_X24_Y17_N8
\inst2|draw1|line1|Add6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add6~6_combout\ = (\inst2|draw1|line1|Add3~8_combout\ & ((\inst2|draw1|line1|Add6~5\) # (GND))) # (!\inst2|draw1|line1|Add3~8_combout\ & (!\inst2|draw1|line1|Add6~5\))
-- \inst2|draw1|line1|Add6~7\ = CARRY((\inst2|draw1|line1|Add3~8_combout\) # (!\inst2|draw1|line1|Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add3~8_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add6~5\,
	combout => \inst2|draw1|line1|Add6~6_combout\,
	cout => \inst2|draw1|line1|Add6~7\);

-- Location: LCCOMB_X25_Y17_N26
\inst2|draw1|line1|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan3~0_combout\ = (\inst2|draw1|line1|err\(4) & (!\inst2|draw1|line1|Add6~8_combout\ & (\inst2|draw1|line1|Add6~10_combout\ $ (!\inst2|draw1|line1|err\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add6~10_combout\,
	datab => \inst2|draw1|line1|err\(4),
	datac => \inst2|draw1|line1|err\(5),
	datad => \inst2|draw1|line1|Add6~8_combout\,
	combout => \inst2|draw1|line1|LessThan3~0_combout\);

-- Location: LCCOMB_X26_Y18_N0
\inst2|draw1|line1|err~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|err~12_combout\ = (\inst2|draw1|line1|err[0]~1_combout\ & (((\inst2|draw1|line1|err[0]~0_combout\)))) # (!\inst2|draw1|line1|err[0]~1_combout\ & ((\inst2|draw1|line1|err[0]~0_combout\ & (\inst2|draw1|line1|Add9~6_combout\)) # 
-- (!\inst2|draw1|line1|err[0]~0_combout\ & ((\inst2|draw1|line1|Add5~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add9~6_combout\,
	datab => \inst2|draw1|line1|Add5~6_combout\,
	datac => \inst2|draw1|line1|err[0]~1_combout\,
	datad => \inst2|draw1|line1|err[0]~0_combout\,
	combout => \inst2|draw1|line1|err~12_combout\);

-- Location: LCCOMB_X26_Y18_N6
\inst2|draw1|line1|err~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|err~13_combout\ = (\inst2|draw1|line1|err[0]~1_combout\ & ((\inst2|draw1|line1|err~12_combout\ & (\inst2|draw1|line1|Add7~6_combout\)) # (!\inst2|draw1|line1|err~12_combout\ & ((\inst2|draw1|line1|Add4~6_combout\))))) # 
-- (!\inst2|draw1|line1|err[0]~1_combout\ & (((\inst2|draw1|line1|err~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add7~6_combout\,
	datab => \inst2|draw1|line1|Add4~6_combout\,
	datac => \inst2|draw1|line1|err[0]~1_combout\,
	datad => \inst2|draw1|line1|err~12_combout\,
	combout => \inst2|draw1|line1|err~13_combout\);

-- Location: LCFF_X26_Y18_N7
\inst2|draw1|line1|err[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|line1|err~13_combout\,
	sclr => \inst2|draw1|line1|cx[3]~0_combout\,
	ena => \inst2|draw1|line1|err[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|line1|err\(3));

-- Location: LCCOMB_X26_Y18_N2
\inst2|draw1|line1|err~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|err~18_combout\ = (\inst2|draw1|line1|err[0]~1_combout\ & ((\inst2|draw1|line1|Add4~0_combout\) # ((\inst2|draw1|line1|err[0]~0_combout\)))) # (!\inst2|draw1|line1|err[0]~1_combout\ & (((\inst2|draw1|line1|Add5~0_combout\ & 
-- !\inst2|draw1|line1|err[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add4~0_combout\,
	datab => \inst2|draw1|line1|Add5~0_combout\,
	datac => \inst2|draw1|line1|err[0]~1_combout\,
	datad => \inst2|draw1|line1|err[0]~0_combout\,
	combout => \inst2|draw1|line1|err~18_combout\);

-- Location: LCCOMB_X26_Y18_N28
\inst2|draw1|line1|err~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|err~19_combout\ = (\inst2|draw1|line1|err[0]~0_combout\ & ((\inst2|draw1|line1|err~18_combout\ & (\inst2|draw1|line1|Add7~0_combout\)) # (!\inst2|draw1|line1|err~18_combout\ & ((\inst2|draw1|line1|Add9~0_combout\))))) # 
-- (!\inst2|draw1|line1|err[0]~0_combout\ & (((\inst2|draw1|line1|err~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add7~0_combout\,
	datab => \inst2|draw1|line1|Add9~0_combout\,
	datac => \inst2|draw1|line1|err[0]~0_combout\,
	datad => \inst2|draw1|line1|err~18_combout\,
	combout => \inst2|draw1|line1|err~19_combout\);

-- Location: LCFF_X26_Y18_N29
\inst2|draw1|line1|err[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|line1|err~19_combout\,
	sclr => \inst2|draw1|line1|cx[3]~0_combout\,
	ena => \inst2|draw1|line1|err[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|line1|err\(0));

-- Location: LCCOMB_X24_Y17_N0
\inst2|draw1|line1|LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan3~1_combout\ = (\inst2|draw1|line1|err\(1) & (((\inst2|draw1|line1|err\(0) & !\inst2|draw1|line1|Add6~0_combout\)) # (!\inst2|draw1|line1|Add6~2_combout\))) # (!\inst2|draw1|line1|err\(1) & (\inst2|draw1|line1|err\(0) & 
-- (!\inst2|draw1|line1|Add6~2_combout\ & !\inst2|draw1|line1|Add6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|err\(1),
	datab => \inst2|draw1|line1|err\(0),
	datac => \inst2|draw1|line1|Add6~2_combout\,
	datad => \inst2|draw1|line1|Add6~0_combout\,
	combout => \inst2|draw1|line1|LessThan3~1_combout\);

-- Location: LCCOMB_X25_Y17_N0
\inst2|draw1|line1|LessThan3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan3~2_combout\ = (\inst2|draw1|line1|err\(2) & ((\inst2|draw1|line1|LessThan3~1_combout\) # (!\inst2|draw1|line1|Add6~4_combout\))) # (!\inst2|draw1|line1|err\(2) & (\inst2|draw1|line1|LessThan3~1_combout\ & 
-- !\inst2|draw1|line1|Add6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|err\(2),
	datac => \inst2|draw1|line1|LessThan3~1_combout\,
	datad => \inst2|draw1|line1|Add6~4_combout\,
	combout => \inst2|draw1|line1|LessThan3~2_combout\);

-- Location: LCCOMB_X25_Y17_N30
\inst2|draw1|line1|LessThan3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan3~3_combout\ = (\inst2|draw1|line1|err\(3) & ((\inst2|draw1|line1|LessThan3~2_combout\) # (!\inst2|draw1|line1|Add6~6_combout\))) # (!\inst2|draw1|line1|err\(3) & (!\inst2|draw1|line1|Add6~6_combout\ & 
-- \inst2|draw1|line1|LessThan3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|draw1|line1|err\(3),
	datac => \inst2|draw1|line1|Add6~6_combout\,
	datad => \inst2|draw1|line1|LessThan3~2_combout\,
	combout => \inst2|draw1|line1|LessThan3~3_combout\);

-- Location: LCCOMB_X25_Y17_N12
\inst2|draw1|line1|LessThan3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan3~4_combout\ = (\inst2|draw1|line1|LessThan3~3_combout\ & (\inst2|draw1|line1|Add6~8_combout\ $ (!\inst2|draw1|line1|err\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add6~8_combout\,
	datab => \inst2|draw1|line1|err\(4),
	datad => \inst2|draw1|line1|LessThan3~3_combout\,
	combout => \inst2|draw1|line1|LessThan3~4_combout\);

-- Location: LCCOMB_X25_Y17_N4
\inst2|draw1|line1|LessThan3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan3~6_combout\ = (\inst2|draw1|line1|LessThan3~0_combout\) # ((\inst2|draw1|line1|Add6~10_combout\ & (\inst2|draw1|line1|err\(5) & \inst2|draw1|line1|LessThan3~4_combout\)) # (!\inst2|draw1|line1|Add6~10_combout\ & 
-- ((\inst2|draw1|line1|err\(5)) # (\inst2|draw1|line1|LessThan3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add6~10_combout\,
	datab => \inst2|draw1|line1|LessThan3~0_combout\,
	datac => \inst2|draw1|line1|err\(5),
	datad => \inst2|draw1|line1|LessThan3~4_combout\,
	combout => \inst2|draw1|line1|LessThan3~6_combout\);

-- Location: LCCOMB_X25_Y17_N6
\inst2|draw1|line1|LessThan3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan3~7_combout\ = (\inst2|draw1|line1|Add6~12_combout\ & (\inst2|draw1|line1|err\(7) & (\inst2|draw1|line1|LessThan3~6_combout\ & \inst2|draw1|line1|err\(6)))) # (!\inst2|draw1|line1|Add6~12_combout\ & ((\inst2|draw1|line1|err\(7)) 
-- # ((\inst2|draw1|line1|LessThan3~6_combout\) # (\inst2|draw1|line1|err\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add6~12_combout\,
	datab => \inst2|draw1|line1|err\(7),
	datac => \inst2|draw1|line1|LessThan3~6_combout\,
	datad => \inst2|draw1|line1|err\(6),
	combout => \inst2|draw1|line1|LessThan3~7_combout\);

-- Location: LCCOMB_X25_Y17_N18
\inst2|draw1|line1|LessThan3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan3~5_combout\ = (\inst2|draw1|line1|Add6~12_combout\ & (((\inst2|draw1|line1|err\(8) & \inst2|draw1|line1|LessThan3~7_combout\)) # (!\inst2|draw1|line1|err\(9)))) # (!\inst2|draw1|line1|Add6~12_combout\ & 
-- (!\inst2|draw1|line1|err\(9) & ((\inst2|draw1|line1|err\(8)) # (\inst2|draw1|line1|LessThan3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add6~12_combout\,
	datab => \inst2|draw1|line1|err\(9),
	datac => \inst2|draw1|line1|err\(8),
	datad => \inst2|draw1|line1|LessThan3~7_combout\,
	combout => \inst2|draw1|line1|LessThan3~5_combout\);

-- Location: LCCOMB_X25_Y17_N22
\inst2|draw1|line1|err[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|err[0]~0_combout\ = (!\inst2|draw1|line1|setup~regout\ & ((!\inst2|draw1|line1|LessThan3~5_combout\) # (!\inst2|draw1|line1|LessThan2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|draw1|line1|setup~regout\,
	datac => \inst2|draw1|line1|LessThan2~10_combout\,
	datad => \inst2|draw1|line1|LessThan3~5_combout\,
	combout => \inst2|draw1|line1|err[0]~0_combout\);

-- Location: LCCOMB_X26_Y17_N0
\inst2|draw1|line1|err~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|err~20_combout\ = (\inst2|draw1|line1|err[0]~1_combout\ & ((\inst2|draw1|line1|Add4~16_combout\) # ((\inst2|draw1|line1|err[0]~0_combout\)))) # (!\inst2|draw1|line1|err[0]~1_combout\ & (((\inst2|draw1|line1|Add5~16_combout\ & 
-- !\inst2|draw1|line1|err[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add4~16_combout\,
	datab => \inst2|draw1|line1|Add5~16_combout\,
	datac => \inst2|draw1|line1|err[0]~1_combout\,
	datad => \inst2|draw1|line1|err[0]~0_combout\,
	combout => \inst2|draw1|line1|err~20_combout\);

-- Location: LCCOMB_X26_Y17_N30
\inst2|draw1|line1|err~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|err~21_combout\ = (\inst2|draw1|line1|err[0]~0_combout\ & ((\inst2|draw1|line1|err~20_combout\ & ((\inst2|draw1|line1|Add7~16_combout\))) # (!\inst2|draw1|line1|err~20_combout\ & (\inst2|draw1|line1|Add9~16_combout\)))) # 
-- (!\inst2|draw1|line1|err[0]~0_combout\ & (((\inst2|draw1|line1|err~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add9~16_combout\,
	datab => \inst2|draw1|line1|err[0]~0_combout\,
	datac => \inst2|draw1|line1|Add7~16_combout\,
	datad => \inst2|draw1|line1|err~20_combout\,
	combout => \inst2|draw1|line1|err~21_combout\);

-- Location: LCFF_X26_Y17_N31
\inst2|draw1|line1|err[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|line1|err~21_combout\,
	sclr => \inst2|draw1|line1|cx[3]~0_combout\,
	ena => \inst2|draw1|line1|err[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|line1|err\(8));

-- Location: LCCOMB_X25_Y19_N22
\inst2|draw1|line1|LessThan2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan2~6_combout\ = (\inst2|draw1|line1|Add1~10_combout\ & (((!\inst2|draw1|line1|err\(3) & \inst2|draw1|line1|Add1~8_combout\)) # (!\inst2|draw1|line1|err\(4)))) # (!\inst2|draw1|line1|Add1~10_combout\ & (!\inst2|draw1|line1|err\(3) 
-- & (!\inst2|draw1|line1|err\(4) & \inst2|draw1|line1|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|err\(3),
	datab => \inst2|draw1|line1|Add1~10_combout\,
	datac => \inst2|draw1|line1|err\(4),
	datad => \inst2|draw1|line1|Add1~8_combout\,
	combout => \inst2|draw1|line1|LessThan2~6_combout\);

-- Location: LCCOMB_X25_Y19_N8
\inst2|draw1|line1|LessThan2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan2~7_combout\ = (\inst2|draw1|line1|err\(6) & (\inst2|draw1|line1|Add1~12_combout\ & (!\inst2|draw1|line1|err\(5) & \inst2|draw1|line1|Add1~14_combout\))) # (!\inst2|draw1|line1|err\(6) & ((\inst2|draw1|line1|Add1~14_combout\) # 
-- ((\inst2|draw1|line1|Add1~12_combout\ & !\inst2|draw1|line1|err\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|err\(6),
	datab => \inst2|draw1|line1|Add1~12_combout\,
	datac => \inst2|draw1|line1|err\(5),
	datad => \inst2|draw1|line1|Add1~14_combout\,
	combout => \inst2|draw1|line1|LessThan2~7_combout\);

-- Location: LCCOMB_X25_Y19_N28
\inst2|draw1|line1|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan2~0_combout\ = (\inst2|draw1|line1|err\(6) & (\inst2|draw1|line1|Add1~14_combout\ & (\inst2|draw1|line1|Add1~12_combout\ $ (!\inst2|draw1|line1|err\(5))))) # (!\inst2|draw1|line1|err\(6) & (!\inst2|draw1|line1|Add1~14_combout\ & 
-- (\inst2|draw1|line1|Add1~12_combout\ $ (!\inst2|draw1|line1|err\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|err\(6),
	datab => \inst2|draw1|line1|Add1~12_combout\,
	datac => \inst2|draw1|line1|err\(5),
	datad => \inst2|draw1|line1|Add1~14_combout\,
	combout => \inst2|draw1|line1|LessThan2~0_combout\);

-- Location: LCCOMB_X25_Y19_N26
\inst2|draw1|line1|LessThan2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan2~8_combout\ = (\inst2|draw1|line1|LessThan2~7_combout\) # ((\inst2|draw1|line1|LessThan2~6_combout\ & \inst2|draw1|line1|LessThan2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|draw1|line1|LessThan2~6_combout\,
	datac => \inst2|draw1|line1|LessThan2~7_combout\,
	datad => \inst2|draw1|line1|LessThan2~0_combout\,
	combout => \inst2|draw1|line1|LessThan2~8_combout\);

-- Location: LCCOMB_X24_Y19_N8
\inst2|draw1|line1|LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan2~3_combout\ = (\inst2|draw1|line1|err\(2) & (!\inst2|draw1|line1|err\(1) & (\inst2|draw1|line1|Add1~6_combout\ & \inst2|draw1|line1|Add1~4_combout\))) # (!\inst2|draw1|line1|err\(2) & ((\inst2|draw1|line1|Add1~6_combout\) # 
-- ((!\inst2|draw1|line1|err\(1) & \inst2|draw1|line1|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|err\(2),
	datab => \inst2|draw1|line1|err\(1),
	datac => \inst2|draw1|line1|Add1~6_combout\,
	datad => \inst2|draw1|line1|Add1~4_combout\,
	combout => \inst2|draw1|line1|LessThan2~3_combout\);

-- Location: LCCOMB_X24_Y19_N0
\inst2|draw1|line1|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan2~1_combout\ = (\inst2|draw1|line1|err\(2) & (\inst2|draw1|line1|Add1~6_combout\ & (\inst2|draw1|line1|err\(1) $ (!\inst2|draw1|line1|Add1~4_combout\)))) # (!\inst2|draw1|line1|err\(2) & (!\inst2|draw1|line1|Add1~6_combout\ & 
-- (\inst2|draw1|line1|err\(1) $ (!\inst2|draw1|line1|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|err\(2),
	datab => \inst2|draw1|line1|err\(1),
	datac => \inst2|draw1|line1|Add1~6_combout\,
	datad => \inst2|draw1|line1|Add1~4_combout\,
	combout => \inst2|draw1|line1|LessThan2~1_combout\);

-- Location: LCCOMB_X24_Y19_N2
\inst2|draw1|line1|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan2~2_combout\ = (\inst2|draw1|line1|LessThan2~1_combout\ & ((\inst2|draw1|line1|err\(0) & (\inst2|draw1|line1|Add1~0_combout\ & \inst2|draw1|line1|Add1~2_combout\)) # (!\inst2|draw1|line1|err\(0) & 
-- ((\inst2|draw1|line1|Add1~0_combout\) # (\inst2|draw1|line1|Add1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|err\(0),
	datab => \inst2|draw1|line1|Add1~0_combout\,
	datac => \inst2|draw1|line1|Add1~2_combout\,
	datad => \inst2|draw1|line1|LessThan2~1_combout\,
	combout => \inst2|draw1|line1|LessThan2~2_combout\);

-- Location: LCCOMB_X24_Y19_N10
\inst2|draw1|line1|LessThan2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan2~4_combout\ = (\inst2|draw1|line1|LessThan2~3_combout\ & (\inst2|draw1|line1|err\(3) $ ((!\inst2|draw1|line1|Add1~8_combout\)))) # (!\inst2|draw1|line1|LessThan2~3_combout\ & (\inst2|draw1|line1|LessThan2~2_combout\ & 
-- (\inst2|draw1|line1|err\(3) $ (!\inst2|draw1|line1|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|err\(3),
	datab => \inst2|draw1|line1|Add1~8_combout\,
	datac => \inst2|draw1|line1|LessThan2~3_combout\,
	datad => \inst2|draw1|line1|LessThan2~2_combout\,
	combout => \inst2|draw1|line1|LessThan2~4_combout\);

-- Location: LCCOMB_X24_Y19_N12
\inst2|draw1|line1|LessThan2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan2~5_combout\ = (\inst2|draw1|line1|LessThan2~0_combout\ & (\inst2|draw1|line1|LessThan2~4_combout\ & (\inst2|draw1|line1|err\(4) $ (!\inst2|draw1|line1|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|err\(4),
	datab => \inst2|draw1|line1|LessThan2~0_combout\,
	datac => \inst2|draw1|line1|Add1~10_combout\,
	datad => \inst2|draw1|line1|LessThan2~4_combout\,
	combout => \inst2|draw1|line1|LessThan2~5_combout\);

-- Location: LCCOMB_X25_Y17_N16
\inst2|draw1|line1|LessThan2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan2~9_combout\ = (\inst2|draw1|line1|Add1~16_combout\ & (((\inst2|draw1|line1|LessThan2~8_combout\) # (\inst2|draw1|line1|LessThan2~5_combout\)) # (!\inst2|draw1|line1|err\(7)))) # (!\inst2|draw1|line1|Add1~16_combout\ & 
-- (!\inst2|draw1|line1|err\(7) & ((\inst2|draw1|line1|LessThan2~8_combout\) # (\inst2|draw1|line1|LessThan2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add1~16_combout\,
	datab => \inst2|draw1|line1|err\(7),
	datac => \inst2|draw1|line1|LessThan2~8_combout\,
	datad => \inst2|draw1|line1|LessThan2~5_combout\,
	combout => \inst2|draw1|line1|LessThan2~9_combout\);

-- Location: LCCOMB_X25_Y17_N14
\inst2|draw1|line1|LessThan2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan2~10_combout\ = (\inst2|draw1|line1|Add1~16_combout\ & (\inst2|draw1|line1|err\(9) & ((\inst2|draw1|line1|LessThan2~9_combout\) # (!\inst2|draw1|line1|err\(8))))) # (!\inst2|draw1|line1|Add1~16_combout\ & 
-- ((\inst2|draw1|line1|err\(9)) # ((!\inst2|draw1|line1|err\(8) & \inst2|draw1|line1|LessThan2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add1~16_combout\,
	datab => \inst2|draw1|line1|err\(8),
	datac => \inst2|draw1|line1|LessThan2~9_combout\,
	datad => \inst2|draw1|line1|err\(9),
	combout => \inst2|draw1|line1|LessThan2~10_combout\);

-- Location: LCCOMB_X21_Y17_N28
\inst2|draw1|line1|cy[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|cy[4]~0_combout\ = (\inst2|draw1|line1|draw_line_comb~9_combout\) # (!\inst2|draw1|line1|LessThan2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|draw_line_comb~9_combout\,
	datad => \inst2|draw1|line1|LessThan2~10_combout\,
	combout => \inst2|draw1|line1|cy[4]~0_combout\);

-- Location: LCCOMB_X21_Y17_N6
\inst2|draw1|line1|Add10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add10~3_combout\ = (\inst2|draw1|line1|cx[3]~0_combout\) # ((\inst2|ramcontroller1|draw_can_access~0_combout\ & ((\inst2|draw1|line1|setup~regout\) # (!\inst2|draw1|line1|cy[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|cx[3]~0_combout\,
	datab => \inst2|ramcontroller1|draw_can_access~0_combout\,
	datac => \inst2|draw1|line1|setup~regout\,
	datad => \inst2|draw1|line1|cy[4]~0_combout\,
	combout => \inst2|draw1|line1|Add10~3_combout\);

-- Location: LCFF_X21_Y17_N23
\inst2|draw1|line1|cy[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|line1|Add10~2_combout\,
	ena => \inst2|draw1|line1|Add10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|line1|cy\(0));

-- Location: LCCOMB_X22_Y17_N8
\inst2|draw1|line1|draw_line_comb~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|draw_line_comb~5_combout\ = (\inst2|draw1|line1|cy\(1) & (\inst2|decoder1|h\(1) & (\inst2|draw1|line1|cy\(0) $ (!\inst2|decoder1|h\(0))))) # (!\inst2|draw1|line1|cy\(1) & (!\inst2|decoder1|h\(1) & (\inst2|draw1|line1|cy\(0) $ 
-- (!\inst2|decoder1|h\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|cy\(1),
	datab => \inst2|draw1|line1|cy\(0),
	datac => \inst2|decoder1|h\(0),
	datad => \inst2|decoder1|h\(1),
	combout => \inst2|draw1|line1|draw_line_comb~5_combout\);

-- Location: LCCOMB_X23_Y17_N0
\inst2|draw1|line1|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan1~1_cout\ = CARRY((\inst2|decoder1|h\(0) & !\inst2|decoder1|y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|h\(0),
	datab => \inst2|decoder1|y\(0),
	datad => VCC,
	cout => \inst2|draw1|line1|LessThan1~1_cout\);

-- Location: LCCOMB_X23_Y17_N2
\inst2|draw1|line1|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan1~3_cout\ = CARRY((\inst2|decoder1|y\(1) & ((!\inst2|draw1|line1|LessThan1~1_cout\) # (!\inst2|decoder1|h\(1)))) # (!\inst2|decoder1|y\(1) & (!\inst2|decoder1|h\(1) & !\inst2|draw1|line1|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|y\(1),
	datab => \inst2|decoder1|h\(1),
	datad => VCC,
	cin => \inst2|draw1|line1|LessThan1~1_cout\,
	cout => \inst2|draw1|line1|LessThan1~3_cout\);

-- Location: LCCOMB_X23_Y17_N4
\inst2|draw1|line1|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan1~5_cout\ = CARRY((\inst2|decoder1|y\(2) & (\inst2|decoder1|h\(2) & !\inst2|draw1|line1|LessThan1~3_cout\)) # (!\inst2|decoder1|y\(2) & ((\inst2|decoder1|h\(2)) # (!\inst2|draw1|line1|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|y\(2),
	datab => \inst2|decoder1|h\(2),
	datad => VCC,
	cin => \inst2|draw1|line1|LessThan1~3_cout\,
	cout => \inst2|draw1|line1|LessThan1~5_cout\);

-- Location: LCCOMB_X23_Y17_N6
\inst2|draw1|line1|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan1~7_cout\ = CARRY((\inst2|decoder1|h\(3) & (\inst2|decoder1|y\(3) & !\inst2|draw1|line1|LessThan1~5_cout\)) # (!\inst2|decoder1|h\(3) & ((\inst2|decoder1|y\(3)) # (!\inst2|draw1|line1|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|h\(3),
	datab => \inst2|decoder1|y\(3),
	datad => VCC,
	cin => \inst2|draw1|line1|LessThan1~5_cout\,
	cout => \inst2|draw1|line1|LessThan1~7_cout\);

-- Location: LCCOMB_X23_Y17_N8
\inst2|draw1|line1|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan1~9_cout\ = CARRY((\inst2|decoder1|h\(4) & ((!\inst2|draw1|line1|LessThan1~7_cout\) # (!\inst2|decoder1|y\(4)))) # (!\inst2|decoder1|h\(4) & (!\inst2|decoder1|y\(4) & !\inst2|draw1|line1|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|h\(4),
	datab => \inst2|decoder1|y\(4),
	datad => VCC,
	cin => \inst2|draw1|line1|LessThan1~7_cout\,
	cout => \inst2|draw1|line1|LessThan1~9_cout\);

-- Location: LCCOMB_X23_Y17_N10
\inst2|draw1|line1|LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan1~11_cout\ = CARRY((\inst2|decoder1|h\(5) & (\inst2|decoder1|y\(5) & !\inst2|draw1|line1|LessThan1~9_cout\)) # (!\inst2|decoder1|h\(5) & ((\inst2|decoder1|y\(5)) # (!\inst2|draw1|line1|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|h\(5),
	datab => \inst2|decoder1|y\(5),
	datad => VCC,
	cin => \inst2|draw1|line1|LessThan1~9_cout\,
	cout => \inst2|draw1|line1|LessThan1~11_cout\);

-- Location: LCCOMB_X23_Y17_N12
\inst2|draw1|line1|LessThan1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan1~12_combout\ = (\inst2|decoder1|h\(6) & ((!\inst2|decoder1|y\(6)) # (!\inst2|draw1|line1|LessThan1~11_cout\))) # (!\inst2|decoder1|h\(6) & (!\inst2|draw1|line1|LessThan1~11_cout\ & !\inst2|decoder1|y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|h\(6),
	datad => \inst2|decoder1|y\(6),
	cin => \inst2|draw1|line1|LessThan1~11_cout\,
	combout => \inst2|draw1|line1|LessThan1~12_combout\);

-- Location: LCCOMB_X21_Y17_N10
\inst2|draw1|line1|Add10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add10~4_combout\ = (\inst2|draw1|line1|cy\(1) & ((\inst2|draw1|line1|LessThan1~12_combout\ & (!\inst2|draw1|line1|Add10~1\)) # (!\inst2|draw1|line1|LessThan1~12_combout\ & (\inst2|draw1|line1|Add10~1\ & VCC)))) # 
-- (!\inst2|draw1|line1|cy\(1) & ((\inst2|draw1|line1|LessThan1~12_combout\ & ((\inst2|draw1|line1|Add10~1\) # (GND))) # (!\inst2|draw1|line1|LessThan1~12_combout\ & (!\inst2|draw1|line1|Add10~1\))))
-- \inst2|draw1|line1|Add10~5\ = CARRY((\inst2|draw1|line1|cy\(1) & (\inst2|draw1|line1|LessThan1~12_combout\ & !\inst2|draw1|line1|Add10~1\)) # (!\inst2|draw1|line1|cy\(1) & ((\inst2|draw1|line1|LessThan1~12_combout\) # (!\inst2|draw1|line1|Add10~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|cy\(1),
	datab => \inst2|draw1|line1|LessThan1~12_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add10~1\,
	combout => \inst2|draw1|line1|Add10~4_combout\,
	cout => \inst2|draw1|line1|Add10~5\);

-- Location: LCCOMB_X21_Y17_N12
\inst2|draw1|line1|Add10~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add10~7_combout\ = ((\inst2|draw1|line1|LessThan1~12_combout\ $ (\inst2|draw1|line1|cy\(2) $ (\inst2|draw1|line1|Add10~5\)))) # (GND)
-- \inst2|draw1|line1|Add10~8\ = CARRY((\inst2|draw1|line1|LessThan1~12_combout\ & (\inst2|draw1|line1|cy\(2) & !\inst2|draw1|line1|Add10~5\)) # (!\inst2|draw1|line1|LessThan1~12_combout\ & ((\inst2|draw1|line1|cy\(2)) # (!\inst2|draw1|line1|Add10~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|LessThan1~12_combout\,
	datab => \inst2|draw1|line1|cy\(2),
	datad => VCC,
	cin => \inst2|draw1|line1|Add10~5\,
	combout => \inst2|draw1|line1|Add10~7_combout\,
	cout => \inst2|draw1|line1|Add10~8\);

-- Location: LCCOMB_X21_Y17_N2
\inst2|draw1|line1|Add10~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add10~9_combout\ = (!\inst2|draw1|line1|cx[3]~0_combout\ & ((\inst2|draw1|line1|setup~regout\ & (\inst2|decoder1|y\(2))) # (!\inst2|draw1|line1|setup~regout\ & ((\inst2|draw1|line1|Add10~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|setup~regout\,
	datab => \inst2|decoder1|y\(2),
	datac => \inst2|draw1|line1|cx[3]~0_combout\,
	datad => \inst2|draw1|line1|Add10~7_combout\,
	combout => \inst2|draw1|line1|Add10~9_combout\);

-- Location: LCFF_X21_Y17_N3
\inst2|draw1|line1|cy[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|line1|Add10~9_combout\,
	ena => \inst2|draw1|line1|Add10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|line1|cy\(2));

-- Location: LCCOMB_X21_Y17_N14
\inst2|draw1|line1|Add10~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add10~10_combout\ = (\inst2|draw1|line1|LessThan1~12_combout\ & ((\inst2|draw1|line1|cy\(3) & (!\inst2|draw1|line1|Add10~8\)) # (!\inst2|draw1|line1|cy\(3) & ((\inst2|draw1|line1|Add10~8\) # (GND))))) # 
-- (!\inst2|draw1|line1|LessThan1~12_combout\ & ((\inst2|draw1|line1|cy\(3) & (\inst2|draw1|line1|Add10~8\ & VCC)) # (!\inst2|draw1|line1|cy\(3) & (!\inst2|draw1|line1|Add10~8\))))
-- \inst2|draw1|line1|Add10~11\ = CARRY((\inst2|draw1|line1|LessThan1~12_combout\ & ((!\inst2|draw1|line1|Add10~8\) # (!\inst2|draw1|line1|cy\(3)))) # (!\inst2|draw1|line1|LessThan1~12_combout\ & (!\inst2|draw1|line1|cy\(3) & !\inst2|draw1|line1|Add10~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|LessThan1~12_combout\,
	datab => \inst2|draw1|line1|cy\(3),
	datad => VCC,
	cin => \inst2|draw1|line1|Add10~8\,
	combout => \inst2|draw1|line1|Add10~10_combout\,
	cout => \inst2|draw1|line1|Add10~11\);

-- Location: LCCOMB_X21_Y17_N26
\inst2|draw1|line1|Add10~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add10~12_combout\ = (!\inst2|draw1|line1|cx[3]~0_combout\ & ((\inst2|draw1|line1|setup~regout\ & ((\inst2|decoder1|y\(3)))) # (!\inst2|draw1|line1|setup~regout\ & (\inst2|draw1|line1|Add10~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|setup~regout\,
	datab => \inst2|draw1|line1|Add10~10_combout\,
	datac => \inst2|draw1|line1|cx[3]~0_combout\,
	datad => \inst2|decoder1|y\(3),
	combout => \inst2|draw1|line1|Add10~12_combout\);

-- Location: LCFF_X21_Y17_N27
\inst2|draw1|line1|cy[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|line1|Add10~12_combout\,
	ena => \inst2|draw1|line1|Add10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|line1|cy\(3));

-- Location: LCCOMB_X21_Y17_N16
\inst2|draw1|line1|Add10~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add10~13_combout\ = ((\inst2|draw1|line1|cy\(4) $ (\inst2|draw1|line1|LessThan1~12_combout\ $ (\inst2|draw1|line1|Add10~11\)))) # (GND)
-- \inst2|draw1|line1|Add10~14\ = CARRY((\inst2|draw1|line1|cy\(4) & ((!\inst2|draw1|line1|Add10~11\) # (!\inst2|draw1|line1|LessThan1~12_combout\))) # (!\inst2|draw1|line1|cy\(4) & (!\inst2|draw1|line1|LessThan1~12_combout\ & 
-- !\inst2|draw1|line1|Add10~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|cy\(4),
	datab => \inst2|draw1|line1|LessThan1~12_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add10~11\,
	combout => \inst2|draw1|line1|Add10~13_combout\,
	cout => \inst2|draw1|line1|Add10~14\);

-- Location: LCCOMB_X21_Y17_N18
\inst2|draw1|line1|Add10~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add10~16_combout\ = (\inst2|draw1|line1|LessThan1~12_combout\ & ((\inst2|draw1|line1|cy\(5) & (!\inst2|draw1|line1|Add10~14\)) # (!\inst2|draw1|line1|cy\(5) & ((\inst2|draw1|line1|Add10~14\) # (GND))))) # 
-- (!\inst2|draw1|line1|LessThan1~12_combout\ & ((\inst2|draw1|line1|cy\(5) & (\inst2|draw1|line1|Add10~14\ & VCC)) # (!\inst2|draw1|line1|cy\(5) & (!\inst2|draw1|line1|Add10~14\))))
-- \inst2|draw1|line1|Add10~17\ = CARRY((\inst2|draw1|line1|LessThan1~12_combout\ & ((!\inst2|draw1|line1|Add10~14\) # (!\inst2|draw1|line1|cy\(5)))) # (!\inst2|draw1|line1|LessThan1~12_combout\ & (!\inst2|draw1|line1|cy\(5) & 
-- !\inst2|draw1|line1|Add10~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|LessThan1~12_combout\,
	datab => \inst2|draw1|line1|cy\(5),
	datad => VCC,
	cin => \inst2|draw1|line1|Add10~14\,
	combout => \inst2|draw1|line1|Add10~16_combout\,
	cout => \inst2|draw1|line1|Add10~17\);

-- Location: LCCOMB_X21_Y17_N30
\inst2|draw1|line1|Add10~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add10~18_combout\ = (!\inst2|draw1|line1|cx[3]~0_combout\ & ((\inst2|draw1|line1|setup~regout\ & (\inst2|decoder1|y\(5))) # (!\inst2|draw1|line1|setup~regout\ & ((\inst2|draw1|line1|Add10~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|cx[3]~0_combout\,
	datab => \inst2|decoder1|y\(5),
	datac => \inst2|draw1|line1|setup~regout\,
	datad => \inst2|draw1|line1|Add10~16_combout\,
	combout => \inst2|draw1|line1|Add10~18_combout\);

-- Location: LCFF_X21_Y17_N31
\inst2|draw1|line1|cy[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|line1|Add10~18_combout\,
	ena => \inst2|draw1|line1|Add10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|line1|cy\(5));

-- Location: LCCOMB_X20_Y17_N0
\inst2|draw1|line1|Add10~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add10~15_combout\ = (!\inst2|draw1|line1|cx[3]~0_combout\ & ((\inst2|draw1|line1|setup~regout\ & (\inst2|decoder1|y\(4))) # (!\inst2|draw1|line1|setup~regout\ & ((\inst2|draw1|line1|Add10~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|setup~regout\,
	datab => \inst2|decoder1|y\(4),
	datac => \inst2|draw1|line1|Add10~13_combout\,
	datad => \inst2|draw1|line1|cx[3]~0_combout\,
	combout => \inst2|draw1|line1|Add10~15_combout\);

-- Location: LCFF_X21_Y17_N25
\inst2|draw1|line1|cy[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|draw1|line1|Add10~15_combout\,
	sload => VCC,
	ena => \inst2|draw1|line1|Add10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|line1|cy\(4));

-- Location: LCCOMB_X22_Y17_N14
\inst2|draw1|line1|draw_line_comb~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|draw_line_comb~7_combout\ = (\inst2|decoder1|h\(4) & (\inst2|draw1|line1|cy\(4) & (\inst2|decoder1|h\(5) $ (!\inst2|draw1|line1|cy\(5))))) # (!\inst2|decoder1|h\(4) & (!\inst2|draw1|line1|cy\(4) & (\inst2|decoder1|h\(5) $ 
-- (!\inst2|draw1|line1|cy\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|h\(4),
	datab => \inst2|decoder1|h\(5),
	datac => \inst2|draw1|line1|cy\(5),
	datad => \inst2|draw1|line1|cy\(4),
	combout => \inst2|draw1|line1|draw_line_comb~7_combout\);

-- Location: LCCOMB_X21_Y17_N20
\inst2|draw1|line1|Add10~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add10~19_combout\ = \inst2|draw1|line1|cy\(6) $ (\inst2|draw1|line1|LessThan1~12_combout\ $ (\inst2|draw1|line1|Add10~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|cy\(6),
	datab => \inst2|draw1|line1|LessThan1~12_combout\,
	cin => \inst2|draw1|line1|Add10~17\,
	combout => \inst2|draw1|line1|Add10~19_combout\);

-- Location: LCCOMB_X20_Y17_N30
\inst2|draw1|line1|Add10~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add10~21_combout\ = (!\inst2|draw1|line1|cx[3]~0_combout\ & ((\inst2|draw1|line1|setup~regout\ & (\inst2|decoder1|y\(6))) # (!\inst2|draw1|line1|setup~regout\ & ((\inst2|draw1|line1|Add10~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|setup~regout\,
	datab => \inst2|draw1|line1|cx[3]~0_combout\,
	datac => \inst2|decoder1|y\(6),
	datad => \inst2|draw1|line1|Add10~19_combout\,
	combout => \inst2|draw1|line1|Add10~21_combout\);

-- Location: LCFF_X21_Y17_N29
\inst2|draw1|line1|cy[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|draw1|line1|Add10~21_combout\,
	sload => VCC,
	ena => \inst2|draw1|line1|Add10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|line1|cy\(6));

-- Location: LCCOMB_X22_Y17_N4
\inst2|draw1|line1|draw_line_comb~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|draw_line_comb~8_combout\ = (\inst2|draw1|line1|draw_line_comb~7_combout\ & (\inst2|decoder1|h\(6) $ (!\inst2|draw1|line1|cy\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|h\(6),
	datac => \inst2|draw1|line1|draw_line_comb~7_combout\,
	datad => \inst2|draw1|line1|cy\(6),
	combout => \inst2|draw1|line1|draw_line_comb~8_combout\);

-- Location: LCCOMB_X25_Y17_N20
\inst2|draw1|line1|cx[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|cx[3]~1_combout\ = ((!\inst2|draw1|line1|setup~regout\ & ((\inst2|draw1|line1|draw_line_comb~9_combout\) # (!\inst2|draw1|line1|LessThan3~5_combout\)))) # (!\inst2|ramcontroller1|draw_can_access~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ramcontroller1|draw_can_access~0_combout\,
	datab => \inst2|draw1|line1|draw_line_comb~9_combout\,
	datac => \inst2|draw1|line1|setup~regout\,
	datad => \inst2|draw1|line1|LessThan3~5_combout\,
	combout => \inst2|draw1|line1|cx[3]~1_combout\);

-- Location: LCCOMB_X25_Y16_N28
\inst2|draw1|line1|Add8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add8~3_combout\ = (!\inst2|draw1|line1|cx[3]~0_combout\ & ((\inst2|draw1|line1|cx[3]~1_combout\ & ((\inst2|draw1|line1|cx\(0)))) # (!\inst2|draw1|line1|cx[3]~1_combout\ & (\inst2|draw1|line1|Add8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add8~2_combout\,
	datab => \inst2|draw1|line1|cx[3]~0_combout\,
	datac => \inst2|draw1|line1|cx\(0),
	datad => \inst2|draw1|line1|cx[3]~1_combout\,
	combout => \inst2|draw1|line1|Add8~3_combout\);

-- Location: LCFF_X25_Y16_N29
\inst2|draw1|line1|cx[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|line1|Add8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|line1|cx\(0));

-- Location: LCFF_X23_Y19_N7
\inst2|decoder1|w[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|spi1|spi_rx_data\(7),
	sclr => \inst2|sreset~0_combout\,
	sload => VCC,
	ena => \inst2|decoder1|w[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|w\(7));

-- Location: LCCOMB_X22_Y19_N14
\inst2|decoder1|x[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|x[6]~feeder_combout\ = \inst2|decoder1|x~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|decoder1|x~9_combout\,
	combout => \inst2|decoder1|x[6]~feeder_combout\);

-- Location: LCFF_X22_Y19_N15
\inst2|decoder1|x[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|x[6]~feeder_combout\,
	sclr => \ALT_INV_reset~combout\,
	ena => \inst2|decoder1|x~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|x\(6));

-- Location: LCFF_X23_Y19_N23
\inst2|decoder1|w[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|spi1|spi_rx_data\(4),
	sclr => \inst2|sreset~0_combout\,
	sload => VCC,
	ena => \inst2|decoder1|w[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|w\(4));

-- Location: LCFF_X23_Y19_N21
\inst2|decoder1|w[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|spi1|spi_rx_data\(3),
	sclr => \inst2|sreset~0_combout\,
	sload => VCC,
	ena => \inst2|decoder1|w[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|w\(3));

-- Location: LCCOMB_X26_Y19_N14
\inst2|draw1|line1|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan0~1_cout\ = CARRY((!\inst2|decoder1|x\(0) & \inst2|decoder1|w\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|x\(0),
	datab => \inst2|decoder1|w\(0),
	datad => VCC,
	cout => \inst2|draw1|line1|LessThan0~1_cout\);

-- Location: LCCOMB_X26_Y19_N16
\inst2|draw1|line1|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan0~3_cout\ = CARRY((\inst2|decoder1|w\(1) & (\inst2|decoder1|x\(1) & !\inst2|draw1|line1|LessThan0~1_cout\)) # (!\inst2|decoder1|w\(1) & ((\inst2|decoder1|x\(1)) # (!\inst2|draw1|line1|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|w\(1),
	datab => \inst2|decoder1|x\(1),
	datad => VCC,
	cin => \inst2|draw1|line1|LessThan0~1_cout\,
	cout => \inst2|draw1|line1|LessThan0~3_cout\);

-- Location: LCCOMB_X26_Y19_N18
\inst2|draw1|line1|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan0~5_cout\ = CARRY((\inst2|decoder1|x\(2) & (\inst2|decoder1|w\(2) & !\inst2|draw1|line1|LessThan0~3_cout\)) # (!\inst2|decoder1|x\(2) & ((\inst2|decoder1|w\(2)) # (!\inst2|draw1|line1|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|x\(2),
	datab => \inst2|decoder1|w\(2),
	datad => VCC,
	cin => \inst2|draw1|line1|LessThan0~3_cout\,
	cout => \inst2|draw1|line1|LessThan0~5_cout\);

-- Location: LCCOMB_X26_Y19_N20
\inst2|draw1|line1|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan0~7_cout\ = CARRY((\inst2|decoder1|x\(3) & ((!\inst2|draw1|line1|LessThan0~5_cout\) # (!\inst2|decoder1|w\(3)))) # (!\inst2|decoder1|x\(3) & (!\inst2|decoder1|w\(3) & !\inst2|draw1|line1|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|x\(3),
	datab => \inst2|decoder1|w\(3),
	datad => VCC,
	cin => \inst2|draw1|line1|LessThan0~5_cout\,
	cout => \inst2|draw1|line1|LessThan0~7_cout\);

-- Location: LCCOMB_X26_Y19_N22
\inst2|draw1|line1|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan0~9_cout\ = CARRY((\inst2|decoder1|x\(4) & (\inst2|decoder1|w\(4) & !\inst2|draw1|line1|LessThan0~7_cout\)) # (!\inst2|decoder1|x\(4) & ((\inst2|decoder1|w\(4)) # (!\inst2|draw1|line1|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|x\(4),
	datab => \inst2|decoder1|w\(4),
	datad => VCC,
	cin => \inst2|draw1|line1|LessThan0~7_cout\,
	cout => \inst2|draw1|line1|LessThan0~9_cout\);

-- Location: LCCOMB_X26_Y19_N24
\inst2|draw1|line1|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan0~11_cout\ = CARRY((\inst2|decoder1|x\(5) & ((!\inst2|draw1|line1|LessThan0~9_cout\) # (!\inst2|decoder1|w\(5)))) # (!\inst2|decoder1|x\(5) & (!\inst2|decoder1|w\(5) & !\inst2|draw1|line1|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|x\(5),
	datab => \inst2|decoder1|w\(5),
	datad => VCC,
	cin => \inst2|draw1|line1|LessThan0~9_cout\,
	cout => \inst2|draw1|line1|LessThan0~11_cout\);

-- Location: LCCOMB_X26_Y19_N26
\inst2|draw1|line1|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan0~13_cout\ = CARRY((\inst2|decoder1|w\(6) & ((!\inst2|draw1|line1|LessThan0~11_cout\) # (!\inst2|decoder1|x\(6)))) # (!\inst2|decoder1|w\(6) & (!\inst2|decoder1|x\(6) & !\inst2|draw1|line1|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|w\(6),
	datab => \inst2|decoder1|x\(6),
	datad => VCC,
	cin => \inst2|draw1|line1|LessThan0~11_cout\,
	cout => \inst2|draw1|line1|LessThan0~13_cout\);

-- Location: LCCOMB_X26_Y19_N28
\inst2|draw1|line1|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|LessThan0~14_combout\ = (\inst2|decoder1|x\(7) & (\inst2|draw1|line1|LessThan0~13_cout\ & \inst2|decoder1|w\(7))) # (!\inst2|decoder1|x\(7) & ((\inst2|draw1|line1|LessThan0~13_cout\) # (\inst2|decoder1|w\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|x\(7),
	datad => \inst2|decoder1|w\(7),
	cin => \inst2|draw1|line1|LessThan0~13_cout\,
	combout => \inst2|draw1|line1|LessThan0~14_combout\);

-- Location: LCCOMB_X25_Y16_N4
\inst2|draw1|line1|Add8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add8~4_combout\ = (\inst2|draw1|line1|cx\(1) & ((\inst2|draw1|line1|LessThan0~14_combout\ & (!\inst2|draw1|line1|Add8~1\)) # (!\inst2|draw1|line1|LessThan0~14_combout\ & (\inst2|draw1|line1|Add8~1\ & VCC)))) # 
-- (!\inst2|draw1|line1|cx\(1) & ((\inst2|draw1|line1|LessThan0~14_combout\ & ((\inst2|draw1|line1|Add8~1\) # (GND))) # (!\inst2|draw1|line1|LessThan0~14_combout\ & (!\inst2|draw1|line1|Add8~1\))))
-- \inst2|draw1|line1|Add8~5\ = CARRY((\inst2|draw1|line1|cx\(1) & (\inst2|draw1|line1|LessThan0~14_combout\ & !\inst2|draw1|line1|Add8~1\)) # (!\inst2|draw1|line1|cx\(1) & ((\inst2|draw1|line1|LessThan0~14_combout\) # (!\inst2|draw1|line1|Add8~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|cx\(1),
	datab => \inst2|draw1|line1|LessThan0~14_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add8~1\,
	combout => \inst2|draw1|line1|Add8~4_combout\,
	cout => \inst2|draw1|line1|Add8~5\);

-- Location: LCCOMB_X26_Y19_N8
\inst2|draw1|line1|Add8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add8~6_combout\ = (\inst2|draw1|line1|setup~regout\ & (\inst2|decoder1|x\(1))) # (!\inst2|draw1|line1|setup~regout\ & ((\inst2|draw1|line1|Add8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|setup~regout\,
	datac => \inst2|decoder1|x\(1),
	datad => \inst2|draw1|line1|Add8~4_combout\,
	combout => \inst2|draw1|line1|Add8~6_combout\);

-- Location: LCCOMB_X25_Y19_N20
\inst2|draw1|line1|Add8~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add8~7_combout\ = (!\inst2|draw1|line1|cx[3]~0_combout\ & ((\inst2|draw1|line1|cx[3]~1_combout\ & ((\inst2|draw1|line1|cx\(1)))) # (!\inst2|draw1|line1|cx[3]~1_combout\ & (\inst2|draw1|line1|Add8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|cx[3]~0_combout\,
	datab => \inst2|draw1|line1|Add8~6_combout\,
	datac => \inst2|draw1|line1|cx\(1),
	datad => \inst2|draw1|line1|cx[3]~1_combout\,
	combout => \inst2|draw1|line1|Add8~7_combout\);

-- Location: LCFF_X25_Y19_N21
\inst2|draw1|line1|cx[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|line1|Add8~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|line1|cx\(1));

-- Location: LCCOMB_X25_Y16_N26
\inst2|draw1|line1|draw_line_comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|draw_line_comb~0_combout\ = (\inst2|decoder1|w\(1) & (\inst2|draw1|line1|cx\(1) & (\inst2|draw1|line1|cx\(0) $ (!\inst2|decoder1|w\(0))))) # (!\inst2|decoder1|w\(1) & (!\inst2|draw1|line1|cx\(1) & (\inst2|draw1|line1|cx\(0) $ 
-- (!\inst2|decoder1|w\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|w\(1),
	datab => \inst2|draw1|line1|cx\(0),
	datac => \inst2|decoder1|w\(0),
	datad => \inst2|draw1|line1|cx\(1),
	combout => \inst2|draw1|line1|draw_line_comb~0_combout\);

-- Location: LCCOMB_X25_Y16_N8
\inst2|draw1|line1|Add8~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add8~12_combout\ = (\inst2|draw1|line1|cx\(3) & ((\inst2|draw1|line1|LessThan0~14_combout\ & (!\inst2|draw1|line1|Add8~9\)) # (!\inst2|draw1|line1|LessThan0~14_combout\ & (\inst2|draw1|line1|Add8~9\ & VCC)))) # 
-- (!\inst2|draw1|line1|cx\(3) & ((\inst2|draw1|line1|LessThan0~14_combout\ & ((\inst2|draw1|line1|Add8~9\) # (GND))) # (!\inst2|draw1|line1|LessThan0~14_combout\ & (!\inst2|draw1|line1|Add8~9\))))
-- \inst2|draw1|line1|Add8~13\ = CARRY((\inst2|draw1|line1|cx\(3) & (\inst2|draw1|line1|LessThan0~14_combout\ & !\inst2|draw1|line1|Add8~9\)) # (!\inst2|draw1|line1|cx\(3) & ((\inst2|draw1|line1|LessThan0~14_combout\) # (!\inst2|draw1|line1|Add8~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|cx\(3),
	datab => \inst2|draw1|line1|LessThan0~14_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add8~9\,
	combout => \inst2|draw1|line1|Add8~12_combout\,
	cout => \inst2|draw1|line1|Add8~13\);

-- Location: LCCOMB_X25_Y16_N10
\inst2|draw1|line1|Add8~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add8~16_combout\ = ((\inst2|draw1|line1|cx\(4) $ (\inst2|draw1|line1|LessThan0~14_combout\ $ (\inst2|draw1|line1|Add8~13\)))) # (GND)
-- \inst2|draw1|line1|Add8~17\ = CARRY((\inst2|draw1|line1|cx\(4) & ((!\inst2|draw1|line1|Add8~13\) # (!\inst2|draw1|line1|LessThan0~14_combout\))) # (!\inst2|draw1|line1|cx\(4) & (!\inst2|draw1|line1|LessThan0~14_combout\ & !\inst2|draw1|line1|Add8~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|cx\(4),
	datab => \inst2|draw1|line1|LessThan0~14_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add8~13\,
	combout => \inst2|draw1|line1|Add8~16_combout\,
	cout => \inst2|draw1|line1|Add8~17\);

-- Location: LCCOMB_X24_Y16_N14
\inst2|draw1|line1|Add8~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add8~18_combout\ = (\inst2|draw1|line1|setup~regout\ & ((\inst2|decoder1|x\(4)))) # (!\inst2|draw1|line1|setup~regout\ & (\inst2|draw1|line1|Add8~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|setup~regout\,
	datac => \inst2|draw1|line1|Add8~16_combout\,
	datad => \inst2|decoder1|x\(4),
	combout => \inst2|draw1|line1|Add8~18_combout\);

-- Location: LCCOMB_X24_Y16_N0
\inst2|draw1|line1|Add8~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add8~19_combout\ = (!\inst2|draw1|line1|cx[3]~0_combout\ & ((\inst2|draw1|line1|cx[3]~1_combout\ & ((\inst2|draw1|line1|cx\(4)))) # (!\inst2|draw1|line1|cx[3]~1_combout\ & (\inst2|draw1|line1|Add8~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|cx[3]~0_combout\,
	datab => \inst2|draw1|line1|Add8~18_combout\,
	datac => \inst2|draw1|line1|cx\(4),
	datad => \inst2|draw1|line1|cx[3]~1_combout\,
	combout => \inst2|draw1|line1|Add8~19_combout\);

-- Location: LCFF_X24_Y16_N1
\inst2|draw1|line1|cx[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|line1|Add8~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|line1|cx\(4));

-- Location: LCCOMB_X25_Y16_N22
\inst2|draw1|line1|Add8~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add8~23_combout\ = (!\inst2|draw1|line1|cx[3]~0_combout\ & ((\inst2|draw1|line1|cx[3]~1_combout\ & ((\inst2|draw1|line1|cx\(5)))) # (!\inst2|draw1|line1|cx[3]~1_combout\ & (\inst2|draw1|line1|Add8~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add8~22_combout\,
	datab => \inst2|draw1|line1|cx[3]~0_combout\,
	datac => \inst2|draw1|line1|cx\(5),
	datad => \inst2|draw1|line1|cx[3]~1_combout\,
	combout => \inst2|draw1|line1|Add8~23_combout\);

-- Location: LCFF_X25_Y16_N23
\inst2|draw1|line1|cx[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|line1|Add8~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|line1|cx\(5));

-- Location: LCCOMB_X24_Y16_N30
\inst2|draw1|line1|draw_line_comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|draw_line_comb~2_combout\ = (\inst2|decoder1|w\(4) & (\inst2|draw1|line1|cx\(4) & (\inst2|decoder1|w\(5) $ (!\inst2|draw1|line1|cx\(5))))) # (!\inst2|decoder1|w\(4) & (!\inst2|draw1|line1|cx\(4) & (\inst2|decoder1|w\(5) $ 
-- (!\inst2|draw1|line1|cx\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|w\(4),
	datab => \inst2|draw1|line1|cx\(4),
	datac => \inst2|decoder1|w\(5),
	datad => \inst2|draw1|line1|cx\(5),
	combout => \inst2|draw1|line1|draw_line_comb~2_combout\);

-- Location: LCCOMB_X25_Y16_N14
\inst2|draw1|line1|Add8~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add8~24_combout\ = ((\inst2|draw1|line1|cx\(6) $ (\inst2|draw1|line1|LessThan0~14_combout\ $ (\inst2|draw1|line1|Add8~21\)))) # (GND)
-- \inst2|draw1|line1|Add8~25\ = CARRY((\inst2|draw1|line1|cx\(6) & ((!\inst2|draw1|line1|Add8~21\) # (!\inst2|draw1|line1|LessThan0~14_combout\))) # (!\inst2|draw1|line1|cx\(6) & (!\inst2|draw1|line1|LessThan0~14_combout\ & !\inst2|draw1|line1|Add8~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|cx\(6),
	datab => \inst2|draw1|line1|LessThan0~14_combout\,
	datad => VCC,
	cin => \inst2|draw1|line1|Add8~21\,
	combout => \inst2|draw1|line1|Add8~24_combout\,
	cout => \inst2|draw1|line1|Add8~25\);

-- Location: LCCOMB_X25_Y19_N0
\inst2|draw1|line1|Add8~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add8~26_combout\ = (\inst2|draw1|line1|setup~regout\ & (\inst2|decoder1|x\(6))) # (!\inst2|draw1|line1|setup~regout\ & ((\inst2|draw1|line1|Add8~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|x\(6),
	datab => \inst2|draw1|line1|setup~regout\,
	datad => \inst2|draw1|line1|Add8~24_combout\,
	combout => \inst2|draw1|line1|Add8~26_combout\);

-- Location: LCCOMB_X25_Y19_N2
\inst2|draw1|line1|Add8~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add8~27_combout\ = (!\inst2|draw1|line1|cx[3]~0_combout\ & ((\inst2|draw1|line1|cx[3]~1_combout\ & ((\inst2|draw1|line1|cx\(6)))) # (!\inst2|draw1|line1|cx[3]~1_combout\ & (\inst2|draw1|line1|Add8~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|cx[3]~0_combout\,
	datab => \inst2|draw1|line1|Add8~26_combout\,
	datac => \inst2|draw1|line1|cx\(6),
	datad => \inst2|draw1|line1|cx[3]~1_combout\,
	combout => \inst2|draw1|line1|Add8~27_combout\);

-- Location: LCFF_X25_Y19_N3
\inst2|draw1|line1|cx[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|line1|Add8~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|line1|cx\(6));

-- Location: LCCOMB_X25_Y19_N18
\inst2|draw1|line1|draw_line_comb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|draw_line_comb~3_combout\ = (\inst2|draw1|line1|cx\(7) & (\inst2|decoder1|w\(7) & (\inst2|decoder1|w\(6) $ (!\inst2|draw1|line1|cx\(6))))) # (!\inst2|draw1|line1|cx\(7) & (!\inst2|decoder1|w\(7) & (\inst2|decoder1|w\(6) $ 
-- (!\inst2|draw1|line1|cx\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|cx\(7),
	datab => \inst2|decoder1|w\(7),
	datac => \inst2|decoder1|w\(6),
	datad => \inst2|draw1|line1|cx\(6),
	combout => \inst2|draw1|line1|draw_line_comb~3_combout\);

-- Location: LCCOMB_X25_Y16_N0
\inst2|draw1|line1|draw_line_comb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|draw_line_comb~4_combout\ = (\inst2|draw1|line1|draw_line_comb~1_combout\ & (\inst2|draw1|line1|draw_line_comb~0_combout\ & (\inst2|draw1|line1|draw_line_comb~2_combout\ & \inst2|draw1|line1|draw_line_comb~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|draw_line_comb~1_combout\,
	datab => \inst2|draw1|line1|draw_line_comb~0_combout\,
	datac => \inst2|draw1|line1|draw_line_comb~2_combout\,
	datad => \inst2|draw1|line1|draw_line_comb~3_combout\,
	combout => \inst2|draw1|line1|draw_line_comb~4_combout\);

-- Location: LCCOMB_X22_Y17_N10
\inst2|draw1|line1|draw_line_comb~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|draw_line_comb~9_combout\ = (\inst2|draw1|line1|draw_line_comb~6_combout\ & (\inst2|draw1|line1|draw_line_comb~5_combout\ & (\inst2|draw1|line1|draw_line_comb~8_combout\ & \inst2|draw1|line1|draw_line_comb~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|draw_line_comb~6_combout\,
	datab => \inst2|draw1|line1|draw_line_comb~5_combout\,
	datac => \inst2|draw1|line1|draw_line_comb~8_combout\,
	datad => \inst2|draw1|line1|draw_line_comb~4_combout\,
	combout => \inst2|draw1|line1|draw_line_comb~9_combout\);

-- Location: LCCOMB_X20_Y17_N24
\inst2|draw1|line1|done~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|done~0_combout\ = (!\inst2|draw1|line1|setup~regout\ & (\inst2|decoder1|en\(3) & (\inst2|draw1|line1|draw_line_comb~9_combout\ & \inst2|ramcontroller1|draw_can_access~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|setup~regout\,
	datab => \inst2|decoder1|en\(3),
	datac => \inst2|draw1|line1|draw_line_comb~9_combout\,
	datad => \inst2|ramcontroller1|draw_can_access~0_combout\,
	combout => \inst2|draw1|line1|done~0_combout\);

-- Location: LCCOMB_X20_Y17_N4
\inst2|draw1|draw_ready~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|draw_ready~1_combout\ = (!\inst2|draw1|pixel1|done~0_combout\ & (!\inst2|draw1|line1|done~0_combout\ & ((\inst2|draw1|draw_ready~0_combout\) # (!\inst2|draw1|rect1|draw_write~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|pixel1|done~0_combout\,
	datab => \inst2|draw1|draw_ready~0_combout\,
	datac => \inst2|draw1|line1|done~0_combout\,
	datad => \inst2|draw1|rect1|draw_write~1_combout\,
	combout => \inst2|draw1|draw_ready~1_combout\);

-- Location: LCCOMB_X19_Y20_N16
\inst2|decoder1|packet_num[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|packet_num[0]~2_combout\ = (!\inst2|decoder1|spi_reset~0_combout\ & (!\inst2|decoder1|decode_comb~0_combout\ & (\reset~combout\ & \inst2|draw1|draw_ready~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|spi_reset~0_combout\,
	datab => \inst2|decoder1|decode_comb~0_combout\,
	datac => \reset~combout\,
	datad => \inst2|draw1|draw_ready~1_combout\,
	combout => \inst2|decoder1|packet_num[0]~2_combout\);

-- Location: LCCOMB_X20_Y19_N28
\inst2|decoder1|packet_num[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|packet_num[2]~3_combout\ = (\inst2|decoder1|packet_num[0]~2_combout\ & (((\inst2|decoder1|packet_num\(2))))) # (!\inst2|decoder1|packet_num[0]~2_combout\ & (\inst2|decoder1|current_instruction~2_combout\ & (\inst2|decoder1|Add0~0_combout\ 
-- $ (\inst2|decoder1|packet_num\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|Add0~0_combout\,
	datab => \inst2|decoder1|packet_num[0]~2_combout\,
	datac => \inst2|decoder1|packet_num\(2),
	datad => \inst2|decoder1|current_instruction~2_combout\,
	combout => \inst2|decoder1|packet_num[2]~3_combout\);

-- Location: LCFF_X20_Y19_N29
\inst2|decoder1|packet_num[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|packet_num[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|packet_num\(2));

-- Location: LCCOMB_X20_Y19_N16
\inst4|Equal63~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Equal63~1_combout\ = (!\inst2|decoder1|packet_num\(2) & \inst2|decoder1|packet_num\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|packet_num\(2),
	datad => \inst2|decoder1|packet_num\(1),
	combout => \inst4|Equal63~1_combout\);

-- Location: LCCOMB_X20_Y19_N4
\inst2|decoder1|done~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|done~7_combout\ = (\inst2|decoder1|current_instruction\(2) & (!\inst4|Equal63~1_combout\ & ((!\inst2|decoder1|current_instruction\(0)) # (!\inst2|decoder1|current_instruction\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|current_instruction\(2),
	datab => \inst2|decoder1|current_instruction\(1),
	datac => \inst4|Equal63~1_combout\,
	datad => \inst2|decoder1|current_instruction\(0),
	combout => \inst2|decoder1|done~7_combout\);

-- Location: LCCOMB_X20_Y19_N0
\inst2|decoder1|done~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|done~4_combout\ = (\inst2|decoder1|done~7_combout\ & ((\inst2|decoder1|packet_num\(1)) # (\inst2|decoder1|packet_num\(0) $ (!\inst2|decoder1|packet_num\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|packet_num\(0),
	datab => \inst2|decoder1|packet_num\(2),
	datac => \inst2|decoder1|done~7_combout\,
	datad => \inst2|decoder1|packet_num\(1),
	combout => \inst2|decoder1|done~4_combout\);

-- Location: LCCOMB_X20_Y20_N10
\inst2|decoder1|done~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|done~5_combout\ = (\inst2|vgacontroller1|vgavsync~2_combout\ & (!\inst4|hex1[3]~7_combout\ & ((\inst2|decoder1|done~4_combout\) # (!\inst2|decoder1|current_instruction\(2))))) # (!\inst2|vgacontroller1|vgavsync~2_combout\ & 
-- ((\inst2|decoder1|done~4_combout\) # ((!\inst2|decoder1|current_instruction\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|vgavsync~2_combout\,
	datab => \inst2|decoder1|done~4_combout\,
	datac => \inst4|hex1[3]~7_combout\,
	datad => \inst2|decoder1|current_instruction\(2),
	combout => \inst2|decoder1|done~5_combout\);

-- Location: LCCOMB_X19_Y20_N4
\inst2|decoder1|current_instruction[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|current_instruction[2]~4_combout\ = (\inst2|decoder1|current_instruction[2]~0_combout\ & (\inst2|decoder1|decode_comb~0_combout\ & ((!\inst2|decoder1|done~5_combout\) # (!\inst2|decoder1|done~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|current_instruction[2]~0_combout\,
	datab => \inst2|decoder1|done~6_combout\,
	datac => \inst2|decoder1|done~5_combout\,
	datad => \inst2|decoder1|decode_comb~0_combout\,
	combout => \inst2|decoder1|current_instruction[2]~4_combout\);

-- Location: LCCOMB_X19_Y20_N18
\inst2|decoder1|current_instruction[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|current_instruction[2]~5_combout\ = ((!\inst2|decoder1|current_instruction[2]~4_combout\ & ((\inst2|decoder1|decode_comb~0_combout\) # (!\inst2|decoder1|en~3_combout\)))) # (!\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \inst2|decoder1|decode_comb~0_combout\,
	datac => \inst2|decoder1|current_instruction[2]~4_combout\,
	datad => \inst2|decoder1|en~3_combout\,
	combout => \inst2|decoder1|current_instruction[2]~5_combout\);

-- Location: LCFF_X23_Y20_N1
\inst2|decoder1|current_instruction[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|current_instruction~6_combout\,
	ena => \inst2|decoder1|current_instruction[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|current_instruction\(1));

-- Location: LCCOMB_X20_Y19_N26
\inst2|decoder1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|Equal0~1_combout\ = (!\inst2|decoder1|current_instruction\(2) & (\inst2|decoder1|current_instruction\(1) & \inst2|decoder1|current_instruction\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|current_instruction\(2),
	datab => \inst2|decoder1|current_instruction\(1),
	datad => \inst2|decoder1|current_instruction\(0),
	combout => \inst2|decoder1|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y19_N30
\inst2|decoder1|done~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|done~6_combout\ = (\inst2|decoder1|packet_num\(2)) # ((\inst2|decoder1|packet_num\(0) $ (!\inst2|decoder1|packet_num\(1))) # (!\inst2|decoder1|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|packet_num\(2),
	datab => \inst2|decoder1|Equal0~1_combout\,
	datac => \inst2|decoder1|packet_num\(0),
	datad => \inst2|decoder1|packet_num\(1),
	combout => \inst2|decoder1|done~6_combout\);

-- Location: LCCOMB_X19_Y20_N2
\inst2|decoder1|current_instruction~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|current_instruction~1_combout\ = (\inst2|decoder1|decode_comb~0_combout\ & (((!\inst2|decoder1|done~5_combout\) # (!\inst2|decoder1|done~6_combout\)) # (!\inst2|decoder1|current_instruction[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|current_instruction[2]~0_combout\,
	datab => \inst2|decoder1|done~6_combout\,
	datac => \inst2|decoder1|done~5_combout\,
	datad => \inst2|decoder1|decode_comb~0_combout\,
	combout => \inst2|decoder1|current_instruction~1_combout\);

-- Location: LCCOMB_X23_Y20_N26
\inst2|decoder1|current_instruction~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|current_instruction~7_combout\ = (!\inst2|spi1|spi_rx_data\(0) & (\reset~combout\ & \inst2|decoder1|current_instruction~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|spi1|spi_rx_data\(0),
	datab => \reset~combout\,
	datad => \inst2|decoder1|current_instruction~1_combout\,
	combout => \inst2|decoder1|current_instruction~7_combout\);

-- Location: LCFF_X23_Y20_N27
\inst2|decoder1|current_instruction[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|current_instruction~7_combout\,
	ena => \inst2|decoder1|current_instruction[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|current_instruction\(0));

-- Location: LCCOMB_X19_Y20_N6
\inst4|hex1[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|hex1[3]~7_combout\ = (!\inst2|decoder1|current_instruction\(1) & (\inst2|decoder1|current_instruction\(0) & !\inst2|decoder1|current_instruction\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|current_instruction\(1),
	datac => \inst2|decoder1|current_instruction\(0),
	datad => \inst2|decoder1|current_instruction\(2),
	combout => \inst4|hex1[3]~7_combout\);

-- Location: LCCOMB_X20_Y20_N30
\inst2|decoder1|decode_comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|decode_comb~0_combout\ = (\inst4|hex1[3]~7_combout\) # (((\inst2|spi1|spi_data_available~regout\ & !\inst2|decoder1|prev_spi_data_available~regout\)) # (!\inst4|hex1[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|spi1|spi_data_available~regout\,
	datab => \inst2|decoder1|prev_spi_data_available~regout\,
	datac => \inst4|hex1[3]~7_combout\,
	datad => \inst4|hex1[2]~4_combout\,
	combout => \inst2|decoder1|decode_comb~0_combout\);

-- Location: LCCOMB_X5_Y20_N0
\inst2|decoder1|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|Add1~0_combout\ = \inst2|decoder1|timeout_count\(0) $ (VCC)
-- \inst2|decoder1|Add1~1\ = CARRY(\inst2|decoder1|timeout_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|timeout_count\(0),
	datad => VCC,
	combout => \inst2|decoder1|Add1~0_combout\,
	cout => \inst2|decoder1|Add1~1\);

-- Location: LCCOMB_X5_Y20_N4
\inst2|decoder1|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|Add1~4_combout\ = (\inst2|decoder1|timeout_count\(2) & (\inst2|decoder1|Add1~3\ $ (GND))) # (!\inst2|decoder1|timeout_count\(2) & (!\inst2|decoder1|Add1~3\ & VCC))
-- \inst2|decoder1|Add1~5\ = CARRY((\inst2|decoder1|timeout_count\(2) & !\inst2|decoder1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|timeout_count\(2),
	datad => VCC,
	cin => \inst2|decoder1|Add1~3\,
	combout => \inst2|decoder1|Add1~4_combout\,
	cout => \inst2|decoder1|Add1~5\);

-- Location: LCCOMB_X5_Y20_N6
\inst2|decoder1|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|Add1~6_combout\ = (\inst2|decoder1|timeout_count\(3) & (!\inst2|decoder1|Add1~5\)) # (!\inst2|decoder1|timeout_count\(3) & ((\inst2|decoder1|Add1~5\) # (GND)))
-- \inst2|decoder1|Add1~7\ = CARRY((!\inst2|decoder1|Add1~5\) # (!\inst2|decoder1|timeout_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|timeout_count\(3),
	datad => VCC,
	cin => \inst2|decoder1|Add1~5\,
	combout => \inst2|decoder1|Add1~6_combout\,
	cout => \inst2|decoder1|Add1~7\);

-- Location: LCCOMB_X5_Y20_N8
\inst2|decoder1|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|Add1~8_combout\ = (\inst2|decoder1|timeout_count\(4) & (\inst2|decoder1|Add1~7\ $ (GND))) # (!\inst2|decoder1|timeout_count\(4) & (!\inst2|decoder1|Add1~7\ & VCC))
-- \inst2|decoder1|Add1~9\ = CARRY((\inst2|decoder1|timeout_count\(4) & !\inst2|decoder1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|timeout_count\(4),
	datad => VCC,
	cin => \inst2|decoder1|Add1~7\,
	combout => \inst2|decoder1|Add1~8_combout\,
	cout => \inst2|decoder1|Add1~9\);

-- Location: LCCOMB_X23_Y20_N2
\inst4|hex0[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|hex0[0]~6_combout\ = (!\inst2|decoder1|packet_num\(0) & (!\inst2|decoder1|packet_num\(2) & !\inst2|decoder1|packet_num\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|packet_num\(0),
	datac => \inst2|decoder1|packet_num\(2),
	datad => \inst2|decoder1|packet_num\(1),
	combout => \inst4|hex0[0]~6_combout\);

-- Location: LCCOMB_X19_Y20_N30
\inst2|decoder1|timeout_count[13]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|timeout_count[13]~2_combout\ = ((\inst2|decoder1|decode_comb~0_combout\) # ((!\inst2|draw1|draw_ready~1_combout\) # (!\inst4|hex0[0]~6_combout\))) # (!\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \inst2|decoder1|decode_comb~0_combout\,
	datac => \inst4|hex0[0]~6_combout\,
	datad => \inst2|draw1|draw_ready~1_combout\,
	combout => \inst2|decoder1|timeout_count[13]~2_combout\);

-- Location: LCFF_X5_Y20_N9
\inst2|decoder1|timeout_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|Add1~8_combout\,
	sclr => \inst2|decoder1|timeout_count[13]~1_combout\,
	ena => \inst2|decoder1|timeout_count[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|timeout_count\(4));

-- Location: LCCOMB_X5_Y20_N12
\inst2|decoder1|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|Add1~12_combout\ = (\inst2|decoder1|timeout_count\(6) & (\inst2|decoder1|Add1~11\ $ (GND))) # (!\inst2|decoder1|timeout_count\(6) & (!\inst2|decoder1|Add1~11\ & VCC))
-- \inst2|decoder1|Add1~13\ = CARRY((\inst2|decoder1|timeout_count\(6) & !\inst2|decoder1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|timeout_count\(6),
	datad => VCC,
	cin => \inst2|decoder1|Add1~11\,
	combout => \inst2|decoder1|Add1~12_combout\,
	cout => \inst2|decoder1|Add1~13\);

-- Location: LCCOMB_X5_Y20_N14
\inst2|decoder1|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|Add1~14_combout\ = (\inst2|decoder1|timeout_count\(7) & (!\inst2|decoder1|Add1~13\)) # (!\inst2|decoder1|timeout_count\(7) & ((\inst2|decoder1|Add1~13\) # (GND)))
-- \inst2|decoder1|Add1~15\ = CARRY((!\inst2|decoder1|Add1~13\) # (!\inst2|decoder1|timeout_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|timeout_count\(7),
	datad => VCC,
	cin => \inst2|decoder1|Add1~13\,
	combout => \inst2|decoder1|Add1~14_combout\,
	cout => \inst2|decoder1|Add1~15\);

-- Location: LCFF_X5_Y20_N15
\inst2|decoder1|timeout_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|Add1~14_combout\,
	sclr => \inst2|decoder1|timeout_count[13]~1_combout\,
	ena => \inst2|decoder1|timeout_count[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|timeout_count\(7));

-- Location: LCCOMB_X5_Y20_N16
\inst2|decoder1|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|Add1~16_combout\ = (\inst2|decoder1|timeout_count\(8) & (\inst2|decoder1|Add1~15\ $ (GND))) # (!\inst2|decoder1|timeout_count\(8) & (!\inst2|decoder1|Add1~15\ & VCC))
-- \inst2|decoder1|Add1~17\ = CARRY((\inst2|decoder1|timeout_count\(8) & !\inst2|decoder1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|timeout_count\(8),
	datad => VCC,
	cin => \inst2|decoder1|Add1~15\,
	combout => \inst2|decoder1|Add1~16_combout\,
	cout => \inst2|decoder1|Add1~17\);

-- Location: LCCOMB_X5_Y20_N18
\inst2|decoder1|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|Add1~18_combout\ = (\inst2|decoder1|timeout_count\(9) & (!\inst2|decoder1|Add1~17\)) # (!\inst2|decoder1|timeout_count\(9) & ((\inst2|decoder1|Add1~17\) # (GND)))
-- \inst2|decoder1|Add1~19\ = CARRY((!\inst2|decoder1|Add1~17\) # (!\inst2|decoder1|timeout_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|timeout_count\(9),
	datad => VCC,
	cin => \inst2|decoder1|Add1~17\,
	combout => \inst2|decoder1|Add1~18_combout\,
	cout => \inst2|decoder1|Add1~19\);

-- Location: LCFF_X5_Y20_N19
\inst2|decoder1|timeout_count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|Add1~18_combout\,
	sclr => \inst2|decoder1|timeout_count[13]~1_combout\,
	ena => \inst2|decoder1|timeout_count[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|timeout_count\(9));

-- Location: LCCOMB_X5_Y20_N20
\inst2|decoder1|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|Add1~20_combout\ = (\inst2|decoder1|timeout_count\(10) & (\inst2|decoder1|Add1~19\ $ (GND))) # (!\inst2|decoder1|timeout_count\(10) & (!\inst2|decoder1|Add1~19\ & VCC))
-- \inst2|decoder1|Add1~21\ = CARRY((\inst2|decoder1|timeout_count\(10) & !\inst2|decoder1|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|timeout_count\(10),
	datad => VCC,
	cin => \inst2|decoder1|Add1~19\,
	combout => \inst2|decoder1|Add1~20_combout\,
	cout => \inst2|decoder1|Add1~21\);

-- Location: LCFF_X5_Y20_N21
\inst2|decoder1|timeout_count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|Add1~20_combout\,
	sclr => \inst2|decoder1|timeout_count[13]~1_combout\,
	ena => \inst2|decoder1|timeout_count[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|timeout_count\(10));

-- Location: LCFF_X5_Y20_N13
\inst2|decoder1|timeout_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|Add1~12_combout\,
	sclr => \inst2|decoder1|timeout_count[13]~1_combout\,
	ena => \inst2|decoder1|timeout_count[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|timeout_count\(6));

-- Location: LCCOMB_X4_Y20_N0
\inst2|decoder1|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|LessThan0~0_combout\ = (((!\inst2|decoder1|timeout_count\(9)) # (!\inst2|decoder1|timeout_count\(6))) # (!\inst2|decoder1|timeout_count\(10))) # (!\inst2|decoder1|timeout_count\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|timeout_count\(13),
	datab => \inst2|decoder1|timeout_count\(10),
	datac => \inst2|decoder1|timeout_count\(6),
	datad => \inst2|decoder1|timeout_count\(9),
	combout => \inst2|decoder1|LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y20_N20
\inst2|decoder1|timeout_count[13]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|timeout_count[13]~0_combout\ = (\reset~combout\ & (!\inst2|decoder1|decode_comb~0_combout\ & \inst2|draw1|draw_ready~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \inst2|decoder1|decode_comb~0_combout\,
	datad => \inst2|draw1|draw_ready~1_combout\,
	combout => \inst2|decoder1|timeout_count[13]~0_combout\);

-- Location: LCCOMB_X10_Y20_N6
\inst2|decoder1|timeout_count[13]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|timeout_count[13]~1_combout\ = ((!\inst2|decoder1|LessThan0~3_combout\ & (!\inst2|decoder1|LessThan0~1_combout\ & !\inst2|decoder1|LessThan0~0_combout\))) # (!\inst2|decoder1|timeout_count[13]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|LessThan0~3_combout\,
	datab => \inst2|decoder1|LessThan0~1_combout\,
	datac => \inst2|decoder1|LessThan0~0_combout\,
	datad => \inst2|decoder1|timeout_count[13]~0_combout\,
	combout => \inst2|decoder1|timeout_count[13]~1_combout\);

-- Location: LCFF_X5_Y20_N1
\inst2|decoder1|timeout_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|Add1~0_combout\,
	sclr => \inst2|decoder1|timeout_count[13]~1_combout\,
	ena => \inst2|decoder1|timeout_count[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|timeout_count\(0));

-- Location: LCCOMB_X5_Y20_N2
\inst2|decoder1|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|Add1~2_combout\ = (\inst2|decoder1|timeout_count\(1) & (!\inst2|decoder1|Add1~1\)) # (!\inst2|decoder1|timeout_count\(1) & ((\inst2|decoder1|Add1~1\) # (GND)))
-- \inst2|decoder1|Add1~3\ = CARRY((!\inst2|decoder1|Add1~1\) # (!\inst2|decoder1|timeout_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|timeout_count\(1),
	datad => VCC,
	cin => \inst2|decoder1|Add1~1\,
	combout => \inst2|decoder1|Add1~2_combout\,
	cout => \inst2|decoder1|Add1~3\);

-- Location: LCFF_X5_Y20_N3
\inst2|decoder1|timeout_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|Add1~2_combout\,
	sclr => \inst2|decoder1|timeout_count[13]~1_combout\,
	ena => \inst2|decoder1|timeout_count[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|timeout_count\(1));

-- Location: LCFF_X5_Y20_N5
\inst2|decoder1|timeout_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|Add1~4_combout\,
	sclr => \inst2|decoder1|timeout_count[13]~1_combout\,
	ena => \inst2|decoder1|timeout_count[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|timeout_count\(2));

-- Location: LCFF_X5_Y20_N7
\inst2|decoder1|timeout_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|Add1~6_combout\,
	sclr => \inst2|decoder1|timeout_count[13]~1_combout\,
	ena => \inst2|decoder1|timeout_count[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|timeout_count\(3));

-- Location: LCCOMB_X6_Y20_N16
\inst2|decoder1|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|LessThan0~1_combout\ = (((!\inst2|decoder1|timeout_count\(4)) # (!\inst2|decoder1|timeout_count\(3))) # (!\inst2|decoder1|timeout_count\(2))) # (!\inst2|decoder1|timeout_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|timeout_count\(5),
	datab => \inst2|decoder1|timeout_count\(2),
	datac => \inst2|decoder1|timeout_count\(3),
	datad => \inst2|decoder1|timeout_count\(4),
	combout => \inst2|decoder1|LessThan0~1_combout\);

-- Location: LCCOMB_X10_Y20_N0
\inst2|decoder1|spi_reset~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|spi_reset~0_combout\ = (!\inst2|decoder1|LessThan0~3_combout\ & (!\inst2|decoder1|LessThan0~1_combout\ & (!\inst2|decoder1|LessThan0~0_combout\ & !\inst4|hex0[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|LessThan0~3_combout\,
	datab => \inst2|decoder1|LessThan0~1_combout\,
	datac => \inst2|decoder1|LessThan0~0_combout\,
	datad => \inst4|hex0[0]~6_combout\,
	combout => \inst2|decoder1|spi_reset~0_combout\);

-- Location: LCCOMB_X24_Y20_N2
\inst2|sreset\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|sreset~combout\ = (\inst2|sreset~0_combout\) # ((!\inst2|decoder1|decode_comb~0_combout\ & (\inst2|draw1|draw_ready~1_combout\ & \inst2|decoder1|spi_reset~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sreset~0_combout\,
	datab => \inst2|decoder1|decode_comb~0_combout\,
	datac => \inst2|draw1|draw_ready~1_combout\,
	datad => \inst2|decoder1|spi_reset~0_combout\,
	combout => \inst2|sreset~combout\);

-- Location: LCCOMB_X25_Y20_N14
\inst2|spi1|mosi_latched~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|spi1|mosi_latched~0_combout\ = (\SPIMOSI~combout\ & !\inst2|sreset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SPIMOSI~combout\,
	datad => \inst2|sreset~combout\,
	combout => \inst2|spi1|mosi_latched~0_combout\);

-- Location: LCFF_X25_Y20_N15
\inst2|spi1|mosi_latched\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|spi1|mosi_latched~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|spi1|mosi_latched~regout\);

-- Location: LCFF_X25_Y20_N13
\inst2|spi1|spi_rx_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|spi1|mosi_latched~regout\,
	sclr => \inst2|sreset~combout\,
	sload => VCC,
	ena => \inst2|spi1|spi_rx_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|spi1|spi_rx_data\(0));

-- Location: LCFF_X25_Y20_N31
\inst2|spi1|spi_rx_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|spi1|spi_rx_data\(0),
	sclr => \inst2|sreset~combout\,
	sload => VCC,
	ena => \inst2|spi1|spi_rx_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|spi1|spi_rx_data\(1));

-- Location: LCCOMB_X23_Y19_N10
\inst2|decoder1|current_instruction~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|current_instruction~3_combout\ = (\inst2|decoder1|current_instruction~2_combout\ & ((\inst2|spi1|spi_rx_data\(1) & (\inst2|spi1|spi_rx_data\(0))) # (!\inst2|spi1|spi_rx_data\(1) & ((\inst2|spi1|spi_rx_data\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|spi1|spi_rx_data\(0),
	datab => \inst2|spi1|spi_rx_data\(1),
	datac => \inst2|spi1|spi_rx_data\(2),
	datad => \inst2|decoder1|current_instruction~2_combout\,
	combout => \inst2|decoder1|current_instruction~3_combout\);

-- Location: LCFF_X23_Y19_N11
\inst2|decoder1|current_instruction[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|current_instruction~3_combout\,
	ena => \inst2|decoder1|current_instruction[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|current_instruction\(2));

-- Location: LCCOMB_X21_Y20_N28
\inst2|decoder1|en~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|en~0_combout\ = (\inst2|decoder1|current_instruction\(2)) # (\inst2|decoder1|current_instruction\(0) $ (!\inst2|decoder1|current_instruction\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|current_instruction\(0),
	datab => \inst2|decoder1|current_instruction\(2),
	datad => \inst2|decoder1|current_instruction\(1),
	combout => \inst2|decoder1|en~0_combout\);

-- Location: LCCOMB_X21_Y20_N6
\inst2|decoder1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|Equal0~0_combout\ = (\inst2|decoder1|current_instruction\(0)) # ((\inst2|decoder1|current_instruction\(2)) # (\inst2|decoder1|current_instruction\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|current_instruction\(0),
	datab => \inst2|decoder1|current_instruction\(2),
	datad => \inst2|decoder1|current_instruction\(1),
	combout => \inst2|decoder1|Equal0~0_combout\);

-- Location: LCCOMB_X20_Y19_N8
\inst2|decoder1|en~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|en~1_combout\ = (\inst2|decoder1|en\(0)) # ((\inst2|decoder1|packet_num\(0) & (\inst2|decoder1|Equal0~1_combout\ & \inst4|Equal63~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|packet_num\(0),
	datab => \inst2|decoder1|Equal0~1_combout\,
	datac => \inst4|Equal63~1_combout\,
	datad => \inst2|decoder1|en\(0),
	combout => \inst2|decoder1|en~1_combout\);

-- Location: LCCOMB_X20_Y20_N12
\inst2|decoder1|en~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|en~2_combout\ = (\inst2|decoder1|decode_comb~1_combout\ & (\inst2|decoder1|en~0_combout\ & (\inst2|decoder1|Equal0~0_combout\ & \inst2|decoder1|en~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|decode_comb~1_combout\,
	datab => \inst2|decoder1|en~0_combout\,
	datac => \inst2|decoder1|Equal0~0_combout\,
	datad => \inst2|decoder1|en~1_combout\,
	combout => \inst2|decoder1|en~2_combout\);

-- Location: LCFF_X20_Y20_N13
\inst2|decoder1|en[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|en~2_combout\,
	sclr => \ALT_INV_reset~combout\,
	ena => \inst2|decoder1|en~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|en\(0));

-- Location: LCCOMB_X20_Y17_N22
\inst2|draw1|pixel1|busy~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|pixel1|busy~feeder_combout\ = \inst2|draw1|pixel1|draw_write~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|draw1|pixel1|draw_write~0_combout\,
	combout => \inst2|draw1|pixel1|busy~feeder_combout\);

-- Location: LCFF_X20_Y17_N23
\inst2|draw1|pixel1|busy\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|pixel1|busy~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|pixel1|busy~regout\);

-- Location: LCCOMB_X20_Y17_N6
\inst2|draw1|pixel1|draw_write~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|pixel1|draw_write~0_combout\ = (\inst2|ramcontroller1|draw_can_access~0_combout\ & (\inst2|decoder1|en\(0) & (\reset~combout\ & !\inst2|draw1|pixel1|busy~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ramcontroller1|draw_can_access~0_combout\,
	datab => \inst2|decoder1|en\(0),
	datac => \reset~combout\,
	datad => \inst2|draw1|pixel1|busy~regout\,
	combout => \inst2|draw1|pixel1|draw_write~0_combout\);

-- Location: LCCOMB_X20_Y17_N16
\inst2|draw1|line1|draw_write~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|draw_write~0_combout\ = ((\inst2|draw1|line1|setup~regout\) # (!\inst2|decoder1|en\(3))) # (!\inst2|ramcontroller1|draw_can_access~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ramcontroller1|draw_can_access~0_combout\,
	datac => \inst2|draw1|line1|setup~regout\,
	datad => \inst2|decoder1|en\(3),
	combout => \inst2|draw1|line1|draw_write~0_combout\);

-- Location: LCCOMB_X23_Y16_N10
\inst2|vgacontroller1|ramaddr[15]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[15]~2_combout\ = (\inst2|draw1|pixel1|draw_write~0_combout\) # (((\inst2|draw1|rect1|draw_write~1_combout\ & \inst2|draw1|rect1|draw_write~0_combout\)) # (!\inst2|draw1|line1|draw_write~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|draw_write~1_combout\,
	datab => \inst2|draw1|pixel1|draw_write~0_combout\,
	datac => \inst2|draw1|line1|draw_write~0_combout\,
	datad => \inst2|draw1|rect1|draw_write~0_combout\,
	combout => \inst2|vgacontroller1|ramaddr[15]~2_combout\);

-- Location: LCCOMB_X20_Y18_N18
\inst2|vgacontroller1|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|Add1~18_combout\ = \inst2|vgacontroller1|Add1~17\ $ (\inst2|vgacontroller1|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|vgacontroller1|v_count\(9),
	cin => \inst2|vgacontroller1|Add1~17\,
	combout => \inst2|vgacontroller1|Add1~18_combout\);

-- Location: LCCOMB_X20_Y18_N30
\inst2|vgacontroller1|new_v_count[9]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|new_v_count[9]~3_combout\ = ((\inst2|vgacontroller1|Add1~18_combout\ & !\inst2|vgacontroller1|LessThan9~2_combout\)) # (!\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \inst2|vgacontroller1|Add1~18_combout\,
	datac => \inst2|vgacontroller1|LessThan9~2_combout\,
	combout => \inst2|vgacontroller1|new_v_count[9]~3_combout\);

-- Location: LCFF_X20_Y18_N31
\inst2|vgacontroller1|v_count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|vgacontroller1|new_v_count[9]~3_combout\,
	ena => \inst2|vgacontroller1|h_count[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|vgacontroller1|v_count\(9));

-- Location: LCCOMB_X21_Y18_N8
\inst2|vgacontroller1|vgavsync~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|vgavsync~1_combout\ = (\inst2|vgacontroller1|v_count\(4)) # (\inst2|vgacontroller1|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|v_count\(4),
	datac => \inst2|vgacontroller1|v_count\(9),
	combout => \inst2|vgacontroller1|vgavsync~1_combout\);

-- Location: LCCOMB_X21_Y18_N2
\inst2|vgacontroller1|LessThan11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|LessThan11~0_combout\ = (\inst2|vgacontroller1|v_count\(7) & (\inst2|vgacontroller1|v_count\(6) & (\inst2|vgacontroller1|v_count\(5) & \inst2|vgacontroller1|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|v_count\(7),
	datab => \inst2|vgacontroller1|v_count\(6),
	datac => \inst2|vgacontroller1|v_count\(5),
	datad => \inst2|vgacontroller1|v_count\(8),
	combout => \inst2|vgacontroller1|LessThan11~0_combout\);

-- Location: LCCOMB_X21_Y18_N18
\inst2|vgacontroller1|vgavsync~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|vgavsync~2_combout\ = (\inst2|vgacontroller1|vgavsync~0_combout\) # (((\inst2|vgacontroller1|vgavsync~1_combout\) # (!\inst2|vgacontroller1|LessThan11~0_combout\)) # (!\inst2|vgacontroller1|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|vgavsync~0_combout\,
	datab => \inst2|vgacontroller1|v_count\(3),
	datac => \inst2|vgacontroller1|vgavsync~1_combout\,
	datad => \inst2|vgacontroller1|LessThan11~0_combout\,
	combout => \inst2|vgacontroller1|vgavsync~2_combout\);

-- Location: LCCOMB_X20_Y20_N8
\inst2|decoder1|next_asb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|next_asb~0_combout\ = \inst2|decoder1|asb~regout\ $ (((\inst4|hex1[3]~7_combout\ & !\inst2|vgacontroller1|vgavsync~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|hex1[3]~7_combout\,
	datac => \inst2|decoder1|asb~regout\,
	datad => \inst2|vgacontroller1|vgavsync~2_combout\,
	combout => \inst2|decoder1|next_asb~0_combout\);

-- Location: LCFF_X20_Y20_N9
\inst2|decoder1|asb\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|next_asb~0_combout\,
	sclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|asb~regout\);

-- Location: LCCOMB_X22_Y19_N6
\inst2|vgacontroller1|vga_combi~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|vga_combi~0_combout\ = (!\inst2|vgacontroller1|h_count\(6) & !\inst2|vgacontroller1|h_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|vgacontroller1|h_count\(6),
	datad => \inst2|vgacontroller1|h_count\(5),
	combout => \inst2|vgacontroller1|vga_combi~0_combout\);

-- Location: LCCOMB_X22_Y19_N12
\inst2|vgacontroller1|vga_combi~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|vga_combi~1_combout\ = (!\inst2|vgacontroller1|LessThan11~0_combout\ & (!\inst2|vgacontroller1|v_count\(9) & ((\inst2|vgacontroller1|vga_combi~0_combout\) # (!\inst2|vgacontroller1|h_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|LessThan11~0_combout\,
	datab => \inst2|vgacontroller1|h_count\(7),
	datac => \inst2|vgacontroller1|v_count\(9),
	datad => \inst2|vgacontroller1|vga_combi~0_combout\,
	combout => \inst2|vgacontroller1|vga_combi~1_combout\);

-- Location: LCCOMB_X24_Y23_N18
\inst2|vgacontroller1|ramaddr[15]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[15]~19_combout\ = (\inst2|vgacontroller1|vga_combi~1_combout\ & (!\inst2|decoder1|decoder_claim~regout\ & \reset~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|vgacontroller1|vga_combi~1_combout\,
	datac => \inst2|decoder1|decoder_claim~regout\,
	datad => \reset~combout\,
	combout => \inst2|vgacontroller1|ramaddr[15]~19_combout\);

-- Location: LCCOMB_X24_Y23_N24
\inst2|vgacontroller1|ramaddr[15]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[15]~20_combout\ = (\inst2|decoder1|asb~regout\ & (!\inst2|vgacontroller1|ramaddr[15]~2_combout\)) # (!\inst2|decoder1|asb~regout\ & ((!\inst2|vgacontroller1|ramaddr[15]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|vgacontroller1|ramaddr[15]~2_combout\,
	datac => \inst2|decoder1|asb~regout\,
	datad => \inst2|vgacontroller1|ramaddr[15]~19_combout\,
	combout => \inst2|vgacontroller1|ramaddr[15]~20_combout\);

-- Location: LCCOMB_X24_Y23_N6
\inst2|vgacontroller1|ramaddr[15]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[15]~51_combout\ = (\inst2|vgacontroller1|ramaddr[15]~2_combout\) # ((!\inst2|decoder1|decoder_claim~regout\ & (\inst2|vgacontroller1|vga_combi~1_combout\ & \reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|decoder_claim~regout\,
	datab => \inst2|vgacontroller1|vga_combi~1_combout\,
	datac => \inst2|vgacontroller1|ramaddr[15]~2_combout\,
	datad => \reset~combout\,
	combout => \inst2|vgacontroller1|ramaddr[15]~51_combout\);

-- Location: LCCOMB_X21_Y16_N8
\inst2|draw1|rect1|ramaddr[14]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|ramaddr[14]~30_combout\ = (\inst2|draw1|rect1|cy\(6)) # (((\inst2|draw1|rect1|almost_done~regout\) # (!\inst2|draw1|rect1|started~regout\)) # (!\inst2|draw1|rect1|draw_write~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|cy\(6),
	datab => \inst2|draw1|rect1|draw_write~1_combout\,
	datac => \inst2|draw1|rect1|started~regout\,
	datad => \inst2|draw1|rect1|almost_done~regout\,
	combout => \inst2|draw1|rect1|ramaddr[14]~30_combout\);

-- Location: LCCOMB_X22_Y18_N22
\inst2|vgacontroller1|ramaddr[14]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[14]~21_combout\ = (\inst2|draw1|line1|draw_write~0_combout\ & (((\inst2|vgacontroller1|v_count\(8)) # (!\inst2|vgacontroller1|ramaddr[15]~19_combout\)))) # (!\inst2|draw1|line1|draw_write~0_combout\ & 
-- (\inst2|draw1|line1|cy\(6) & ((\inst2|vgacontroller1|v_count\(8)) # (!\inst2|vgacontroller1|ramaddr[15]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|draw_write~0_combout\,
	datab => \inst2|draw1|line1|cy\(6),
	datac => \inst2|vgacontroller1|v_count\(8),
	datad => \inst2|vgacontroller1|ramaddr[15]~19_combout\,
	combout => \inst2|vgacontroller1|ramaddr[14]~21_combout\);

-- Location: LCCOMB_X22_Y18_N4
\inst2|vgacontroller1|ramaddr[14]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[14]~22_combout\ = (\inst2|draw1|rect1|ramaddr[14]~30_combout\ & (\inst2|vgacontroller1|ramaddr[14]~21_combout\ & ((\inst2|decoder1|y\(6)) # (!\inst2|draw1|pixel1|draw_write~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|ramaddr[14]~30_combout\,
	datab => \inst2|decoder1|y\(6),
	datac => \inst2|draw1|pixel1|draw_write~0_combout\,
	datad => \inst2|vgacontroller1|ramaddr[14]~21_combout\,
	combout => \inst2|vgacontroller1|ramaddr[14]~22_combout\);

-- Location: LCCOMB_X23_Y16_N6
\inst2|draw1|rect1|ramaddr[13]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|ramaddr[13]~31_combout\ = ((\inst2|draw1|rect1|cy\(5)) # ((\inst2|draw1|rect1|almost_done~regout\) # (!\inst2|draw1|rect1|started~regout\))) # (!\inst2|draw1|rect1|draw_write~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|draw_write~1_combout\,
	datab => \inst2|draw1|rect1|cy\(5),
	datac => \inst2|draw1|rect1|almost_done~regout\,
	datad => \inst2|draw1|rect1|started~regout\,
	combout => \inst2|draw1|rect1|ramaddr[13]~31_combout\);

-- Location: LCCOMB_X22_Y17_N0
\inst2|vgacontroller1|ramaddr[13]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[13]~23_combout\ = (\inst2|draw1|line1|cy\(5) & ((\inst2|vgacontroller1|v_count\(7)) # ((!\inst2|vgacontroller1|ramaddr[15]~19_combout\)))) # (!\inst2|draw1|line1|cy\(5) & (\inst2|draw1|line1|draw_write~0_combout\ & 
-- ((\inst2|vgacontroller1|v_count\(7)) # (!\inst2|vgacontroller1|ramaddr[15]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|cy\(5),
	datab => \inst2|vgacontroller1|v_count\(7),
	datac => \inst2|draw1|line1|draw_write~0_combout\,
	datad => \inst2|vgacontroller1|ramaddr[15]~19_combout\,
	combout => \inst2|vgacontroller1|ramaddr[13]~23_combout\);

-- Location: LCCOMB_X23_Y16_N22
\inst2|vgacontroller1|ramaddr[13]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[13]~24_combout\ = (\inst2|draw1|rect1|ramaddr[13]~31_combout\ & (\inst2|vgacontroller1|ramaddr[13]~23_combout\ & ((\inst2|decoder1|y\(5)) # (!\inst2|draw1|pixel1|draw_write~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|ramaddr[13]~31_combout\,
	datab => \inst2|vgacontroller1|ramaddr[13]~23_combout\,
	datac => \inst2|draw1|pixel1|draw_write~0_combout\,
	datad => \inst2|decoder1|y\(5),
	combout => \inst2|vgacontroller1|ramaddr[13]~24_combout\);

-- Location: LCCOMB_X22_Y17_N22
\inst2|vgacontroller1|ramaddr[12]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[12]~25_combout\ = (\inst2|draw1|line1|draw_write~0_combout\ & (((\inst2|vgacontroller1|v_count\(6))) # (!\inst2|vgacontroller1|ramaddr[15]~19_combout\))) # (!\inst2|draw1|line1|draw_write~0_combout\ & 
-- (\inst2|draw1|line1|cy\(4) & ((\inst2|vgacontroller1|v_count\(6)) # (!\inst2|vgacontroller1|ramaddr[15]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|draw_write~0_combout\,
	datab => \inst2|vgacontroller1|ramaddr[15]~19_combout\,
	datac => \inst2|vgacontroller1|v_count\(6),
	datad => \inst2|draw1|line1|cy\(4),
	combout => \inst2|vgacontroller1|ramaddr[12]~25_combout\);

-- Location: LCCOMB_X23_Y16_N12
\inst2|draw1|rect1|ramaddr[12]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|ramaddr[12]~32_combout\ = (((\inst2|draw1|rect1|almost_done~regout\) # (\inst2|draw1|rect1|cy\(4))) # (!\inst2|draw1|rect1|started~regout\)) # (!\inst2|draw1|rect1|draw_write~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|draw_write~1_combout\,
	datab => \inst2|draw1|rect1|started~regout\,
	datac => \inst2|draw1|rect1|almost_done~regout\,
	datad => \inst2|draw1|rect1|cy\(4),
	combout => \inst2|draw1|rect1|ramaddr[12]~32_combout\);

-- Location: LCCOMB_X23_Y16_N4
\inst2|vgacontroller1|ramaddr[12]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[12]~26_combout\ = (\inst2|vgacontroller1|ramaddr[12]~25_combout\ & (\inst2|draw1|rect1|ramaddr[12]~32_combout\ & ((\inst2|decoder1|y\(4)) # (!\inst2|draw1|pixel1|draw_write~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|ramaddr[12]~25_combout\,
	datab => \inst2|draw1|pixel1|draw_write~0_combout\,
	datac => \inst2|decoder1|y\(4),
	datad => \inst2|draw1|rect1|ramaddr[12]~32_combout\,
	combout => \inst2|vgacontroller1|ramaddr[12]~26_combout\);

-- Location: LCCOMB_X21_Y16_N10
\inst2|draw1|rect1|ramaddr[11]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|ramaddr[11]~33_combout\ = (\inst2|draw1|rect1|cy\(3)) # ((\inst2|draw1|rect1|almost_done~regout\) # ((!\inst2|draw1|rect1|draw_write~1_combout\) # (!\inst2|draw1|rect1|started~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|cy\(3),
	datab => \inst2|draw1|rect1|almost_done~regout\,
	datac => \inst2|draw1|rect1|started~regout\,
	datad => \inst2|draw1|rect1|draw_write~1_combout\,
	combout => \inst2|draw1|rect1|ramaddr[11]~33_combout\);

-- Location: LCCOMB_X22_Y18_N10
\inst2|vgacontroller1|ramaddr[11]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[11]~27_combout\ = (\inst2|draw1|line1|cy\(3) & (((\inst2|vgacontroller1|v_count\(5))) # (!\inst2|vgacontroller1|ramaddr[15]~19_combout\))) # (!\inst2|draw1|line1|cy\(3) & (\inst2|draw1|line1|draw_write~0_combout\ & 
-- ((\inst2|vgacontroller1|v_count\(5)) # (!\inst2|vgacontroller1|ramaddr[15]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|cy\(3),
	datab => \inst2|vgacontroller1|ramaddr[15]~19_combout\,
	datac => \inst2|vgacontroller1|v_count\(5),
	datad => \inst2|draw1|line1|draw_write~0_combout\,
	combout => \inst2|vgacontroller1|ramaddr[11]~27_combout\);

-- Location: LCCOMB_X22_Y18_N20
\inst2|vgacontroller1|ramaddr[11]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[11]~28_combout\ = (\inst2|draw1|rect1|ramaddr[11]~33_combout\ & (\inst2|vgacontroller1|ramaddr[11]~27_combout\ & ((\inst2|decoder1|y\(3)) # (!\inst2|draw1|pixel1|draw_write~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|ramaddr[11]~33_combout\,
	datab => \inst2|draw1|pixel1|draw_write~0_combout\,
	datac => \inst2|decoder1|y\(3),
	datad => \inst2|vgacontroller1|ramaddr[11]~27_combout\,
	combout => \inst2|vgacontroller1|ramaddr[11]~28_combout\);

-- Location: LCCOMB_X21_Y18_N16
\inst2|vgacontroller1|new_v_count[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|new_v_count[4]~4_combout\ = (\inst2|vgacontroller1|Add1~8_combout\ & !\inst2|vgacontroller1|LessThan9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|Add1~8_combout\,
	datad => \inst2|vgacontroller1|LessThan9~2_combout\,
	combout => \inst2|vgacontroller1|new_v_count[4]~4_combout\);

-- Location: LCFF_X21_Y18_N17
\inst2|vgacontroller1|v_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|vgacontroller1|new_v_count[4]~4_combout\,
	sclr => \ALT_INV_reset~combout\,
	ena => \inst2|vgacontroller1|h_count[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|vgacontroller1|v_count\(4));

-- Location: LCCOMB_X22_Y18_N18
\inst2|vgacontroller1|ramaddr[10]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[10]~29_combout\ = (\inst2|draw1|line1|draw_write~0_combout\ & ((\inst2|vgacontroller1|v_count\(4)) # ((!\inst2|vgacontroller1|ramaddr[15]~19_combout\)))) # (!\inst2|draw1|line1|draw_write~0_combout\ & 
-- (\inst2|draw1|line1|cy\(2) & ((\inst2|vgacontroller1|v_count\(4)) # (!\inst2|vgacontroller1|ramaddr[15]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|draw_write~0_combout\,
	datab => \inst2|vgacontroller1|v_count\(4),
	datac => \inst2|draw1|line1|cy\(2),
	datad => \inst2|vgacontroller1|ramaddr[15]~19_combout\,
	combout => \inst2|vgacontroller1|ramaddr[10]~29_combout\);

-- Location: LCCOMB_X23_Y16_N18
\inst2|draw1|rect1|ramaddr[10]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|ramaddr[10]~34_combout\ = (\inst2|draw1|rect1|cy\(2)) # (((\inst2|draw1|rect1|almost_done~regout\) # (!\inst2|draw1|rect1|draw_write~1_combout\)) # (!\inst2|draw1|rect1|started~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|cy\(2),
	datab => \inst2|draw1|rect1|started~regout\,
	datac => \inst2|draw1|rect1|almost_done~regout\,
	datad => \inst2|draw1|rect1|draw_write~1_combout\,
	combout => \inst2|draw1|rect1|ramaddr[10]~34_combout\);

-- Location: LCCOMB_X23_Y16_N26
\inst2|vgacontroller1|ramaddr[10]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[10]~30_combout\ = (\inst2|vgacontroller1|ramaddr[10]~29_combout\ & (\inst2|draw1|rect1|ramaddr[10]~34_combout\ & ((\inst2|decoder1|y\(2)) # (!\inst2|draw1|pixel1|draw_write~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|ramaddr[10]~29_combout\,
	datab => \inst2|draw1|pixel1|draw_write~0_combout\,
	datac => \inst2|decoder1|y\(2),
	datad => \inst2|draw1|rect1|ramaddr[10]~34_combout\,
	combout => \inst2|vgacontroller1|ramaddr[10]~30_combout\);

-- Location: LCFF_X23_Y17_N19
\inst2|decoder1|y[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|decoder1|x~0_combout\,
	sclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \inst2|decoder1|y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|y\(1));

-- Location: LCCOMB_X21_Y17_N0
\inst2|draw1|line1|Add10~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add10~6_combout\ = (!\inst2|draw1|line1|cx[3]~0_combout\ & ((\inst2|draw1|line1|setup~regout\ & (\inst2|decoder1|y\(1))) # (!\inst2|draw1|line1|setup~regout\ & ((\inst2|draw1|line1|Add10~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|setup~regout\,
	datab => \inst2|decoder1|y\(1),
	datac => \inst2|draw1|line1|cx[3]~0_combout\,
	datad => \inst2|draw1|line1|Add10~4_combout\,
	combout => \inst2|draw1|line1|Add10~6_combout\);

-- Location: LCFF_X21_Y17_N1
\inst2|draw1|line1|cy[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|line1|Add10~6_combout\,
	ena => \inst2|draw1|line1|Add10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|line1|cy\(1));

-- Location: LCCOMB_X22_Y17_N16
\inst2|vgacontroller1|ramaddr[9]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[9]~31_combout\ = (\inst2|draw1|line1|draw_write~0_combout\ & (((\inst2|vgacontroller1|v_count\(3))) # (!\inst2|vgacontroller1|ramaddr[15]~19_combout\))) # (!\inst2|draw1|line1|draw_write~0_combout\ & 
-- (\inst2|draw1|line1|cy\(1) & ((\inst2|vgacontroller1|v_count\(3)) # (!\inst2|vgacontroller1|ramaddr[15]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|draw_write~0_combout\,
	datab => \inst2|vgacontroller1|ramaddr[15]~19_combout\,
	datac => \inst2|draw1|line1|cy\(1),
	datad => \inst2|vgacontroller1|v_count\(3),
	combout => \inst2|vgacontroller1|ramaddr[9]~31_combout\);

-- Location: LCCOMB_X23_Y16_N0
\inst2|draw1|rect1|ramaddr[9]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|ramaddr[9]~35_combout\ = (\inst2|draw1|rect1|cy\(1)) # (((\inst2|draw1|rect1|almost_done~regout\) # (!\inst2|draw1|rect1|draw_write~1_combout\)) # (!\inst2|draw1|rect1|started~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|cy\(1),
	datab => \inst2|draw1|rect1|started~regout\,
	datac => \inst2|draw1|rect1|almost_done~regout\,
	datad => \inst2|draw1|rect1|draw_write~1_combout\,
	combout => \inst2|draw1|rect1|ramaddr[9]~35_combout\);

-- Location: LCCOMB_X23_Y16_N24
\inst2|vgacontroller1|ramaddr[9]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[9]~32_combout\ = (\inst2|vgacontroller1|ramaddr[9]~31_combout\ & (\inst2|draw1|rect1|ramaddr[9]~35_combout\ & ((\inst2|decoder1|y\(1)) # (!\inst2|draw1|pixel1|draw_write~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|ramaddr[9]~31_combout\,
	datab => \inst2|draw1|pixel1|draw_write~0_combout\,
	datac => \inst2|decoder1|y\(1),
	datad => \inst2|draw1|rect1|ramaddr[9]~35_combout\,
	combout => \inst2|vgacontroller1|ramaddr[9]~32_combout\);

-- Location: LCCOMB_X22_Y18_N24
\inst2|vgacontroller1|ramaddr[8]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[8]~33_combout\ = (\inst2|draw1|line1|draw_write~0_combout\ & (((\inst2|vgacontroller1|v_count\(2))) # (!\inst2|vgacontroller1|ramaddr[15]~19_combout\))) # (!\inst2|draw1|line1|draw_write~0_combout\ & 
-- (\inst2|draw1|line1|cy\(0) & ((\inst2|vgacontroller1|v_count\(2)) # (!\inst2|vgacontroller1|ramaddr[15]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|draw_write~0_combout\,
	datab => \inst2|vgacontroller1|ramaddr[15]~19_combout\,
	datac => \inst2|vgacontroller1|v_count\(2),
	datad => \inst2|draw1|line1|cy\(0),
	combout => \inst2|vgacontroller1|ramaddr[8]~33_combout\);

-- Location: LCCOMB_X22_Y18_N2
\inst2|draw1|rect1|ramaddr[8]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|ramaddr[8]~36_combout\ = (\inst2|draw1|rect1|almost_done~regout\) # ((\inst2|draw1|rect1|cy\(0)) # ((!\inst2|draw1|rect1|draw_write~1_combout\) # (!\inst2|draw1|rect1|started~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|almost_done~regout\,
	datab => \inst2|draw1|rect1|cy\(0),
	datac => \inst2|draw1|rect1|started~regout\,
	datad => \inst2|draw1|rect1|draw_write~1_combout\,
	combout => \inst2|draw1|rect1|ramaddr[8]~36_combout\);

-- Location: LCCOMB_X22_Y18_N26
\inst2|vgacontroller1|ramaddr[8]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[8]~34_combout\ = (\inst2|vgacontroller1|ramaddr[8]~33_combout\ & (\inst2|draw1|rect1|ramaddr[8]~36_combout\ & ((\inst2|decoder1|y\(0)) # (!\inst2|draw1|pixel1|draw_write~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|ramaddr[8]~33_combout\,
	datab => \inst2|draw1|pixel1|draw_write~0_combout\,
	datac => \inst2|decoder1|y\(0),
	datad => \inst2|draw1|rect1|ramaddr[8]~36_combout\,
	combout => \inst2|vgacontroller1|ramaddr[8]~34_combout\);

-- Location: LCCOMB_X25_Y16_N16
\inst2|draw1|line1|Add8~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add8~28_combout\ = \inst2|draw1|line1|cx\(7) $ (\inst2|draw1|line1|Add8~25\ $ (!\inst2|draw1|line1|LessThan0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|draw1|line1|cx\(7),
	datad => \inst2|draw1|line1|LessThan0~14_combout\,
	cin => \inst2|draw1|line1|Add8~25\,
	combout => \inst2|draw1|line1|Add8~28_combout\);

-- Location: LCCOMB_X25_Y19_N10
\inst2|draw1|line1|Add8~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add8~30_combout\ = (\inst2|draw1|line1|setup~regout\ & (\inst2|decoder1|x\(7))) # (!\inst2|draw1|line1|setup~regout\ & ((\inst2|draw1|line1|Add8~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|x\(7),
	datac => \inst2|draw1|line1|Add8~28_combout\,
	datad => \inst2|draw1|line1|setup~regout\,
	combout => \inst2|draw1|line1|Add8~30_combout\);

-- Location: LCCOMB_X25_Y19_N24
\inst2|draw1|line1|Add8~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add8~31_combout\ = (!\inst2|draw1|line1|cx[3]~0_combout\ & ((\inst2|draw1|line1|cx[3]~1_combout\ & ((\inst2|draw1|line1|cx\(7)))) # (!\inst2|draw1|line1|cx[3]~1_combout\ & (\inst2|draw1|line1|Add8~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|cx[3]~0_combout\,
	datab => \inst2|draw1|line1|Add8~30_combout\,
	datac => \inst2|draw1|line1|cx\(7),
	datad => \inst2|draw1|line1|cx[3]~1_combout\,
	combout => \inst2|draw1|line1|Add8~31_combout\);

-- Location: LCFF_X25_Y19_N25
\inst2|draw1|line1|cx[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|line1|Add8~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|line1|cx\(7));

-- Location: LCCOMB_X25_Y19_N12
\inst2|vgacontroller1|ramaddr[7]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[7]~35_combout\ = (\inst2|draw1|line1|draw_write~0_combout\ & (((\inst2|vgacontroller1|h_count\(7))) # (!\inst2|vgacontroller1|ramaddr[15]~19_combout\))) # (!\inst2|draw1|line1|draw_write~0_combout\ & 
-- (\inst2|draw1|line1|cx\(7) & ((\inst2|vgacontroller1|h_count\(7)) # (!\inst2|vgacontroller1|ramaddr[15]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|draw_write~0_combout\,
	datab => \inst2|vgacontroller1|ramaddr[15]~19_combout\,
	datac => \inst2|draw1|line1|cx\(7),
	datad => \inst2|vgacontroller1|h_count\(7),
	combout => \inst2|vgacontroller1|ramaddr[7]~35_combout\);

-- Location: LCCOMB_X24_Y18_N16
\inst2|draw1|rect1|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Add1~8_combout\ = (\inst2|draw1|rect1|cx\(4) & ((GND) # (!\inst2|draw1|rect1|Add1~7\))) # (!\inst2|draw1|rect1|cx\(4) & (\inst2|draw1|rect1|Add1~7\ $ (GND)))
-- \inst2|draw1|rect1|Add1~9\ = CARRY((\inst2|draw1|rect1|cx\(4)) # (!\inst2|draw1|rect1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|draw1|rect1|cx\(4),
	datad => VCC,
	cin => \inst2|draw1|rect1|Add1~7\,
	combout => \inst2|draw1|rect1|Add1~8_combout\,
	cout => \inst2|draw1|rect1|Add1~9\);

-- Location: LCCOMB_X23_Y18_N2
\inst2|draw1|rect1|cx_tmp[4]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cx_tmp[4]~12_combout\ = (\inst2|draw1|rect1|cx[6]~1_combout\ & (((\inst2|draw1|rect1|cx[6]~7_combout\)))) # (!\inst2|draw1|rect1|cx[6]~1_combout\ & ((\inst2|draw1|rect1|cx[6]~7_combout\ & ((\inst2|draw1|rect1|Add1~8_combout\))) # 
-- (!\inst2|draw1|rect1|cx[6]~7_combout\ & (\inst2|decoder1|x\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|cx[6]~1_combout\,
	datab => \inst2|decoder1|x\(4),
	datac => \inst2|draw1|rect1|Add1~8_combout\,
	datad => \inst2|draw1|rect1|cx[6]~7_combout\,
	combout => \inst2|draw1|rect1|cx_tmp[4]~12_combout\);

-- Location: LCCOMB_X23_Y18_N24
\inst2|draw1|rect1|cx_tmp[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cx_tmp[4]~13_combout\ = (\inst2|draw1|rect1|cx[6]~1_combout\ & ((\inst2|draw1|rect1|cx_tmp[4]~12_combout\ & ((\inst2|draw1|rect1|cx\(4)))) # (!\inst2|draw1|rect1|cx_tmp[4]~12_combout\ & (\inst2|decoder1|w\(4))))) # 
-- (!\inst2|draw1|rect1|cx[6]~1_combout\ & (((\inst2|draw1|rect1|cx_tmp[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|w\(4),
	datab => \inst2|draw1|rect1|cx\(4),
	datac => \inst2|draw1|rect1|cx[6]~1_combout\,
	datad => \inst2|draw1|rect1|cx_tmp[4]~12_combout\,
	combout => \inst2|draw1|rect1|cx_tmp[4]~13_combout\);

-- Location: LCCOMB_X23_Y18_N28
\inst2|draw1|rect1|cx_tmp[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cx_tmp[4]~14_combout\ = (\inst2|draw1|rect1|cy_tmp[0]~0_combout\ & (\inst2|draw1|rect1|cx_tmp[4]~13_combout\ & ((\inst2|draw1|rect1|cx[6]~1_combout\) # (!\inst2|draw1|rect1|almost_done~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|cx[6]~1_combout\,
	datab => \inst2|draw1|rect1|cy_tmp[0]~0_combout\,
	datac => \inst2|draw1|rect1|cx_tmp[4]~13_combout\,
	datad => \inst2|draw1|rect1|almost_done~regout\,
	combout => \inst2|draw1|rect1|cx_tmp[4]~14_combout\);

-- Location: LCFF_X23_Y18_N29
\inst2|draw1|rect1|cx[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|rect1|cx_tmp[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|rect1|cx\(4));

-- Location: LCCOMB_X24_Y18_N22
\inst2|draw1|rect1|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|Add1~14_combout\ = \inst2|draw1|rect1|Add1~13\ $ (!\inst2|draw1|rect1|cx\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|draw1|rect1|cx\(7),
	cin => \inst2|draw1|rect1|Add1~13\,
	combout => \inst2|draw1|rect1|Add1~14_combout\);

-- Location: LCCOMB_X23_Y18_N8
\inst2|draw1|rect1|cx_tmp[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cx_tmp[7]~22_combout\ = (\inst2|draw1|rect1|cx_tmp[7]~21_combout\ & (((\inst2|draw1|rect1|cx\(7))) # (!\inst2|draw1|rect1|cx[6]~7_combout\))) # (!\inst2|draw1|rect1|cx_tmp[7]~21_combout\ & (\inst2|draw1|rect1|cx[6]~7_combout\ & 
-- ((\inst2|draw1|rect1|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|cx_tmp[7]~21_combout\,
	datab => \inst2|draw1|rect1|cx[6]~7_combout\,
	datac => \inst2|draw1|rect1|cx\(7),
	datad => \inst2|draw1|rect1|Add1~14_combout\,
	combout => \inst2|draw1|rect1|cx_tmp[7]~22_combout\);

-- Location: LCCOMB_X23_Y18_N14
\inst2|draw1|rect1|cx_tmp[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cx_tmp[7]~23_combout\ = (\inst2|draw1|rect1|cy_tmp[0]~0_combout\ & (\inst2|draw1|rect1|cx_tmp[7]~22_combout\ & ((\inst2|draw1|rect1|cx[6]~1_combout\) # (!\inst2|draw1|rect1|almost_done~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|cx[6]~1_combout\,
	datab => \inst2|draw1|rect1|cy_tmp[0]~0_combout\,
	datac => \inst2|draw1|rect1|cx_tmp[7]~22_combout\,
	datad => \inst2|draw1|rect1|almost_done~regout\,
	combout => \inst2|draw1|rect1|cx_tmp[7]~23_combout\);

-- Location: LCFF_X23_Y18_N15
\inst2|draw1|rect1|cx[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|rect1|cx_tmp[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|rect1|cx\(7));

-- Location: LCCOMB_X22_Y18_N16
\inst2|draw1|rect1|ramaddr[7]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|ramaddr[7]~37_combout\ = (\inst2|draw1|rect1|almost_done~regout\) # ((\inst2|draw1|rect1|cx\(7)) # ((!\inst2|draw1|rect1|draw_write~1_combout\) # (!\inst2|draw1|rect1|started~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|almost_done~regout\,
	datab => \inst2|draw1|rect1|cx\(7),
	datac => \inst2|draw1|rect1|started~regout\,
	datad => \inst2|draw1|rect1|draw_write~1_combout\,
	combout => \inst2|draw1|rect1|ramaddr[7]~37_combout\);

-- Location: LCCOMB_X25_Y19_N6
\inst2|vgacontroller1|ramaddr[7]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[7]~36_combout\ = (\inst2|vgacontroller1|ramaddr[7]~35_combout\ & (\inst2|draw1|rect1|ramaddr[7]~37_combout\ & ((\inst2|decoder1|x\(7)) # (!\inst2|draw1|pixel1|draw_write~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|ramaddr[7]~35_combout\,
	datab => \inst2|draw1|pixel1|draw_write~0_combout\,
	datac => \inst2|decoder1|x\(7),
	datad => \inst2|draw1|rect1|ramaddr[7]~37_combout\,
	combout => \inst2|vgacontroller1|ramaddr[7]~36_combout\);

-- Location: LCCOMB_X25_Y18_N28
\inst2|draw1|rect1|cx_tmp[6]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cx_tmp[6]~18_combout\ = (\inst2|draw1|rect1|cx[6]~7_combout\ & ((\inst2|draw1|rect1|Add1~12_combout\) # ((\inst2|draw1|rect1|cx[6]~1_combout\)))) # (!\inst2|draw1|rect1|cx[6]~7_combout\ & (((\inst2|decoder1|x\(6) & 
-- !\inst2|draw1|rect1|cx[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|Add1~12_combout\,
	datab => \inst2|decoder1|x\(6),
	datac => \inst2|draw1|rect1|cx[6]~7_combout\,
	datad => \inst2|draw1|rect1|cx[6]~1_combout\,
	combout => \inst2|draw1|rect1|cx_tmp[6]~18_combout\);

-- Location: LCCOMB_X25_Y18_N22
\inst2|draw1|rect1|cx_tmp[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cx_tmp[6]~19_combout\ = (\inst2|draw1|rect1|cx[6]~1_combout\ & ((\inst2|draw1|rect1|cx_tmp[6]~18_combout\ & ((\inst2|draw1|rect1|cx\(6)))) # (!\inst2|draw1|rect1|cx_tmp[6]~18_combout\ & (\inst2|decoder1|w\(6))))) # 
-- (!\inst2|draw1|rect1|cx[6]~1_combout\ & (((\inst2|draw1|rect1|cx_tmp[6]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|cx[6]~1_combout\,
	datab => \inst2|decoder1|w\(6),
	datac => \inst2|draw1|rect1|cx\(6),
	datad => \inst2|draw1|rect1|cx_tmp[6]~18_combout\,
	combout => \inst2|draw1|rect1|cx_tmp[6]~19_combout\);

-- Location: LCCOMB_X25_Y18_N26
\inst2|draw1|rect1|cx_tmp[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|cx_tmp[6]~20_combout\ = (\inst2|draw1|rect1|cy_tmp[0]~0_combout\ & (\inst2|draw1|rect1|cx_tmp[6]~19_combout\ & ((\inst2|draw1|rect1|cx[6]~1_combout\) # (!\inst2|draw1|rect1|almost_done~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|almost_done~regout\,
	datab => \inst2|draw1|rect1|cy_tmp[0]~0_combout\,
	datac => \inst2|draw1|rect1|cx[6]~1_combout\,
	datad => \inst2|draw1|rect1|cx_tmp[6]~19_combout\,
	combout => \inst2|draw1|rect1|cx_tmp[6]~20_combout\);

-- Location: LCFF_X25_Y18_N27
\inst2|draw1|rect1|cx[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|rect1|cx_tmp[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|rect1|cx\(6));

-- Location: LCCOMB_X24_Y18_N6
\inst2|draw1|rect1|ramaddr[6]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|ramaddr[6]~38_combout\ = (\inst2|draw1|rect1|almost_done~regout\) # (((\inst2|draw1|rect1|cx\(6)) # (!\inst2|draw1|rect1|draw_write~1_combout\)) # (!\inst2|draw1|rect1|started~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|almost_done~regout\,
	datab => \inst2|draw1|rect1|started~regout\,
	datac => \inst2|draw1|rect1|cx\(6),
	datad => \inst2|draw1|rect1|draw_write~1_combout\,
	combout => \inst2|draw1|rect1|ramaddr[6]~38_combout\);

-- Location: LCCOMB_X25_Y19_N16
\inst2|vgacontroller1|ramaddr[6]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[6]~37_combout\ = (\inst2|vgacontroller1|h_count\(6) & (((\inst2|draw1|line1|draw_write~0_combout\) # (\inst2|draw1|line1|cx\(6))))) # (!\inst2|vgacontroller1|h_count\(6) & (!\inst2|vgacontroller1|ramaddr[15]~19_combout\ & 
-- ((\inst2|draw1|line1|draw_write~0_combout\) # (\inst2|draw1|line1|cx\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|h_count\(6),
	datab => \inst2|vgacontroller1|ramaddr[15]~19_combout\,
	datac => \inst2|draw1|line1|draw_write~0_combout\,
	datad => \inst2|draw1|line1|cx\(6),
	combout => \inst2|vgacontroller1|ramaddr[6]~37_combout\);

-- Location: LCCOMB_X25_Y19_N30
\inst2|vgacontroller1|ramaddr[6]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[6]~38_combout\ = (\inst2|draw1|rect1|ramaddr[6]~38_combout\ & (\inst2|vgacontroller1|ramaddr[6]~37_combout\ & ((\inst2|decoder1|x\(6)) # (!\inst2|draw1|pixel1|draw_write~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|ramaddr[6]~38_combout\,
	datab => \inst2|draw1|pixel1|draw_write~0_combout\,
	datac => \inst2|vgacontroller1|ramaddr[6]~37_combout\,
	datad => \inst2|decoder1|x\(6),
	combout => \inst2|vgacontroller1|ramaddr[6]~38_combout\);

-- Location: LCCOMB_X24_Y16_N12
\inst2|vgacontroller1|ramaddr[5]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[5]~39_combout\ = (\inst2|draw1|line1|draw_write~0_combout\ & (((\inst2|vgacontroller1|h_count\(5))) # (!\inst2|vgacontroller1|ramaddr[15]~19_combout\))) # (!\inst2|draw1|line1|draw_write~0_combout\ & 
-- (\inst2|draw1|line1|cx\(5) & ((\inst2|vgacontroller1|h_count\(5)) # (!\inst2|vgacontroller1|ramaddr[15]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|draw_write~0_combout\,
	datab => \inst2|vgacontroller1|ramaddr[15]~19_combout\,
	datac => \inst2|vgacontroller1|h_count\(5),
	datad => \inst2|draw1|line1|cx\(5),
	combout => \inst2|vgacontroller1|ramaddr[5]~39_combout\);

-- Location: LCCOMB_X24_Y18_N24
\inst2|draw1|rect1|ramaddr[5]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|ramaddr[5]~39_combout\ = (\inst2|draw1|rect1|almost_done~regout\) # (((\inst2|draw1|rect1|cx\(5)) # (!\inst2|draw1|rect1|draw_write~1_combout\)) # (!\inst2|draw1|rect1|started~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|almost_done~regout\,
	datab => \inst2|draw1|rect1|started~regout\,
	datac => \inst2|draw1|rect1|draw_write~1_combout\,
	datad => \inst2|draw1|rect1|cx\(5),
	combout => \inst2|draw1|rect1|ramaddr[5]~39_combout\);

-- Location: LCCOMB_X24_Y16_N2
\inst2|vgacontroller1|ramaddr[5]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[5]~40_combout\ = (\inst2|vgacontroller1|ramaddr[5]~39_combout\ & (\inst2|draw1|rect1|ramaddr[5]~39_combout\ & ((\inst2|decoder1|x\(5)) # (!\inst2|draw1|pixel1|draw_write~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|ramaddr[5]~39_combout\,
	datab => \inst2|draw1|pixel1|draw_write~0_combout\,
	datac => \inst2|draw1|rect1|ramaddr[5]~39_combout\,
	datad => \inst2|decoder1|x\(5),
	combout => \inst2|vgacontroller1|ramaddr[5]~40_combout\);

-- Location: LCCOMB_X23_Y16_N14
\inst2|draw1|rect1|ramaddr[4]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|ramaddr[4]~40_combout\ = (((\inst2|draw1|rect1|almost_done~regout\) # (\inst2|draw1|rect1|cx\(4))) # (!\inst2|draw1|rect1|started~regout\)) # (!\inst2|draw1|rect1|draw_write~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|draw_write~1_combout\,
	datab => \inst2|draw1|rect1|started~regout\,
	datac => \inst2|draw1|rect1|almost_done~regout\,
	datad => \inst2|draw1|rect1|cx\(4),
	combout => \inst2|draw1|rect1|ramaddr[4]~40_combout\);

-- Location: LCCOMB_X24_Y16_N16
\inst2|vgacontroller1|ramaddr[4]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[4]~41_combout\ = (\inst2|vgacontroller1|h_count\(4) & ((\inst2|draw1|line1|cx\(4)) # ((\inst2|draw1|line1|draw_write~0_combout\)))) # (!\inst2|vgacontroller1|h_count\(4) & (!\inst2|vgacontroller1|ramaddr[15]~19_combout\ & 
-- ((\inst2|draw1|line1|cx\(4)) # (\inst2|draw1|line1|draw_write~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|h_count\(4),
	datab => \inst2|draw1|line1|cx\(4),
	datac => \inst2|draw1|line1|draw_write~0_combout\,
	datad => \inst2|vgacontroller1|ramaddr[15]~19_combout\,
	combout => \inst2|vgacontroller1|ramaddr[4]~41_combout\);

-- Location: LCCOMB_X24_Y16_N22
\inst2|vgacontroller1|ramaddr[4]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[4]~42_combout\ = (\inst2|draw1|rect1|ramaddr[4]~40_combout\ & (\inst2|vgacontroller1|ramaddr[4]~41_combout\ & ((\inst2|decoder1|x\(4)) # (!\inst2|draw1|pixel1|draw_write~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|ramaddr[4]~40_combout\,
	datab => \inst2|draw1|pixel1|draw_write~0_combout\,
	datac => \inst2|vgacontroller1|ramaddr[4]~41_combout\,
	datad => \inst2|decoder1|x\(4),
	combout => \inst2|vgacontroller1|ramaddr[4]~42_combout\);

-- Location: LCCOMB_X24_Y18_N26
\inst2|draw1|rect1|ramaddr[3]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|ramaddr[3]~41_combout\ = (\inst2|draw1|rect1|almost_done~regout\) # (((\inst2|draw1|rect1|cx\(3)) # (!\inst2|draw1|rect1|draw_write~1_combout\)) # (!\inst2|draw1|rect1|started~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|almost_done~regout\,
	datab => \inst2|draw1|rect1|started~regout\,
	datac => \inst2|draw1|rect1|draw_write~1_combout\,
	datad => \inst2|draw1|rect1|cx\(3),
	combout => \inst2|draw1|rect1|ramaddr[3]~41_combout\);

-- Location: LCCOMB_X24_Y16_N8
\inst2|draw1|line1|Add8~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add8~14_combout\ = (\inst2|draw1|line1|setup~regout\ & ((\inst2|decoder1|x\(3)))) # (!\inst2|draw1|line1|setup~regout\ & (\inst2|draw1|line1|Add8~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|setup~regout\,
	datab => \inst2|draw1|line1|Add8~12_combout\,
	datac => \inst2|decoder1|x\(3),
	combout => \inst2|draw1|line1|Add8~14_combout\);

-- Location: LCCOMB_X24_Y16_N28
\inst2|draw1|line1|Add8~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add8~15_combout\ = (!\inst2|draw1|line1|cx[3]~0_combout\ & ((\inst2|draw1|line1|cx[3]~1_combout\ & ((\inst2|draw1|line1|cx\(3)))) # (!\inst2|draw1|line1|cx[3]~1_combout\ & (\inst2|draw1|line1|Add8~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|cx[3]~0_combout\,
	datab => \inst2|draw1|line1|Add8~14_combout\,
	datac => \inst2|draw1|line1|cx\(3),
	datad => \inst2|draw1|line1|cx[3]~1_combout\,
	combout => \inst2|draw1|line1|Add8~15_combout\);

-- Location: LCFF_X24_Y16_N29
\inst2|draw1|line1|cx[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|line1|Add8~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|line1|cx\(3));

-- Location: LCCOMB_X24_Y16_N4
\inst2|vgacontroller1|ramaddr[3]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[3]~43_combout\ = (\inst2|vgacontroller1|h_count\(3) & ((\inst2|draw1|line1|cx\(3)) # ((\inst2|draw1|line1|draw_write~0_combout\)))) # (!\inst2|vgacontroller1|h_count\(3) & (!\inst2|vgacontroller1|ramaddr[15]~19_combout\ & 
-- ((\inst2|draw1|line1|cx\(3)) # (\inst2|draw1|line1|draw_write~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|h_count\(3),
	datab => \inst2|draw1|line1|cx\(3),
	datac => \inst2|draw1|line1|draw_write~0_combout\,
	datad => \inst2|vgacontroller1|ramaddr[15]~19_combout\,
	combout => \inst2|vgacontroller1|ramaddr[3]~43_combout\);

-- Location: LCCOMB_X24_Y16_N18
\inst2|vgacontroller1|ramaddr[3]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[3]~44_combout\ = (\inst2|draw1|rect1|ramaddr[3]~41_combout\ & (\inst2|vgacontroller1|ramaddr[3]~43_combout\ & ((\inst2|decoder1|x\(3)) # (!\inst2|draw1|pixel1|draw_write~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|ramaddr[3]~41_combout\,
	datab => \inst2|draw1|pixel1|draw_write~0_combout\,
	datac => \inst2|decoder1|x\(3),
	datad => \inst2|vgacontroller1|ramaddr[3]~43_combout\,
	combout => \inst2|vgacontroller1|ramaddr[3]~44_combout\);

-- Location: LCCOMB_X25_Y16_N24
\inst2|draw1|line1|Add8~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|Add8~11_combout\ = (!\inst2|draw1|line1|cx[3]~0_combout\ & ((\inst2|draw1|line1|cx[3]~1_combout\ & ((\inst2|draw1|line1|cx\(2)))) # (!\inst2|draw1|line1|cx[3]~1_combout\ & (\inst2|draw1|line1|Add8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|Add8~10_combout\,
	datab => \inst2|draw1|line1|cx[3]~0_combout\,
	datac => \inst2|draw1|line1|cx\(2),
	datad => \inst2|draw1|line1|cx[3]~1_combout\,
	combout => \inst2|draw1|line1|Add8~11_combout\);

-- Location: LCFF_X25_Y16_N25
\inst2|draw1|line1|cx[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|draw1|line1|Add8~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|draw1|line1|cx\(2));

-- Location: LCCOMB_X24_Y16_N20
\inst2|vgacontroller1|ramaddr[2]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[2]~45_combout\ = (\inst2|vgacontroller1|h_count\(2) & (((\inst2|draw1|line1|draw_write~0_combout\) # (\inst2|draw1|line1|cx\(2))))) # (!\inst2|vgacontroller1|h_count\(2) & (!\inst2|vgacontroller1|ramaddr[15]~19_combout\ & 
-- ((\inst2|draw1|line1|draw_write~0_combout\) # (\inst2|draw1|line1|cx\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|h_count\(2),
	datab => \inst2|vgacontroller1|ramaddr[15]~19_combout\,
	datac => \inst2|draw1|line1|draw_write~0_combout\,
	datad => \inst2|draw1|line1|cx\(2),
	combout => \inst2|vgacontroller1|ramaddr[2]~45_combout\);

-- Location: LCCOMB_X23_Y18_N10
\inst2|draw1|rect1|ramaddr[2]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|ramaddr[2]~42_combout\ = (\inst2|draw1|rect1|almost_done~regout\) # ((\inst2|draw1|rect1|cx\(2)) # ((!\inst2|draw1|rect1|draw_write~1_combout\) # (!\inst2|draw1|rect1|started~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|almost_done~regout\,
	datab => \inst2|draw1|rect1|cx\(2),
	datac => \inst2|draw1|rect1|started~regout\,
	datad => \inst2|draw1|rect1|draw_write~1_combout\,
	combout => \inst2|draw1|rect1|ramaddr[2]~42_combout\);

-- Location: LCCOMB_X24_Y16_N26
\inst2|vgacontroller1|ramaddr[2]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[2]~46_combout\ = (\inst2|vgacontroller1|ramaddr[2]~45_combout\ & (\inst2|draw1|rect1|ramaddr[2]~42_combout\ & ((\inst2|decoder1|x\(2)) # (!\inst2|draw1|pixel1|draw_write~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|ramaddr[2]~45_combout\,
	datab => \inst2|draw1|pixel1|draw_write~0_combout\,
	datac => \inst2|decoder1|x\(2),
	datad => \inst2|draw1|rect1|ramaddr[2]~42_combout\,
	combout => \inst2|vgacontroller1|ramaddr[2]~46_combout\);

-- Location: LCCOMB_X24_Y18_N4
\inst2|draw1|rect1|ramaddr[1]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|ramaddr[1]~43_combout\ = (\inst2|draw1|rect1|almost_done~regout\) # (((\inst2|draw1|rect1|cx\(1)) # (!\inst2|draw1|rect1|draw_write~1_combout\)) # (!\inst2|draw1|rect1|started~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|almost_done~regout\,
	datab => \inst2|draw1|rect1|started~regout\,
	datac => \inst2|draw1|rect1|draw_write~1_combout\,
	datad => \inst2|draw1|rect1|cx\(1),
	combout => \inst2|draw1|rect1|ramaddr[1]~43_combout\);

-- Location: LCFF_X21_Y19_N7
\inst2|vgacontroller1|h_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|vgacontroller1|h_count[1]~10_combout\,
	sdata => \~GND~combout\,
	sload => \inst2|vgacontroller1|h_count[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|vgacontroller1|h_count\(1));

-- Location: LCCOMB_X25_Y19_N4
\inst2|vgacontroller1|ramaddr[1]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[1]~47_combout\ = (\inst2|draw1|line1|cx\(1) & (((\inst2|vgacontroller1|h_count\(1))) # (!\inst2|vgacontroller1|ramaddr[15]~19_combout\))) # (!\inst2|draw1|line1|cx\(1) & (\inst2|draw1|line1|draw_write~0_combout\ & 
-- ((\inst2|vgacontroller1|h_count\(1)) # (!\inst2|vgacontroller1|ramaddr[15]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|cx\(1),
	datab => \inst2|vgacontroller1|ramaddr[15]~19_combout\,
	datac => \inst2|draw1|line1|draw_write~0_combout\,
	datad => \inst2|vgacontroller1|h_count\(1),
	combout => \inst2|vgacontroller1|ramaddr[1]~47_combout\);

-- Location: LCCOMB_X25_Y19_N14
\inst2|vgacontroller1|ramaddr[1]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[1]~48_combout\ = (\inst2|draw1|rect1|ramaddr[1]~43_combout\ & (\inst2|vgacontroller1|ramaddr[1]~47_combout\ & ((\inst2|decoder1|x\(1)) # (!\inst2|draw1|pixel1|draw_write~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|ramaddr[1]~43_combout\,
	datab => \inst2|draw1|pixel1|draw_write~0_combout\,
	datac => \inst2|vgacontroller1|ramaddr[1]~47_combout\,
	datad => \inst2|decoder1|x\(1),
	combout => \inst2|vgacontroller1|ramaddr[1]~48_combout\);

-- Location: LCCOMB_X24_Y16_N24
\inst2|vgacontroller1|ramaddr[0]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[0]~49_combout\ = (\inst2|draw1|line1|draw_write~0_combout\ & (((\inst2|vgacontroller1|h_count\(0))) # (!\inst2|vgacontroller1|ramaddr[15]~19_combout\))) # (!\inst2|draw1|line1|draw_write~0_combout\ & 
-- (\inst2|draw1|line1|cx\(0) & ((\inst2|vgacontroller1|h_count\(0)) # (!\inst2|vgacontroller1|ramaddr[15]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|line1|draw_write~0_combout\,
	datab => \inst2|vgacontroller1|ramaddr[15]~19_combout\,
	datac => \inst2|vgacontroller1|h_count\(0),
	datad => \inst2|draw1|line1|cx\(0),
	combout => \inst2|vgacontroller1|ramaddr[0]~49_combout\);

-- Location: LCCOMB_X24_Y18_N2
\inst2|draw1|rect1|ramaddr[0]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|rect1|ramaddr[0]~44_combout\ = (\inst2|draw1|rect1|almost_done~regout\) # (((\inst2|draw1|rect1|cx\(0)) # (!\inst2|draw1|rect1|draw_write~1_combout\)) # (!\inst2|draw1|rect1|started~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|draw1|rect1|almost_done~regout\,
	datab => \inst2|draw1|rect1|started~regout\,
	datac => \inst2|draw1|rect1|draw_write~1_combout\,
	datad => \inst2|draw1|rect1|cx\(0),
	combout => \inst2|draw1|rect1|ramaddr[0]~44_combout\);

-- Location: LCCOMB_X24_Y16_N6
\inst2|vgacontroller1|ramaddr[0]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|ramaddr[0]~50_combout\ = (\inst2|vgacontroller1|ramaddr[0]~49_combout\ & (\inst2|draw1|rect1|ramaddr[0]~44_combout\ & ((\inst2|decoder1|x\(0)) # (!\inst2|draw1|pixel1|draw_write~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|ramaddr[0]~49_combout\,
	datab => \inst2|draw1|pixel1|draw_write~0_combout\,
	datac => \inst2|draw1|rect1|ramaddr[0]~44_combout\,
	datad => \inst2|decoder1|x\(0),
	combout => \inst2|vgacontroller1|ramaddr[0]~50_combout\);

-- Location: LCCOMB_X23_Y20_N20
\inst2|decoder1|y~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|y~0_combout\ = (\inst2|decoder1|current_instruction\(2) & (\inst2|decoder1|decode_comb~1_combout\ & ((!\inst2|decoder1|current_instruction\(0)) # (!\inst2|decoder1|current_instruction\(1))))) # (!\inst2|decoder1|current_instruction\(2) & 
-- (\inst2|decoder1|current_instruction\(1) & ((\inst2|decoder1|decode_comb~1_combout\) # (!\inst2|decoder1|current_instruction\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|current_instruction\(1),
	datab => \inst2|decoder1|current_instruction\(2),
	datac => \inst2|decoder1|decode_comb~1_combout\,
	datad => \inst2|decoder1|current_instruction\(0),
	combout => \inst2|decoder1|y~0_combout\);

-- Location: LCCOMB_X23_Y20_N30
\inst2|decoder1|color~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|color~0_combout\ = ((\inst2|decoder1|y~0_combout\ & ((\inst4|Equal63~3_combout\) # (!\inst2|decoder1|x[5]~1_combout\)))) # (!\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal63~3_combout\,
	datab => \reset~combout\,
	datac => \inst2|decoder1|y~0_combout\,
	datad => \inst2|decoder1|x[5]~1_combout\,
	combout => \inst2|decoder1|color~0_combout\);

-- Location: LCFF_X24_Y23_N1
\inst2|decoder1|color[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|decoder1|x~6_combout\,
	sclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \inst2|decoder1|color~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|color\(5));

-- Location: LCCOMB_X24_Y23_N0
\inst2|draw1|line1|ramdata[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|ramdata[5]~6_combout\ = (\inst2|decoder1|color\(5)) # (!\inst2|vgacontroller1|ramaddr[15]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|vgacontroller1|ramaddr[15]~2_combout\,
	datac => \inst2|decoder1|color\(5),
	combout => \inst2|draw1|line1|ramdata[5]~6_combout\);

-- Location: LCFF_X23_Y20_N5
\inst2|decoder1|color[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|x~7_combout\,
	sclr => \ALT_INV_reset~combout\,
	ena => \inst2|decoder1|color~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|color\(4));

-- Location: LCCOMB_X24_Y23_N20
\inst2|draw1|line1|ramdata[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|ramdata[4]~7_combout\ = (\inst2|decoder1|color\(4)) # (!\inst2|vgacontroller1|ramaddr[15]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|vgacontroller1|ramaddr[15]~2_combout\,
	datad => \inst2|decoder1|color\(4),
	combout => \inst2|draw1|line1|ramdata[4]~7_combout\);

-- Location: LCFF_X23_Y20_N11
\inst2|decoder1|color[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|x~4_combout\,
	sclr => \ALT_INV_reset~combout\,
	ena => \inst2|decoder1|color~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|color\(3));

-- Location: LCCOMB_X24_Y23_N28
\inst2|draw1|line1|ramdata[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|ramdata[3]~8_combout\ = (\inst2|decoder1|color\(3)) # (!\inst2|vgacontroller1|ramaddr[15]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|vgacontroller1|ramaddr[15]~2_combout\,
	datad => \inst2|decoder1|color\(3),
	combout => \inst2|draw1|line1|ramdata[3]~8_combout\);

-- Location: LCFF_X24_Y23_N9
\inst2|decoder1|color[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	sdata => \inst2|decoder1|x~5_combout\,
	sclr => \ALT_INV_reset~combout\,
	sload => VCC,
	ena => \inst2|decoder1|color~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|color\(2));

-- Location: LCCOMB_X24_Y23_N8
\inst2|draw1|line1|ramdata[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|ramdata[2]~9_combout\ = (\inst2|decoder1|color\(2)) # (!\inst2|vgacontroller1|ramaddr[15]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|vgacontroller1|ramaddr[15]~2_combout\,
	datac => \inst2|decoder1|color\(2),
	combout => \inst2|draw1|line1|ramdata[2]~9_combout\);

-- Location: LCFF_X23_Y20_N13
\inst2|decoder1|color[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|x~0_combout\,
	sclr => \ALT_INV_reset~combout\,
	ena => \inst2|decoder1|color~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|color\(1));

-- Location: LCCOMB_X24_Y23_N16
\inst2|draw1|line1|ramdata[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|ramdata[1]~10_combout\ = (\inst2|decoder1|color\(1)) # (!\inst2|vgacontroller1|ramaddr[15]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|vgacontroller1|ramaddr[15]~2_combout\,
	datad => \inst2|decoder1|color\(1),
	combout => \inst2|draw1|line1|ramdata[1]~10_combout\);

-- Location: LCFF_X23_Y20_N19
\inst2|decoder1|color[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|x~3_combout\,
	sclr => \ALT_INV_reset~combout\,
	ena => \inst2|decoder1|color~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|color\(0));

-- Location: LCCOMB_X24_Y23_N4
\inst2|draw1|line1|ramdata[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|draw1|line1|ramdata[0]~11_combout\ = (\inst2|decoder1|color\(0)) # (!\inst2|vgacontroller1|ramaddr[15]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|vgacontroller1|ramaddr[15]~2_combout\,
	datad => \inst2|decoder1|color\(0),
	combout => \inst2|draw1|line1|ramdata[0]~11_combout\);

-- Location: LCCOMB_X21_Y19_N28
\inst2|vgacontroller1|vgahsync~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|vgahsync~1_combout\ = (\inst2|vgacontroller1|h_count\(3) & (((\inst2|vgacontroller1|h_count\(0)) # (\inst2|vgacontroller1|h_count\(1))) # (!\inst2|vgacontroller1|h_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|h_count\(3),
	datab => \inst2|vgacontroller1|h_count\(2),
	datac => \inst2|vgacontroller1|h_count\(0),
	datad => \inst2|vgacontroller1|h_count\(1),
	combout => \inst2|vgacontroller1|vgahsync~1_combout\);

-- Location: LCCOMB_X22_Y19_N24
\inst2|vgacontroller1|vgahsync~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|vgahsync~0_combout\ = (\inst2|vgacontroller1|h_count\(5) & (\inst2|vgacontroller1|h_count\(7) & (\reset~combout\ & !\inst2|vgacontroller1|h_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|h_count\(5),
	datab => \inst2|vgacontroller1|h_count\(7),
	datac => \reset~combout\,
	datad => \inst2|vgacontroller1|h_count\(6),
	combout => \inst2|vgacontroller1|vgahsync~0_combout\);

-- Location: LCCOMB_X21_Y19_N22
\inst2|vgacontroller1|vgahsync~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|vgacontroller1|vgahsync~2_combout\ = ((\inst2|vgacontroller1|h_count\(4) & (\inst2|vgacontroller1|vgahsync~1_combout\ & \inst2|vgacontroller1|h_count\(2))) # (!\inst2|vgacontroller1|h_count\(4) & (!\inst2|vgacontroller1|vgahsync~1_combout\ & 
-- !\inst2|vgacontroller1|h_count\(2)))) # (!\inst2|vgacontroller1|vgahsync~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|h_count\(4),
	datab => \inst2|vgacontroller1|vgahsync~1_combout\,
	datac => \inst2|vgacontroller1|h_count\(2),
	datad => \inst2|vgacontroller1|vgahsync~0_combout\,
	combout => \inst2|vgacontroller1|vgahsync~2_combout\);

-- Location: LCCOMB_X24_Y23_N12
\inst1|count[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|count[0]~2_combout\ = !\inst1|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|count\(0),
	combout => \inst1|count[0]~2_combout\);

-- Location: LCFF_X24_Y23_N13
\inst1|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50mhz~clkctrl_outclk\,
	datain => \inst1|count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|count\(0));

-- Location: LCCOMB_X24_Y23_N26
\inst1|count[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|count[1]~1_combout\ = \inst1|count\(1) $ (\inst1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|count\(1),
	datad => \inst1|count\(0),
	combout => \inst1|count[1]~1_combout\);

-- Location: LCFF_X24_Y23_N27
\inst1|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50mhz~clkctrl_outclk\,
	datain => \inst1|count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|count\(1));

-- Location: LCCOMB_X24_Y23_N30
\inst1|count[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|count[2]~0_combout\ = \inst1|count\(2) $ (((\inst1|count\(1) & \inst1|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(1),
	datac => \inst1|count\(2),
	datad => \inst1|count\(0),
	combout => \inst1|count[2]~0_combout\);

-- Location: LCFF_X24_Y23_N31
\inst1|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50mhz~clkctrl_outclk\,
	datain => \inst1|count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|count\(2));

-- Location: LCCOMB_X24_Y23_N10
\inst2|ramcontroller1|write_enable~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ramcontroller1|write_enable~0_combout\ = (\inst1|count\(2) & !\inst2|decoder1|decoder_claim~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(2),
	datac => \inst2|decoder1|decoder_claim~regout\,
	combout => \inst2|ramcontroller1|write_enable~0_combout\);

-- Location: LCCOMB_X24_Y23_N22
\inst2|ramcontroller1|write_enable~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ramcontroller1|write_enable~1_combout\ = (\inst2|ramcontroller1|write_enable~0_combout\ & (\inst2|vgacontroller1|ramaddr[15]~2_combout\ & ((!\reset~combout\) # (!\inst2|vgacontroller1|vga_combi~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ramcontroller1|write_enable~0_combout\,
	datab => \inst2|vgacontroller1|ramaddr[15]~2_combout\,
	datac => \inst2|vgacontroller1|vga_combi~1_combout\,
	datad => \reset~combout\,
	combout => \inst2|ramcontroller1|write_enable~1_combout\);

-- Location: LCCOMB_X19_Y20_N28
\inst2|decoder1|next_int_ready~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|next_int_ready~7_combout\ = (\inst2|decoder1|decode_comb~0_combout\ & (\inst2|decoder1|next_int_ready~6_combout\)) # (!\inst2|decoder1|decode_comb~0_combout\ & (((\inst2|decoder1|int_ready~regout\) # (!\inst2|decoder1|en~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|next_int_ready~6_combout\,
	datab => \inst2|decoder1|decode_comb~0_combout\,
	datac => \inst2|decoder1|int_ready~regout\,
	datad => \inst2|decoder1|en~3_combout\,
	combout => \inst2|decoder1|next_int_ready~7_combout\);

-- Location: LCFF_X19_Y20_N29
\inst2|decoder1|int_ready\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|next_int_ready~7_combout\,
	sclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|int_ready~regout\);

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_in~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_in,
	combout => \debug_in~combout\);

-- Location: LCCOMB_X49_Y13_N16
inst6 : cycloneii_lcell_comb
-- Equation(s):
-- \inst6~combout\ = (\inst2|decoder1|int_ready~regout\) # (!\debug_in~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|int_ready~regout\,
	datad => \debug_in~combout\,
	combout => \inst6~combout\);

-- Location: LCCOMB_X5_Y20_N22
\inst2|decoder1|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|Add1~22_combout\ = (\inst2|decoder1|timeout_count\(11) & (!\inst2|decoder1|Add1~21\)) # (!\inst2|decoder1|timeout_count\(11) & ((\inst2|decoder1|Add1~21\) # (GND)))
-- \inst2|decoder1|Add1~23\ = CARRY((!\inst2|decoder1|Add1~21\) # (!\inst2|decoder1|timeout_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|timeout_count\(11),
	datad => VCC,
	cin => \inst2|decoder1|Add1~21\,
	combout => \inst2|decoder1|Add1~22_combout\,
	cout => \inst2|decoder1|Add1~23\);

-- Location: LCFF_X5_Y20_N23
\inst2|decoder1|timeout_count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|Add1~22_combout\,
	sclr => \inst2|decoder1|timeout_count[13]~1_combout\,
	ena => \inst2|decoder1|timeout_count[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|timeout_count\(11));

-- Location: LCCOMB_X5_Y20_N24
\inst2|decoder1|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|Add1~24_combout\ = (\inst2|decoder1|timeout_count\(12) & (\inst2|decoder1|Add1~23\ $ (GND))) # (!\inst2|decoder1|timeout_count\(12) & (!\inst2|decoder1|Add1~23\ & VCC))
-- \inst2|decoder1|Add1~25\ = CARRY((\inst2|decoder1|timeout_count\(12) & !\inst2|decoder1|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|timeout_count\(12),
	datad => VCC,
	cin => \inst2|decoder1|Add1~23\,
	combout => \inst2|decoder1|Add1~24_combout\,
	cout => \inst2|decoder1|Add1~25\);

-- Location: LCCOMB_X5_Y20_N26
\inst2|decoder1|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|decoder1|Add1~26_combout\ = \inst2|decoder1|Add1~25\ $ (\inst2|decoder1|timeout_count\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|decoder1|timeout_count\(13),
	cin => \inst2|decoder1|Add1~25\,
	combout => \inst2|decoder1|Add1~26_combout\);

-- Location: LCFF_X5_Y20_N27
\inst2|decoder1|timeout_count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|Add1~26_combout\,
	sclr => \inst2|decoder1|timeout_count[13]~1_combout\,
	ena => \inst2|decoder1|timeout_count[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|timeout_count\(13));

-- Location: LCFF_X5_Y20_N25
\inst2|decoder1|timeout_count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|Add1~24_combout\,
	sclr => \inst2|decoder1|timeout_count[13]~1_combout\,
	ena => \inst2|decoder1|timeout_count[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|timeout_count\(12));

-- Location: LCCOMB_X4_Y20_N20
\inst4|hex3[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|hex3[6]~0_combout\ = (\inst2|decoder1|timeout_count\(10) & ((\inst2|decoder1|timeout_count\(13)) # (\inst2|decoder1|timeout_count\(11) $ (\inst2|decoder1|timeout_count\(12))))) # (!\inst2|decoder1|timeout_count\(10) & 
-- ((\inst2|decoder1|timeout_count\(11)) # (\inst2|decoder1|timeout_count\(13) $ (\inst2|decoder1|timeout_count\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|timeout_count\(11),
	datab => \inst2|decoder1|timeout_count\(10),
	datac => \inst2|decoder1|timeout_count\(13),
	datad => \inst2|decoder1|timeout_count\(12),
	combout => \inst4|hex3[6]~0_combout\);

-- Location: LCCOMB_X4_Y20_N18
\inst4|hex3[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|hex3[5]~1_combout\ = (\inst2|decoder1|timeout_count\(11) & ((\inst2|decoder1|timeout_count\(13)) # ((!\inst2|decoder1|timeout_count\(10) & \inst2|decoder1|timeout_count\(12))))) # (!\inst2|decoder1|timeout_count\(11) & 
-- ((\inst2|decoder1|timeout_count\(13) $ (\inst2|decoder1|timeout_count\(12))) # (!\inst2|decoder1|timeout_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|timeout_count\(11),
	datab => \inst2|decoder1|timeout_count\(10),
	datac => \inst2|decoder1|timeout_count\(13),
	datad => \inst2|decoder1|timeout_count\(12),
	combout => \inst4|hex3[5]~1_combout\);

-- Location: LCCOMB_X4_Y20_N16
\inst4|hex3[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|hex3[4]~2_combout\ = (\inst2|decoder1|timeout_count\(11) & (((\inst2|decoder1|timeout_count\(13))) # (!\inst2|decoder1|timeout_count\(10)))) # (!\inst2|decoder1|timeout_count\(11) & ((\inst2|decoder1|timeout_count\(12) & 
-- ((\inst2|decoder1|timeout_count\(13)))) # (!\inst2|decoder1|timeout_count\(12) & (!\inst2|decoder1|timeout_count\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|timeout_count\(11),
	datab => \inst2|decoder1|timeout_count\(10),
	datac => \inst2|decoder1|timeout_count\(13),
	datad => \inst2|decoder1|timeout_count\(12),
	combout => \inst4|hex3[4]~2_combout\);

-- Location: LCCOMB_X4_Y20_N26
\inst4|hex3[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|hex3[3]~3_combout\ = (\inst2|decoder1|timeout_count\(11) & ((\inst2|decoder1|timeout_count\(10) & ((\inst2|decoder1|timeout_count\(12)))) # (!\inst2|decoder1|timeout_count\(10) & (\inst2|decoder1|timeout_count\(13) & 
-- !\inst2|decoder1|timeout_count\(12))))) # (!\inst2|decoder1|timeout_count\(11) & (!\inst2|decoder1|timeout_count\(13) & (\inst2|decoder1|timeout_count\(10) $ (\inst2|decoder1|timeout_count\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|timeout_count\(11),
	datab => \inst2|decoder1|timeout_count\(10),
	datac => \inst2|decoder1|timeout_count\(13),
	datad => \inst2|decoder1|timeout_count\(12),
	combout => \inst4|hex3[3]~3_combout\);

-- Location: LCCOMB_X4_Y20_N28
\inst4|hex3[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|hex3[2]~4_combout\ = (\inst2|decoder1|timeout_count\(13) & (((!\inst2|decoder1|timeout_count\(11) & \inst2|decoder1|timeout_count\(10))) # (!\inst2|decoder1|timeout_count\(12)))) # (!\inst2|decoder1|timeout_count\(13) & 
-- (((\inst2|decoder1|timeout_count\(10)) # (\inst2|decoder1|timeout_count\(12))) # (!\inst2|decoder1|timeout_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|timeout_count\(11),
	datab => \inst2|decoder1|timeout_count\(10),
	datac => \inst2|decoder1|timeout_count\(13),
	datad => \inst2|decoder1|timeout_count\(12),
	combout => \inst4|hex3[2]~4_combout\);

-- Location: LCCOMB_X4_Y20_N30
\inst4|hex3[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|hex3[1]~5_combout\ = (\inst2|decoder1|timeout_count\(11) & ((\inst2|decoder1|timeout_count\(10) & (!\inst2|decoder1|timeout_count\(13))) # (!\inst2|decoder1|timeout_count\(10) & ((!\inst2|decoder1|timeout_count\(12)))))) # 
-- (!\inst2|decoder1|timeout_count\(11) & ((\inst2|decoder1|timeout_count\(10) $ (!\inst2|decoder1|timeout_count\(13))) # (!\inst2|decoder1|timeout_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|timeout_count\(11),
	datab => \inst2|decoder1|timeout_count\(10),
	datac => \inst2|decoder1|timeout_count\(13),
	datad => \inst2|decoder1|timeout_count\(12),
	combout => \inst4|hex3[1]~5_combout\);

-- Location: LCCOMB_X4_Y20_N8
\inst4|hex3[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|hex3[0]~6_combout\ = (\inst2|decoder1|timeout_count\(13) & ((\inst2|decoder1|timeout_count\(11) $ (!\inst2|decoder1|timeout_count\(12))) # (!\inst2|decoder1|timeout_count\(10)))) # (!\inst2|decoder1|timeout_count\(13) & 
-- ((\inst2|decoder1|timeout_count\(11)) # (\inst2|decoder1|timeout_count\(10) $ (!\inst2|decoder1|timeout_count\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|timeout_count\(11),
	datab => \inst2|decoder1|timeout_count\(10),
	datac => \inst2|decoder1|timeout_count\(13),
	datad => \inst2|decoder1|timeout_count\(12),
	combout => \inst4|hex3[0]~6_combout\);

-- Location: LCFF_X5_Y20_N17
\inst2|decoder1|timeout_count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|count[2]~clkctrl_outclk\,
	datain => \inst2|decoder1|Add1~16_combout\,
	sclr => \inst2|decoder1|timeout_count[13]~1_combout\,
	ena => \inst2|decoder1|timeout_count[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|decoder1|timeout_count\(8));

-- Location: LCCOMB_X4_Y20_N22
\inst4|hex2[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|hex2[6]~0_combout\ = (\inst2|decoder1|timeout_count\(6) & ((\inst2|decoder1|timeout_count\(9)) # (\inst2|decoder1|timeout_count\(8) $ (\inst2|decoder1|timeout_count\(7))))) # (!\inst2|decoder1|timeout_count\(6) & 
-- ((\inst2|decoder1|timeout_count\(7)) # (\inst2|decoder1|timeout_count\(8) $ (\inst2|decoder1|timeout_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|timeout_count\(8),
	datab => \inst2|decoder1|timeout_count\(7),
	datac => \inst2|decoder1|timeout_count\(6),
	datad => \inst2|decoder1|timeout_count\(9),
	combout => \inst4|hex2[6]~0_combout\);

-- Location: LCCOMB_X4_Y20_N12
\inst4|hex2[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|hex2[5]~1_combout\ = (\inst2|decoder1|timeout_count\(8) & ((\inst2|decoder1|timeout_count\(7) $ (!\inst2|decoder1|timeout_count\(9))) # (!\inst2|decoder1|timeout_count\(6)))) # (!\inst2|decoder1|timeout_count\(8) & 
-- ((\inst2|decoder1|timeout_count\(9)) # ((!\inst2|decoder1|timeout_count\(7) & !\inst2|decoder1|timeout_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|timeout_count\(8),
	datab => \inst2|decoder1|timeout_count\(7),
	datac => \inst2|decoder1|timeout_count\(6),
	datad => \inst2|decoder1|timeout_count\(9),
	combout => \inst4|hex2[5]~1_combout\);

-- Location: LCCOMB_X4_Y20_N10
\inst4|hex2[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|hex2[4]~2_combout\ = (\inst2|decoder1|timeout_count\(7) & (((\inst2|decoder1|timeout_count\(9)) # (!\inst2|decoder1|timeout_count\(6))))) # (!\inst2|decoder1|timeout_count\(7) & ((\inst2|decoder1|timeout_count\(8) & 
-- ((\inst2|decoder1|timeout_count\(9)))) # (!\inst2|decoder1|timeout_count\(8) & (!\inst2|decoder1|timeout_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|timeout_count\(8),
	datab => \inst2|decoder1|timeout_count\(7),
	datac => \inst2|decoder1|timeout_count\(6),
	datad => \inst2|decoder1|timeout_count\(9),
	combout => \inst4|hex2[4]~2_combout\);

-- Location: LCCOMB_X4_Y20_N4
\inst4|hex2[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|hex2[3]~3_combout\ = (\inst2|decoder1|timeout_count\(7) & ((\inst2|decoder1|timeout_count\(8) & (\inst2|decoder1|timeout_count\(6))) # (!\inst2|decoder1|timeout_count\(8) & (!\inst2|decoder1|timeout_count\(6) & \inst2|decoder1|timeout_count\(9))))) 
-- # (!\inst2|decoder1|timeout_count\(7) & (!\inst2|decoder1|timeout_count\(9) & (\inst2|decoder1|timeout_count\(8) $ (\inst2|decoder1|timeout_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|timeout_count\(8),
	datab => \inst2|decoder1|timeout_count\(7),
	datac => \inst2|decoder1|timeout_count\(6),
	datad => \inst2|decoder1|timeout_count\(9),
	combout => \inst4|hex2[3]~3_combout\);

-- Location: LCCOMB_X4_Y20_N2
\inst4|hex2[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|hex2[2]~4_combout\ = (\inst2|decoder1|timeout_count\(8) & (((!\inst2|decoder1|timeout_count\(7) & \inst2|decoder1|timeout_count\(6))) # (!\inst2|decoder1|timeout_count\(9)))) # (!\inst2|decoder1|timeout_count\(8) & 
-- (((\inst2|decoder1|timeout_count\(6)) # (\inst2|decoder1|timeout_count\(9))) # (!\inst2|decoder1|timeout_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|timeout_count\(8),
	datab => \inst2|decoder1|timeout_count\(7),
	datac => \inst2|decoder1|timeout_count\(6),
	datad => \inst2|decoder1|timeout_count\(9),
	combout => \inst4|hex2[2]~4_combout\);

-- Location: LCCOMB_X4_Y20_N24
\inst4|hex2[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|hex2[1]~5_combout\ = (\inst2|decoder1|timeout_count\(7) & ((\inst2|decoder1|timeout_count\(6) & ((!\inst2|decoder1|timeout_count\(9)))) # (!\inst2|decoder1|timeout_count\(6) & (!\inst2|decoder1|timeout_count\(8))))) # 
-- (!\inst2|decoder1|timeout_count\(7) & ((\inst2|decoder1|timeout_count\(6) $ (!\inst2|decoder1|timeout_count\(9))) # (!\inst2|decoder1|timeout_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|timeout_count\(8),
	datab => \inst2|decoder1|timeout_count\(7),
	datac => \inst2|decoder1|timeout_count\(6),
	datad => \inst2|decoder1|timeout_count\(9),
	combout => \inst4|hex2[1]~5_combout\);

-- Location: LCCOMB_X4_Y20_N6
\inst4|hex2[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|hex2[0]~6_combout\ = (\inst2|decoder1|timeout_count\(8) & ((\inst2|decoder1|timeout_count\(7)) # (\inst2|decoder1|timeout_count\(6) $ (\inst2|decoder1|timeout_count\(9))))) # (!\inst2|decoder1|timeout_count\(8) & ((\inst2|decoder1|timeout_count\(7) 
-- $ (\inst2|decoder1|timeout_count\(9))) # (!\inst2|decoder1|timeout_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|timeout_count\(8),
	datab => \inst2|decoder1|timeout_count\(7),
	datac => \inst2|decoder1|timeout_count\(6),
	datad => \inst2|decoder1|timeout_count\(9),
	combout => \inst4|hex2[0]~6_combout\);

-- Location: LCCOMB_X19_Y21_N0
\inst4|hex1[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|hex1[6]~0_combout\ = (\inst2|decoder1|current_instruction\(1) & ((!\inst2|decoder1|current_instruction\(2)) # (!\inst2|decoder1|current_instruction\(0)))) # (!\inst2|decoder1|current_instruction\(1) & ((\inst2|decoder1|current_instruction\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|current_instruction\(1),
	datac => \inst2|decoder1|current_instruction\(0),
	datad => \inst2|decoder1|current_instruction\(2),
	combout => \inst4|hex1[6]~0_combout\);

-- Location: LCCOMB_X19_Y21_N2
\inst4|hex1[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|hex1[5]~1_combout\ = (\inst2|decoder1|current_instruction\(1) & (!\inst2|decoder1|current_instruction\(0) & \inst2|decoder1|current_instruction\(2))) # (!\inst2|decoder1|current_instruction\(1) & ((\inst2|decoder1|current_instruction\(2)) # 
-- (!\inst2|decoder1|current_instruction\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|current_instruction\(1),
	datac => \inst2|decoder1|current_instruction\(0),
	datad => \inst2|decoder1|current_instruction\(2),
	combout => \inst4|hex1[5]~1_combout\);

-- Location: LCCOMB_X19_Y21_N4
\inst4|hex1[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|hex1[4]~2_combout\ = (\inst2|decoder1|current_instruction\(0)) # ((!\inst2|decoder1|current_instruction\(1) & \inst2|decoder1|current_instruction\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|current_instruction\(1),
	datac => \inst2|decoder1|current_instruction\(0),
	datad => \inst2|decoder1|current_instruction\(2),
	combout => \inst4|hex1[4]~2_combout\);

-- Location: LCCOMB_X19_Y21_N10
\inst4|hex1[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|hex1[3]~3_combout\ = (\inst2|decoder1|current_instruction\(1) & (\inst2|decoder1|current_instruction\(0) & \inst2|decoder1|current_instruction\(2))) # (!\inst2|decoder1|current_instruction\(1) & (\inst2|decoder1|current_instruction\(0) $ 
-- (\inst2|decoder1|current_instruction\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|current_instruction\(1),
	datac => \inst2|decoder1|current_instruction\(0),
	datad => \inst2|decoder1|current_instruction\(2),
	combout => \inst4|hex1[3]~3_combout\);

-- Location: LCCOMB_X19_Y21_N12
\inst4|hex1[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|hex1[1]~5_combout\ = (\inst2|decoder1|current_instruction\(1) $ (!\inst2|decoder1|current_instruction\(0))) # (!\inst2|decoder1|current_instruction\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|current_instruction\(1),
	datac => \inst2|decoder1|current_instruction\(0),
	datad => \inst2|decoder1|current_instruction\(2),
	combout => \inst4|hex1[1]~5_combout\);

-- Location: LCCOMB_X19_Y20_N26
\inst4|hex1[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|hex1[0]~6_combout\ = (\inst2|decoder1|current_instruction\(1)) # (\inst2|decoder1|current_instruction\(0) $ (!\inst2|decoder1|current_instruction\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|current_instruction\(1),
	datac => \inst2|decoder1|current_instruction\(0),
	datad => \inst2|decoder1|current_instruction\(2),
	combout => \inst4|hex1[0]~6_combout\);

-- Location: LCCOMB_X1_Y20_N12
\inst4|hex0[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|hex0[5]~0_combout\ = (\inst2|decoder1|packet_num\(2) & ((!\inst2|decoder1|packet_num\(1)) # (!\inst2|decoder1|packet_num\(0)))) # (!\inst2|decoder1|packet_num\(2) & ((\inst2|decoder1|packet_num\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|packet_num\(2),
	datac => \inst2|decoder1|packet_num\(0),
	datad => \inst2|decoder1|packet_num\(1),
	combout => \inst4|hex0[5]~0_combout\);

-- Location: LCCOMB_X1_Y20_N22
\inst4|hex0[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|hex0[5]~1_combout\ = (\inst2|decoder1|packet_num\(2) & (\inst2|decoder1|packet_num\(0) & \inst2|decoder1|packet_num\(1))) # (!\inst2|decoder1|packet_num\(2) & ((\inst2|decoder1|packet_num\(0)) # (\inst2|decoder1|packet_num\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|packet_num\(2),
	datac => \inst2|decoder1|packet_num\(0),
	datad => \inst2|decoder1|packet_num\(1),
	combout => \inst4|hex0[5]~1_combout\);

-- Location: LCCOMB_X1_Y20_N0
\inst4|hex0[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|hex0[4]~2_combout\ = (!\inst2|decoder1|packet_num\(0) & ((\inst2|decoder1|packet_num\(1)) # (!\inst2|decoder1|packet_num\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|packet_num\(2),
	datac => \inst2|decoder1|packet_num\(0),
	datad => \inst2|decoder1|packet_num\(1),
	combout => \inst4|hex0[4]~2_combout\);

-- Location: LCCOMB_X1_Y20_N10
\inst4|hex0[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|hex0[3]~3_combout\ = (\inst2|decoder1|packet_num\(2) & (\inst2|decoder1|packet_num\(0) $ (\inst2|decoder1|packet_num\(1)))) # (!\inst2|decoder1|packet_num\(2) & ((\inst2|decoder1|packet_num\(1)) # (!\inst2|decoder1|packet_num\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|packet_num\(2),
	datac => \inst2|decoder1|packet_num\(0),
	datad => \inst2|decoder1|packet_num\(1),
	combout => \inst4|hex0[3]~3_combout\);

-- Location: LCCOMB_X1_Y20_N28
\inst4|hex0[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|hex0[1]~4_combout\ = (\inst2|decoder1|packet_num\(0) $ (!\inst2|decoder1|packet_num\(1))) # (!\inst2|decoder1|packet_num\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|packet_num\(2),
	datac => \inst2|decoder1|packet_num\(0),
	datad => \inst2|decoder1|packet_num\(1),
	combout => \inst4|hex0[1]~4_combout\);

-- Location: LCCOMB_X1_Y20_N26
\inst4|hex0[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|hex0[0]~5_combout\ = (\inst2|decoder1|packet_num\(1)) # (\inst2|decoder1|packet_num\(2) $ (!\inst2|decoder1|packet_num\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|decoder1|packet_num\(2),
	datac => \inst2|decoder1|packet_num\(0),
	datad => \inst2|decoder1|packet_num\(1),
	combout => \inst4|hex0[0]~5_combout\);

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\VGACOLOR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_VGACOLOR(0),
	combout => \VGACOLOR~combout\(0));

-- Location: LCCOMB_X21_Y20_N10
\inst|vga_b[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vga_b[3]~0_combout\ = (!\inst2|decoder1|decoder_claim~regout\ & (\reset~combout\ & (\VGACOLOR~combout\(0) & \inst2|vgacontroller1|vga_combi~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|decoder_claim~regout\,
	datab => \reset~combout\,
	datac => \VGACOLOR~combout\(0),
	datad => \inst2|vgacontroller1|vga_combi~5_combout\,
	combout => \inst|vga_b[3]~0_combout\);

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\VGACOLOR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_VGACOLOR(1),
	combout => \VGACOLOR~combout\(1));

-- Location: LCCOMB_X21_Y20_N4
\inst|vga_b[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vga_b[1]~1_combout\ = (!\inst2|decoder1|decoder_claim~regout\ & (\VGACOLOR~combout\(1) & (\reset~combout\ & \inst2|vgacontroller1|vga_combi~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|decoder_claim~regout\,
	datab => \VGACOLOR~combout\(1),
	datac => \reset~combout\,
	datad => \inst2|vgacontroller1|vga_combi~5_combout\,
	combout => \inst|vga_b[1]~1_combout\);

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\VGACOLOR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_VGACOLOR(2),
	combout => \VGACOLOR~combout\(2));

-- Location: LCCOMB_X21_Y20_N18
\inst|vga_g[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vga_g[3]~0_combout\ = (!\inst2|decoder1|decoder_claim~regout\ & (\VGACOLOR~combout\(2) & (\reset~combout\ & \inst2|vgacontroller1|vga_combi~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|decoder_claim~regout\,
	datab => \VGACOLOR~combout\(2),
	datac => \reset~combout\,
	datad => \inst2|vgacontroller1|vga_combi~5_combout\,
	combout => \inst|vga_g[3]~0_combout\);

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\VGACOLOR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_VGACOLOR(3),
	combout => \VGACOLOR~combout\(3));

-- Location: LCCOMB_X21_Y20_N0
\inst|vga_g[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vga_g[1]~1_combout\ = (\inst2|vgacontroller1|vga_combi~5_combout\ & (\reset~combout\ & (\VGACOLOR~combout\(3) & !\inst2|decoder1|decoder_claim~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|vgacontroller1|vga_combi~5_combout\,
	datab => \reset~combout\,
	datac => \VGACOLOR~combout\(3),
	datad => \inst2|decoder1|decoder_claim~regout\,
	combout => \inst|vga_g[1]~1_combout\);

-- Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\VGACOLOR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_VGACOLOR(4),
	combout => \VGACOLOR~combout\(4));

-- Location: LCCOMB_X21_Y20_N2
\inst|vga_r[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vga_r[3]~0_combout\ = (!\inst2|decoder1|decoder_claim~regout\ & (\VGACOLOR~combout\(4) & (\reset~combout\ & \inst2|vgacontroller1|vga_combi~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|decoder_claim~regout\,
	datab => \VGACOLOR~combout\(4),
	datac => \reset~combout\,
	datad => \inst2|vgacontroller1|vga_combi~5_combout\,
	combout => \inst|vga_r[3]~0_combout\);

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\VGACOLOR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_VGACOLOR(5),
	combout => \VGACOLOR~combout\(5));

-- Location: LCCOMB_X21_Y20_N20
\inst|vga_r[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vga_r[1]~1_combout\ = (!\inst2|decoder1|decoder_claim~regout\ & (\VGACOLOR~combout\(5) & (\reset~combout\ & \inst2|vgacontroller1|vga_combi~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|decoder1|decoder_claim~regout\,
	datab => \VGACOLOR~combout\(5),
	datac => \reset~combout\,
	datad => \inst2|vgacontroller1|vga_combi~5_combout\,
	combout => \inst|vga_r[1]~1_combout\);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RAMADDR[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|vgacontroller1|ramaddr[15]~20_combout\,
	oe => \inst2|vgacontroller1|ramaddr[15]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_RAMADDR(15));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RAMADDR[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|vgacontroller1|ramaddr[14]~22_combout\,
	oe => \inst2|vgacontroller1|ramaddr[15]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_RAMADDR(14));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RAMADDR[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|vgacontroller1|ramaddr[13]~24_combout\,
	oe => \inst2|vgacontroller1|ramaddr[15]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_RAMADDR(13));

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RAMADDR[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|vgacontroller1|ramaddr[12]~26_combout\,
	oe => \inst2|vgacontroller1|ramaddr[15]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_RAMADDR(12));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RAMADDR[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|vgacontroller1|ramaddr[11]~28_combout\,
	oe => \inst2|vgacontroller1|ramaddr[15]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_RAMADDR(11));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RAMADDR[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|vgacontroller1|ramaddr[10]~30_combout\,
	oe => \inst2|vgacontroller1|ramaddr[15]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_RAMADDR(10));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RAMADDR[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|vgacontroller1|ramaddr[9]~32_combout\,
	oe => \inst2|vgacontroller1|ramaddr[15]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_RAMADDR(9));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RAMADDR[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|vgacontroller1|ramaddr[8]~34_combout\,
	oe => \inst2|vgacontroller1|ramaddr[15]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_RAMADDR(8));

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RAMADDR[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|vgacontroller1|ramaddr[7]~36_combout\,
	oe => \inst2|vgacontroller1|ramaddr[15]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_RAMADDR(7));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RAMADDR[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|vgacontroller1|ramaddr[6]~38_combout\,
	oe => \inst2|vgacontroller1|ramaddr[15]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_RAMADDR(6));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RAMADDR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|vgacontroller1|ramaddr[5]~40_combout\,
	oe => \inst2|vgacontroller1|ramaddr[15]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_RAMADDR(5));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RAMADDR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|vgacontroller1|ramaddr[4]~42_combout\,
	oe => \inst2|vgacontroller1|ramaddr[15]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_RAMADDR(4));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RAMADDR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|vgacontroller1|ramaddr[3]~44_combout\,
	oe => \inst2|vgacontroller1|ramaddr[15]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_RAMADDR(3));

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RAMADDR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|vgacontroller1|ramaddr[2]~46_combout\,
	oe => \inst2|vgacontroller1|ramaddr[15]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_RAMADDR(2));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RAMADDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|vgacontroller1|ramaddr[1]~48_combout\,
	oe => \inst2|vgacontroller1|ramaddr[15]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_RAMADDR(1));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RAMADDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|vgacontroller1|ramaddr[0]~50_combout\,
	oe => \inst2|vgacontroller1|ramaddr[15]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_RAMADDR(0));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RAMDATA[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|draw1|line1|ramdata[5]~6_combout\,
	oe => \inst2|vgacontroller1|ramaddr[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => RAMDATA(5));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RAMDATA[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|draw1|line1|ramdata[4]~7_combout\,
	oe => \inst2|vgacontroller1|ramaddr[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => RAMDATA(4));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RAMDATA[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|draw1|line1|ramdata[3]~8_combout\,
	oe => \inst2|vgacontroller1|ramaddr[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => RAMDATA(3));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RAMDATA[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|draw1|line1|ramdata[2]~9_combout\,
	oe => \inst2|vgacontroller1|ramaddr[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => RAMDATA(2));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RAMDATA[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|draw1|line1|ramdata[1]~10_combout\,
	oe => \inst2|vgacontroller1|ramaddr[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => RAMDATA(1));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RAMDATA[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|draw1|line1|ramdata[0]~11_combout\,
	oe => \inst2|vgacontroller1|ramaddr[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => RAMDATA(0));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vga_hsync~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|vgacontroller1|vgahsync~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vga_hsync);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vga_vsync~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|vgacontroller1|vgavsync~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vga_vsync);

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RAMWE~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|ramcontroller1|ALT_INV_write_enable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RAMWE);

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\int_ready~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_int_ready);

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|vgacontroller1|vgavsync~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug0);

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|vgacontroller1|vgahsync~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug1);

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|ramcontroller1|ALT_INV_write_enable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug2);

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug3);

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug4~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug4);

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug5~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SPICLK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug5);

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug6~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SPIMOSI~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug6);

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug7~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|decoder1|asb~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug7);

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug8[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|spi1|spi_rx_data\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug8(7));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug8[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|spi1|spi_rx_data\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug8(6));

-- Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug8[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|spi1|spi_rx_data\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug8(5));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug8[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|spi1|spi_rx_data\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug8(4));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug8[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|spi1|spi_rx_data\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug8(3));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug8[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|spi1|spi_rx_data\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug8(2));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug8[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|spi1|spi_rx_data\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug8(1));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug8[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|spi1|spi_rx_data\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug8(0));

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_hex3[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(27));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_hex3[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(26));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_hex3[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(25));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|hex3[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(24));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_hex3[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(23));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_hex3[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(22));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_hex3[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(21));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_hex2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(20));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_hex2[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(19));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_hex2[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(18));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|hex2[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(17));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_hex2[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(16));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_hex2[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(15));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_hex2[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(14));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_hex1[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(13));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_hex1[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(12));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|hex1[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(11));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|hex1[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(10));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_hex1[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(9));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_hex1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(8));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_hex1[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(7));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_hex0[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(6));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|hex0[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(5));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_hex0[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(4));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_hex0[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(3));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|Equal63~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(2));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_hex0[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(1));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst4|ALT_INV_hex0[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments(0));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vga_b[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|vga_b[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vga_b(3));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vga_b[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|vga_b[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vga_b(2));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vga_b[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|vga_b[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vga_b(1));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vga_b[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|vga_b[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vga_b(0));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vga_g[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|vga_g[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vga_g(3));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vga_g[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|vga_g[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vga_g(2));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vga_g[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|vga_g[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vga_g(1));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vga_g[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|vga_g[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vga_g(0));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vga_r[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|vga_r[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vga_r(3));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vga_r[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|vga_r[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vga_r(2));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vga_r[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|vga_r[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vga_r(1));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vga_r[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst|vga_r[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vga_r(0));
END structure;


