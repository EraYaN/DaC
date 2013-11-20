LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.parameter_def.ALL;

entity ramcontroller is
port (
--external
write_enable : out std_logic;
addr : out std_logic_vector(SizeRAMAddr-1 downto 0);
data : inout std_logic_vector(SizeRAMData-1 downto 0);
--internal
addr_draw : in std_logic_vector(SizeRAMAddr-1 downto 0);
addr_vga : in std_logic_vector(SizeRAMAddr-1 downto 0);
data_draw : inout std_logic_vector(SizeRAMData-1 downto 0);
data_vga : out std_logic_vector(SizeRAMData-1 downto 0);

draw_write : in std_logic;
draw_read : in std_logic;
vga_read : in std_logic
);
end ramcontroller;