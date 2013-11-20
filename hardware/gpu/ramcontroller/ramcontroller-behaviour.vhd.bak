LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.parameter_def.ALL;
architecture behaviour of ramcontroller is
begin
	process (vga_read,draw_read,draw_write,data_draw,addr_vga,data,addr_draw)
	begin
		if(vga_read = '1') then
			addr <= addr_vga;
			data_vga <= data;
			data <= (others => '-');
			data_draw <= (others => '-');
			write_enable <= '0';
		else
			if(draw_read = '1') then
				addr <= addr_draw;
				data_vga <= (others => '-');
				data <= (others => '-');
				data_draw <= data;
				write_enable <= '0';
			elsif(draw_write = '1') then
				addr <= addr_draw;
				data <= transport data_draw after 45 ns; -- t_dw + t_whz
				data_vga <= (others => '-');
				data_draw <= (others => '-');
				write_enable <= '1';
			else
				addr <= addr_vga;
				data_vga <= data;
				data_draw <= (others => '-');
				data <= (others => '-');
				write_enable <= '0';
			end if;
		end if;
	end process;
end behaviour;


