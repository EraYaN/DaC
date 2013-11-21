library ieee;
use ieee.std_logic_1164.all; 
USE work.parameter_def.all;
   
entity pre_vga_dac_4 is 
   port (
	VGACOLOR : in std_logic_vector(SizeColor-1 downto 0);
	vga_r :  out  std_logic_vector(3 downto 0);
	vga_g :  out  std_logic_vector(3 downto 0);
	vga_b :  out  std_logic_vector(3 downto 0)
   );
end pre_vga_dac_4;
   
architecture signal_flow of pre_vga_dac_4 is 
   
begin
    
   vga_r(0) <= VGACOLOR(0);
   vga_r(1) <= VGACOLOR(0);
   vga_r(2) <= VGACOLOR(3);
   vga_r(3) <= VGACOLOR(3);
   
   vga_g(0) <= VGACOLOR(0);
   vga_g(1) <= VGACOLOR(0);
   vga_g(2) <= VGACOLOR(2);
   vga_g(3) <= VGACOLOR(2);
   
   vga_b(0) <= VGACOLOR(0);
   vga_b(1) <= VGACOLOR(0);
   vga_b(2) <= VGACOLOR(1);
   vga_b(3) <= VGACOLOR(1);
   
end; 