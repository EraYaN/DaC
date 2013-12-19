library IEEE;
use IEEE.std_logic_1164.ALL;
use work.parameter_def.ALL;

architecture behaviour of vgacontrol_tb is
component vgacontroller is
port(
clk: in std_logic;
reset_n: in std_logic;
vgahsync: out std_logic;
vgavsync: out std_logic;

vga_claim: out std_logic;

ramaddr: out std_logic_vector(SizeRAMAddr-1 downto 0);
vga_read: out std_logic;
vga_can_access: in std_logic;
asb: in std_logic);
end component;

signal clk: std_logic;
signal reset_n: std_logic;
signal vgahsync: std_logic;
signal vgavsync: std_logic;
signal vga_claim: std_logic;

signal ramaddr: std_logic_vector(SizeRAMAddr-1 downto 0);
signal vga_read: std_logic;
signal vga_can_access: std_logic;
signal asb: std_logic;

begin

clk <= '0' after 0 ns,
       '1' after 10 ns when clk /= '1' else '0' after 10 ns;

reset_n <= '0' after 0 ns,
	    '1' after 20 ns;



vga_can_access <= '0' after 0 ns,
		  '1' after 30 ns;

asb 	<= '1' after 0 ns;	
       

lbl1: vgacontroller port map(
clk => clk,
reset_n => reset_n,
vgahsync => vgahsync,
vgavsync => vgavsync,
vga_claim => vga_claim,
ramaddr => ramaddr,
vga_read => vga_read,
vga_can_access => vga_can_access,
asb => asb);


end behaviour;

















