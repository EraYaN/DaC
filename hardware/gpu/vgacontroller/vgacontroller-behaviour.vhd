LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE work.parameter_def.all;

ARCHITECTURE behaviour OF vgacontroller IS
  CONSTANT  h_period  :  INTEGER := h_pulse + h_bp + h_pixels + h_fp;  --total number of pixel clocks in a row
  CONSTANT  v_period  :  INTEGER := v_pulse + v_bp + v_pixels + v_fp;  --total number of rows in column
BEGIN
  
  PROCESS(clk)
    VARIABLE h_count  :  INTEGER RANGE 0 TO h_period - 1 := 0;  --horizontal counter (counts the columns)
    VARIABLE v_count  :  INTEGER RANGE 0 TO v_period - 1 := 0;  --vertical counter (counts the rows)
   BEGIN

   
      
    IF(rising_edge(clk)) THEN
		IF(reset_n = '0') THEN  --reset asserted
			h_count := 0;         --reset horizontal counter
			v_count := 0;         --reset vertical counter
			vgahsync <= NOT h_pol;  --deassert horizontal sync
			vgavsync <= NOT v_pol;  --deassert vertical sync
			ramclaim <= '0';      --disable display
			
		END IF;
      --counters
      IF(h_count < h_period - 1) THEN    --horizontal counter (pixels)
        h_count := h_count + 1;
      ELSE
        h_count := 0;
        IF(v_count < v_period - 1) THEN  --veritcal counter (rows)
          v_count := v_count + 1;
        ELSE
          v_count := 0;
        END IF;
      END IF;

      --horizontal sync signal
      IF(h_count < h_pixels + h_fp OR h_count > h_pixels + h_fp + h_pulse) THEN
        vgahsync <= NOT h_pol;    --deassert horiztonal sync pulse
      ELSE
        vgahsync <= h_pol;        --assert horiztonal sync pulse
      END IF;
      
      --vertical sync signal
      IF(v_count < v_pixels + v_fp OR v_count > v_pixels + v_fp + v_pulse) THEN
        vgavsync <= NOT v_pol;    --deassert vertical sync pulse
      ELSE
        vgavsync <= v_pol;        --assert vertical sync pulse
      END IF;
      
      --set pixel coordinates
      IF(h_count < h_pixels) THEN  --horiztonal display time
        ramaddr(SizeX-1 downto 0) <= std_logic_vector(to_unsigned(h_count,SizeX));         --set horiztonal pixel coordinate
      END IF;
      IF(v_count < v_pixels) THEN  --vertical display time
        ramaddr(SizeY+SizeX-1 downto SizeX)<= std_logic_vector(to_unsigned(v_count,SizeY));            --set vertical pixel coordinate
      END IF;
		ramaddr(SizeRAMAddr-1) <= NOT asb;

      --set display enable output
      IF(h_count < h_pixels AND v_count < v_pixels) THEN  --display time
        ramclaim <= '1';
		  ramread <= '1';
      ELSE                                                --blanking time
        ramclaim <= '0'; 
			ramread <= '0';		  
      END IF;

    END IF;
  END PROCESS;

END behaviour;









