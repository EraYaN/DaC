library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.All;
use work.parameter_def.ALL;

architecture behaviour of draw_rect is
signal filling : std_logic; -- used as a "state"
signal curr_x : unsigned(SizeX-1 downto 0);
signal curr_y : unsigned(SizeY-1 downto 0);
begin
	process (clk)
	variable next_done : std_logic;
	variable next_ramaddr : std_logic_vector(SizeRAMAddr-1 downto 0);
	variable next_ramdata : std_logic_vector(SizeRAMData-1 downto 0);
	variable next_draw_write : std_logic;
	variable next_filling : std_logic;
	variable next_curr_x : unsigned(SizeX-1 downto 0);
	variable next_curr_y : unsigned(SizeY-1 downto 0);
	begin
		if rising_edge(clk) then
			next_ramaddr := (others => 'Z');
			next_ramdata := (others => 'Z');
			next_draw_write := '0';
			next_curr_x := unsigned(x)+unsigned(w);
			next_curr_y := unsigned(y)+unsigned(h);
			next_done := '0';
			next_filling := '0';
			if reset = '0' then --not resetting
				if enablef = '1' then --enabled (fill)
					if draw_can_access = '1' then -- RAM is free to access
						next_filling := '1';
						if filling = '1' then
							next_curr_x := curr_x-1;	
							if curr_x = unsigned(x) then
								next_curr_y := curr_y-1;	
								next_curr_x := unsigned(x)+unsigned(w);
							else
								next_curr_y := curr_y;
							end if;		
						else
							next_curr_x := curr_x;
							next_curr_y := curr_y;							
						end if;	
						next_ramaddr := std_logic_vector(NOT asb & curr_y & curr_x); --combineer signalen
						next_ramdata := color; -- zet data op de bus
						next_draw_write := '1'; -- vertel de controller dat je wil schrijven						
						if curr_x = unsigned(x) and curr_y = unsigned(y) then
							next_done := '1';
						end if;
					else
						next_curr_x := curr_x;
						next_curr_y := curr_y;
						next_filling := '0';
					end if;	
				elsif enable = '1' then --enabled
					if draw_can_access = '1' then -- RAM is free to access
						next_filling := '1';
						if filling = '1' then
							next_curr_x := curr_x-unsigned(w);	
							if curr_x = unsigned(x) then
								next_curr_y := curr_y-1;	
								next_curr_x := unsigned(x)+unsigned(w);
							else
								next_curr_y := curr_y;
							end if;		
						else
							next_curr_x := curr_x;
							next_curr_y := curr_y;							
						end if;						
						next_ramaddr := std_logic_vector(NOT asb & curr_y & curr_x); --combineer signalen
						next_ramdata := color; -- zet data op de bus
						next_draw_write := '1'; -- vertel de controller dat je wil schrijven						
						if curr_x = unsigned(x) and curr_y = unsigned(y) then
							next_done := '1';
						end if;
					else
						next_curr_x := curr_x;
						next_curr_y := curr_y;
						next_filling := '0';
					end if;		
				end if;
			end if;
			done <= next_done;
			ramaddr <= next_ramaddr;
			ramdata <= next_ramdata;
			draw_write <= next_draw_write;
			filling <= next_filling;
			curr_x<= next_curr_x;
			curr_y<= next_curr_y;
		end if;
	end process;
end behaviour;
