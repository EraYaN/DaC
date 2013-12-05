library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.All;
use work.parameter_def.ALL;

architecture behaviour of draw_sprite is
signal cx : unsigned(SizeX-1 downto 0);
signal cy : unsigned(SizeY-1 downto 0);
signal data_reg,data_reg_tmp : unsigned(SizeRAMData-1 downto 0);
signal counter,counter_tmp : unsigned(SizeSpriteCounter-1 downto 0);
signal scounter,scounter_tmp : unsigned(SizeSCounter-1 downto 0);
signal ramaddr_tmp: std_logic_vector(SizeRAMAddr-1 downto 0);
--signal ramdata_tmp: std_logic_vector(SizeRAMData-1 downto 0);
signal cx_tmp: unsigned(SizeX-1 downto 0);
signal cy_tmp: unsigned(SizeY-1 downto 0);
signal draw_write_tmp : std_logic;
signal almost_done,almost_done_tmp : std_logic;
signal started, started_tmp : std_logic;
signal oe : std_logic;
begin
draw_sprite_seq: process (clk)	
	begin
		if rising_edge(clk) then
			data_reg<=data_reg_tmp;
			scounter<=scounter_tmp;
			counter <= counter_tmp;
			cx<=cx_tmp;
			cy<=cy_tmp;
			almost_done<=almost_done_tmp;
			started <= started_tmp;
		end if;
	end process;
	ramaddr <= ramaddr_tmp WHEN oe = '1' ELSE (others => 'Z');
	ramaddr_tmp <= (NOT asb) & y & x WHEN scounter < 4 ELSE id & std_logic_vector(counter);
	ramdata <= (others => data_reg(to_integer(scounter))) WHEN scounter < 4 AND oe = '1' ELSE (others => 'Z');
draw_rect_combi: process (reset, enable, draw_can_access, x, y, w, l, almost_done,cx,cy,started,data_reg,counter,scounter,ramdata)	
	begin
			if reset = '0' and enable = '1' then 
				if draw_can_access = '1' then -- RAM is free to access
					if started = '1' then
						if almost_done = '1' then
							done <= '1';
							draw_write <= '0';
							draw_read <= '0';
							cx_tmp <= (others => '0');
							cy_tmp <= (others => '0');
							oe <= '0';
							counter_tmp <= to_unsigned(0,SizeSpriteCounter);
							scounter_tmp <= to_unsigned(SCounterStart,SizeSCounter);
							almost_done_tmp <= '0';
							started_tmp <= '0';
							data_reg_tmp <= (others => '0');
						else 
							oe <= '1';
							done <= '0';
							if std_logic_vector(counter) = l then		
								almost_done_tmp <= '1';
								else
								almost_done_tmp <= '0';
							end if;
							if scounter < 4 then	
								counter_tmp <= counter+1;
								if cx = unsigned(x)+unsigned(w) then
									cy_tmp <= cy+1;	
									cx_tmp <= unsigned(x);
								else
									cx_tmp <= cx+1;								
									cy_tmp <= cy;
								end if;							
								draw_write <= '1';	
								draw_read <= '0';
								data_reg_tmp <= data_reg;								
							elsif scounter = 4 then	
								cx_tmp <= cx;								
								cy_tmp <= cy;
								data_reg_tmp <= unsigned(ramdata);
								draw_write <= '0';	
								draw_read <= '1';
							else
								cx_tmp <= cx;								
								cy_tmp <= cy;
								data_reg_tmp <= data_reg;
								draw_write <= '0';	
								draw_read <= '0';
							end if;
							if counter < SCounterMax then
								scounter_tmp <= scounter+1;	
							else
								scounter_tmp <= to_unsigned(0,SizeSCounter);
							end if;
						end if;
						started_tmp <= '1';
					else
						cx_tmp <= unsigned(x);
						cy_tmp <= unsigned(y);						
						oe <= '0';
						draw_write <= '0';
						draw_read <= '0';
						done <= '0';
						counter_tmp <= to_unsigned(0,SizeSpriteCounter);
						scounter_tmp <= to_unsigned(SCounterStart,SizeSCounter);
						almost_done_tmp <= '0';
						started_tmp <= '1';
						data_reg_tmp <= (others => '0');
					end if;
				else
					cx_tmp <= cx;
					cy_tmp <= cy;
					oe <= '0';
					draw_write <= '0';
					draw_read <= '0';
					done <= '0';
					almost_done_tmp <= '0';
					started_tmp <= started;
					counter_tmp <= to_unsigned(0,SizeSpriteCounter);
					scounter_tmp <= to_unsigned(SCounterStart,SizeSCounter);
					data_reg_tmp <= (others => '0');
				end if;
			else 
				cx_tmp <= (others => '0');
				cy_tmp <= (others => '0');
				oe <= '0';
				draw_write <= '0';
				draw_read <= '0';
				done <= '0';
				almost_done_tmp <= '0';
				counter_tmp <= to_unsigned(0,SizeSpriteCounter);
				scounter_tmp <= to_unsigned(SCounterStart,SizeSCounter);
				started_tmp <= '0';
				data_reg_tmp <= (others => '0');
			end if;
	end process;
end behaviour;
