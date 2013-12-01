LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE work.parameter_def.all;

use IEEE.math_real.ceil;
use IEEE.math_real.log2;


ARCHITECTURE behaviour OF vgacontroller IS
	CONSTANT h_period  :  INTEGER := h_pulse + h_bp + h_pixels + h_fp;  --total number of pixel clocks in a row
	CONSTANT v_period  :  INTEGER := v_pulse + v_bp + v_pixels + v_fp;  --total number of rows in column);  --vertical sync pulse polarity (1 = positive, 0 = negative) (default = 0)
	
	CONSTANT h_count_size : INTEGER := integer(ceil(log2(real(h_period))));
	CONSTANT v_count_size : INTEGER := integer(ceil(log2(real(v_period))));

  signal h_count,new_h_count  :  unsigned(h_count_size-1 downto 0);  --horizontal counter (counts the columns)
  signal v_count,new_v_count  :  unsigned(v_count_size-1 downto 0);  --vertical counter (counts the rows) 
  signal v_row_tmp : unsigned(v_count_size-1 downto 0);
  signal v_row : unsigned(SizeY-1 downto 0);
  signal h_col : unsigned(SizeX-1 downto 0);
BEGIN
  v_row_tmp <= v_count/4;
  v_row <= v_row_tmp(SizeY-1 downto 0);
  h_col <= h_count(SizeX-1 downto 0);
  vga_counter: PROCESS(clk)    
   BEGIN
    IF(rising_edge(clk)) THEN		
		h_count <= new_h_count;		
		v_count <= new_v_count;	
    END IF;
  END PROCESS;

  vga_combi: PROCESS(reset_n,h_count,v_count,vga_can_access,ramdata,asb,v_row,h_col)    
   BEGIN  
    IF(reset_n = '0') THEN  --reset asserted	
		new_h_count <= to_unsigned(h_period-3,h_count_size);         --reset horizontal counter
		new_v_count <= to_unsigned(v_period-3,v_count_size);         --reset vertical counter		
		vgahsync <= NOT h_pol;  --deassert horizontal sync
		vgavsync <= NOT v_pol;  --deassert vertical sync
		vgacolor <= (others => '0');
		vga_claim <= '0';      --disable display
		ramaddr <= (others=>'Z');
		vga_read <= '0';
	else 
		--counters
		IF(h_count < h_period - 1) THEN    --horizontal counter (pixels)
			new_h_count <= h_count + 1;
			new_v_count <= v_count;
		ELSE
			new_h_count <= to_unsigned(0,h_count_size);
			IF(v_count < v_period - 1) THEN  --vertical counter (rows)
			  new_v_count <= v_count + 1;
			ELSE
			  new_v_count <= to_unsigned(0,v_count_size);
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
			ramaddr <= asb & std_logic_vector(v_row) & std_logic_vector(h_col);         --set RAM Addr
		ELSE                                                --blanking time
			vga_read <= '0';	
			vgacolor <= (others => '0');	
			ramaddr <= (others => 'Z');								
		END IF;
	end if;
  END PROCESS;

END behaviour;









