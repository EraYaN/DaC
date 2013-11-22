library IEEE;
use IEEE.std_logic_1164.ALL;
use work.parameter_def.ALL;

PACKAGE draw_lib IS
	procedure set_pixel(
		ASB : in std_logic;
		X : in std_logic_vector(SizeX-1 downto 0); 
		Y : in std_logic_vector(SizeY-1 downto 0); 
		color: in std_logic_vector(SizeColor-1 downto 0);
		address: out std_logic_vector(SizeRAMAddr-1 downto 0);
		data: out std_logic_vector(SizeRAMData-1 downto 0);
		write_enable : out std_logic
	);	
END draw_lib;

PACKAGE BODY draw_lib IS
	procedure set_pixel( 
		ASB : in std_logic;
		X : in std_logic_vector(SizeX-1 downto 0); 
		Y : in std_logic_vector(SizeY-1 downto 0); 
		color: in std_logic_vector(SizeColor-1 downto 0);
		address: out std_logic_vector(SizeRAMAddr-1 downto 0);
		data: out std_logic_vector(SizeRAMData-1 downto 0);
		write_enable : out std_logic
	) is
	begin
		address := std_logic_vector(ASB & Y & X); --comibneer signalen
		data := color;
		write_enable := '0';
	end set_pixel;

END draw_lib;








