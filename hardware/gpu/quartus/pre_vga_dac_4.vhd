library ieee;
use ieee.std_logic_1164.all; 
USE work.parameter_def.all;
   
entity pre_vga_dac_4 is 
   port (
	VGACOLOR : in std_logic_vector(SizeColor-1 downto 0);
	vga_r :  out  std_logic_vector(3 downto 0);
	vga_g :  out  std_logic_vector(3 downto 0);
	vga_b :  out  std_logic_vector(3 downto 0);
	vga_enabled : in std_logic
   );
end pre_vga_dac_4;
   
architecture signal_flow of pre_vga_dac_4 is 
   signal VGACOLOR_N : std_logic_vector(SizeColor-1 downto 0);
begin
process(VGACOLOR,VGACOLOR_N,vga_enabled)
begin
		VGACOLOR_N <= not VGACOLOR;
		if vga_enabled = '1' then
			vga_r(0) <= not VGACOLOR_N(5);
			vga_r(1) <= not VGACOLOR_N(5);
			vga_r(2) <= not VGACOLOR_N(4);
			vga_r(3) <= not VGACOLOR_N(4);
			
			vga_g(0) <= not VGACOLOR_N(3);
			vga_g(1) <= not VGACOLOR_N(3);
			vga_g(2) <= not VGACOLOR_N(2);
			vga_g(3) <= not VGACOLOR_N(2);
			
			vga_b(0) <= not VGACOLOR_N(1);
			vga_b(1) <= not VGACOLOR_N(1);
			vga_b(2) <= not VGACOLOR_N(0);
			vga_b(3) <= not VGACOLOR_N(0);
		else	
			vga_r <= (others=>'0');
			vga_g <= (others=>'0');
			vga_b <= (others=>'0');
		end if;
end process;
end signal_flow;
