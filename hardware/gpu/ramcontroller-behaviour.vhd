LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.parameter_def.ALL;
architecture behaviour of ramcontroller is
begin
	process (clk, vga_claim,decoder_claim,is_init,decoder_write,draw_write,draw_read,vga_read)
	begin
	if(is_init='0') then
		draw_can_access <= NOT vga_claim AND NOT decoder_claim;	
		vga_can_access <= '1';
		decoder_can_access <= NOT vga_claim;
		if vga_claim = '1' then	
			write_enable <= transport ('0' AND clk) after 2 ns;
		elsif decoder_claim = '1' then
			write_enable <= transport (decoder_write and clk) after 2 ns;	
		else
			write_enable <= transport (draw_write AND NOT draw_read AND clk) after 2 ns;
		end if;		
	else
		write_enable <= decoder_write and decoder_claim;
		decoder_can_access <= '1';
		draw_can_access <= '0';
		vga_can_access <= '0';
	end if;
	end process;
end behaviour;


