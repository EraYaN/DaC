library IEEE;
use IEEE.std_logic_1164.ALL;
use work.parameter_def.ALL;

PACKAGE Draw_lib IS
	procedure set_pixel( screen_buffer : in std_logic;
		    	     X : in std_logic_vector(SizeX-1 downto 0); 
		     	     Y : in std_logic_vector(SizeY-1 downto 0); 
		     	     color: in std_logic_vector(SizeColor-1 downto 0);
		     	     address: out std_logic_vector(SizeRAMAddr-1 downto 0);
		             data: out std_logic_vector(SizeRAMData-1 downto 0));
END Draw_lib;

PACKAGE BODY Draw_lib IS
procedure set_pixel( 
		     screen_buffer : in std_logic;
		     X : in std_logic_vector(SizeX-1 downto 0); 
		     Y : in std_logic_vector(SizeY-1 downto 0); 
		    color: in std_logic_vector(SizeColor-1 downto 0);
		     address: out std_logic_vector(SizeRAMAddr-1 downto 0);
		    data: out std_logic_vector(SizeRAMData-1 downto 0)) is
	begin
	 address := std_logic_vector(Y & X & screen_buffer);
	 data := color;
	end set_pixel;

END Draw_lib;








