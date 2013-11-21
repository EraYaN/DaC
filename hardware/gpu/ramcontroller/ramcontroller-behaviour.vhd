LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.parameter_def.ALL;
architecture behaviour of ramcontroller is
begin
	process (vga_claim,decoder_claim,is_init,decoder_write,draw_write,draw_read,vga_read)
	begin
	if(is_init='0') then
		draw_can_access <= NOT vga_claim AND NOT decoder_claim;	
		vga_can_access <= '1';
		decoder_can_access <= NOT vga_claim;
		if vga_claim = '1' then	
			write_enable <= '0';
		elsif decoder_claim = '1' then
			write_enable <= decoder_write;	
		else
			write_enable <= draw_write AND NOT draw_read;
		end if;		
	else
		write_enable <= decoder_write and decoder_claim;
		decoder_can_access <= '1';
		draw_can_access <= '0';
		vga_can_access <= '0';
	end if;
	end process;
end behaviour;


