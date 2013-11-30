LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE work.parameter_def.all;

ARCHITECTURE behaviour OF vgacontroller IS
  CONSTANT  h_period  :  INTEGER := h_pulse + h_bp + h_pixels + h_fp;  --total number of pixel clocks in a row
  CONSTANT  v_period  :  INTEGER := v_pulse + v_bp + v_pixels + v_fp;  --total number of rows in column
  signal h_count,new_h_count  :  INTEGER RANGE 0 TO h_period - 1 := 0;  --horizontal counter (counts the columns)
  signal v_count,new_v_count  :  INTEGER RANGE 0 TO v_period - 1 := 0;  --vertical counter (counts the rows) 
BEGIN
  
  vga_counter: PROCESS(clk)    
   BEGIN
    IF(rising_edge(clk)) THEN
		IF(reset_n = '0') THEN  --reset asserted
			h_count <= h_period-3;         --reset horizontal counter
			v_count <= h_period-3;         --reset vertical counter			
		else 
			h_count <= new_h_count;		
			v_count <= new_v_count;		
		end if;
    END IF;
  END PROCESS;
  vga_combi: PROCESS(reset_n,h_count,v_count,vga_can_access,ramdata,asb)    
   BEGIN
    IF(reset_n = '0') THEN  --reset asserted		
		vgahsync <= NOT h_pol;  --deassert horizontal sync
		vgavsync <= NOT v_pol;  --deassert vertical sync
		vgacolor <= (others => '0');
		vga_claim <= '0';      --disable display
		ramaddr <= (others=>'Z');
	else 
		--counters
		IF(h_count < h_period - 1) THEN    --horizontal counter (pixels)
			new_h_count <= h_count + 1;
		ELSE
			new_h_count <= 0;
			IF(v_count < v_period - 1) THEN  --vertical counter (rows)
			  new_v_count <= v_count + 1;
			ELSE
			  new_v_count <= 0;
			END IF;
		END IF;	
		--horizontal sync signal
		IF(h_count < h_pixels + h_fp OR h_count > h_pixels + h_fp + h_pulse) THEN
			vgahsync <= NOT h_pol;    --deassert horizontal sync pulse
		ELSE
			vgahsync <= h_pol;        --assert horizontal sync pulse
		END IF;

		--vertical sync signal
		IF(v_count < v_pixels + v_fp OR v_count > v_pixels + v_fp + v_pulse) THEN
			vgavsync <= NOT v_pol;    --deassert vertical sync pulse
		ELSE
			vgavsync <= v_pol;        --assert vertical sync pulse
		END IF;

		IF(((h_count < h_pixels+1 AND v_count < v_pixels+1) OR h_count > h_period-2 OR v_count > v_period-2) AND vga_can_access = '1') THEN  --display time (-2)
			vga_claim <= '1';
		ELSE                                                --blanking time (-2)
			vga_claim <= '0'; 								
		END IF;

		--set display enable output
		IF(h_count < h_pixels AND v_count < v_pixels AND vga_can_access = '1') THEN  --display time
			vga_read <= '1';
			vgacolor <= ramdata;
			 --set pixel coordinates			
			ramaddr <= std_logic_vector(asb & std_logic_vector(to_unsigned(v_count/4,SizeY)) & std_logic_vector(to_unsigned(h_count,SizeX)));         --set RAM Addr
		ELSE                                                --blanking time
			vga_read <= '0';	
			vgacolor <= (others => '0');	
			ramaddr <= (others => 'Z');								
		END IF;
	end if;
  END PROCESS;

END behaviour;









