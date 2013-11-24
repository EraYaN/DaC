library IEEE;
use IEEE.std_logic_1164.ALL;
use work.parameter_def.ALL;
use work.draw_lib.ALL;

architecture behaviour of pixel is
signal busy : std_logic; -- used as a "state"
begin
	process (clk)
	variable next_done : std_logic;
	variable next_ramaddr : std_logic_vector(SizeRAMAddr-1 downto 0);
	variable next_ramdata : std_logic_vector(SizeRAMData-1 downto 0);
	variable next_draw_write : std_logic;
	variable next_busy : std_logic;
	begin
		if rising_edge(clk) then
			next_ramaddr := (others => 'Z');
			next_ramdata := (others => 'Z');
			next_draw_write := '0';
			next_done := '0';
			next_busy := '0';
			if(reset = '0') then --not resetting
				if enable = '1' then --enabled
					if draw_can_access = '1' then -- RAM is free to access
						if busy = '0' then --we are not busy							
							next_ramaddr := std_logic_vector(NOT asb & y & x); --combineer signalen
							next_ramdata := color; -- zet data op de bus
							next_draw_write := '1'; -- vertel de controller dat je wil schrijven
							next_done := '0'; -- not done yet
							next_busy := '1'; -- we are now busy
						else --we are busy							
							next_done := '1'; -- we are done now
							next_busy := '0'; -- we are not busy anymore
						end if;					
					end if;	
				end if;
			end if;
			done <= next_done;
			ramaddr <= next_ramaddr;
			ramdata <= next_ramdata;
			draw_write <= next_draw_write;
			busy <= next_busy;
		end if;
	end process;
end behaviour;