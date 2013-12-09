library ieee;
use ieee.std_logic_1164.all; 
USE work.parameter_def.all;
   
entity pre_vga_dac_4 is 
   port (
	VGACOLOR : in std_logic_vector(SizeColor-1 downto 0);
	vga_r :  out  std_logic_vector(3 downto 0);
	vga_g :  out  std_logic_vector(3 downto 0);
	vga_b :  out  std_logic_vector(3 downto 0);
	color_on : in std_logic
   );
end pre_vga_dac_4;
   
architecture signal_flow of pre_vga_dac_4 is 
   
begin
process(color_on, VGACOLOR)
begin
   if(color_on='1') then
		vga_r(0) <= VGACOLOR(5);
		vga_r(1) <= VGACOLOR(5);
		vga_r(2) <= VGACOLOR(4);
		vga_r(3) <= VGACOLOR(4);
		
		vga_g(0) <= VGACOLOR(3);
		vga_g(1) <= VGACOLOR(3);
		vga_g(2) <= VGACOLOR(2);
		vga_g(3) <= VGACOLOR(2);
		
		vga_b(0) <= VGACOLOR(0);
		vga_b(1) <= VGACOLOR(0);
		vga_b(2) <= VGACOLOR(1);
		vga_b(3) <= VGACOLOR(1);

	else	
		vga_r(0) <= VGACOLOR(0) or VGACOLOR(1);
		vga_r(1) <= VGACOLOR(2);
		vga_r(2) <= VGACOLOR(3);
		vga_r(3) <= VGACOLOR(4) or VGACOLOR(5);
		
		vga_b(0) <= VGACOLOR(0) or VGACOLOR(1);
		vga_b(1) <= VGACOLOR(2);
		vga_b(2) <= VGACOLOR(3);
		vga_b(3) <= VGACOLOR(4) or VGACOLOR(5);
		
		vga_g(0) <= VGACOLOR(0) or VGACOLOR(1);
		vga_g(1) <= VGACOLOR(2);
		vga_g(2) <= VGACOLOR(3);
		vga_g(3) <= VGACOLOR(4) or VGACOLOR(5);
   end if;
end process;
end; 
