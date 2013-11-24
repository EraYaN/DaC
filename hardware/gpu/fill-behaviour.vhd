library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.All;
use work.parameter_def.ALL;

architecture behaviour of fill is
signal filling : std_logic; -- used as a "state"
signal x : unsigned(SizeX-1 downto 0);
signal y : unsigned(SizeY-1 downto 0);
begin
	process (clk)
	variable next_done : std_logic;
	variable next_ramaddr : std_logic_vector(SizeRAMAddr-1 downto 0);
	variable next_ramdata : std_logic_vector(SizeRAMData-1 downto 0);
	variable next_draw_write : std_logic;
	variable next_filling : std_logic;
	variable next_x : unsigned(SizeX-1 downto 0);
	variable next_y : unsigned(SizeY-1 downto 0);
	begin
		if rising_edge(clk) then
			next_ramaddr := (others => 'Z');
			next_ramdata := (others => 'Z');
			next_draw_write := '0';
			next_x := to_unsigned(ResolutionX-1,SizeX);
			next_y := to_unsigned(ResolutionY-1,SizeY);
			next_done := '0';
			next_filling := '0';
			if reset = '0' then --not resetting
				if enable = '1' then --enabled
					if draw_can_access = '1' then -- RAM is free to access
						next_x := x-1;						
						if x = 0 then
							next_y := y-1;	
							next_x := to_unsigned(ResolutionX-1,SizeX);
						end if;
						next_ramaddr := std_logic_vector(NOT asb & y & x); --combineer signalen
						next_ramdata := color; -- zet data op de bus
						next_draw_write := '1'; -- vertel de controller dat je wil schrijven						
						if x = 0 and y = 0 then
							next_done := '1';
						end if;
					end if;	
				end if;
			end if;
			done <= next_done;
			ramaddr <= next_ramaddr;
			ramdata <= next_ramdata;
			draw_write <= next_draw_write;
			filling <= next_filling;
			x<= next_x;
			y<= next_y;
		end if;
	end process;
end behaviour;