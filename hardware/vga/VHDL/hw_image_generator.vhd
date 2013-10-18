--------------------------------------------------------------------------------
--
--   FileName:         hw_image_generator.vhd
--   Dependencies:     none
--   Design Software:  Quartus II 64-bit Version 12.1 Build 177 SJ Full Version
--
--   HDL CODE IS PROVIDED "AS IS."  DIGI-KEY EXPRESSLY DISCLAIMS ANY
--   WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
--   PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL DIGI-KEY
--   BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
--   DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
--   PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
--   BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
--   ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
--
--   Version History
--   Version 1.0 05/10/2013 Scott Larson
--     Initial Public Release
--    
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY hw_image_generator IS
  GENERIC(
    pixels_y :  INTEGER := 20;   --row that first color will persist until
    pixels_x :  INTEGER := 20;
	 count_max:  INTEGER := 3000000);  --column that first color will persist until
  PORT(
	 clk : in std_logic;
    disp_ena :  IN   STD_LOGIC;  --display enable ('1' = display time, '0' = blanking time)
    row      :  IN   INTEGER;    --row pixel coordinate
    column   :  IN   INTEGER;    --column pixel coordinate
    red      :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');  --red magnitude output to DAC
    green    :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');  --green magnitude output to DAC
    blue     :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
	 led		 :	 OUT STD_LOGIC); --blue magnitude output to DAC
END hw_image_generator;

ARCHITECTURE behavior OF hw_image_generator IS
signal count : integer;
signal ledstate : std_logic;
BEGIN
  PROCESS(disp_ena, row, column,clk,count,ledstate)
  variable pixelh, pixelv, new_count :integer;
  BEGIN
  if rising_edge(clk) then
	pixelh:=count/(count_max/320);
	pixelv:=count/(count_max/240);
    IF(disp_ena = '1') THEN        --display time
      IF(row < pixelh+pixels_y AND row > pixelh AND column < pixelv+pixels_x AND column > pixelv) THEN
        red <= (OTHERS => '1');
        green  <= (OTHERS => '0');
        blue <= (OTHERS => '0');
      ELSE
        red <= (OTHERS => '0');
        green  <= (OTHERS => '0') ;
        blue <= (OTHERS => '1');
      END IF;
		if count<count_max then
			new_count:=count+1;			
		else
			new_count:=0;
			ledstate<=not ledstate;
		end if;
    ELSE                           --blanking time
      red <= (OTHERS => '0');
      green <= (OTHERS => '0');
      blue <= (OTHERS => '0');
		new_count :=0;
		ledstate<='0';
    END IF;  
  end if;
  count<=new_count;
  END PROCESS;
  led <= ledstate;
END behavior;
