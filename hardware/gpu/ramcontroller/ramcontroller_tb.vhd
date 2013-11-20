LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.parameter_def.ALL;

entity ramcontroller_tb is
generic (
	RAMDELAY : time := 55 ns;
	CLOCKPERIOD : time := 160 ns
);
end ramcontroller_tb;

architecture testbench of ramcontroller_tb is
component ramcontroller is
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
end component;
component sram IS
  PORT (      
    nCE: IN std_logic;  -- low-active Chip-Enable of the SRAM device; defaults to '1' (inactive)
    nOE: IN std_logic;  -- low-active Output-Enable of the SRAM device; defaults to '1' (inactive)
    nWE: IN std_logic;  -- low-active Write-Enable of the SRAM device; defaults to '1' (inactive)
    A:   IN std_logic_vector(18 downto 0); -- address bus of the SRAM device
    D:   INOUT std_logic_vector(7 downto 0);  -- bidirectional data bus to/from the SRAM device
    CE2: IN std_logic;  -- high-active Chip-Enable of the SRAM device; defaults to '1'  (active) 
    download: IN boolean; 
    download_filename: IN string;
    dump: IN boolean;
    dump_start: IN natural; 
    dump_end: IN natural;
    dump_filename: IN string
  );
END component;

signal download, dump :boolean := FALSE;
signal addr_draw : std_logic_vector(SizeRAMAddr-1 downto 0);
signal addr_vga : std_logic_vector(SizeRAMAddr-1 downto 0);
signal data_draw : std_logic_vector(SizeRAMData-1 downto 0);
signal draw_write : std_logic := '1';
signal draw_read : std_logic := '1';
signal vga_read : std_logic := '1';
signal write_enable,write_enable_n : std_logic;
signal addr : std_logic_vector(18 downto 0);

signal data : std_logic_vector(7 downto 0);
begin
rc: ramcontroller port map (write_enable=>write_enable, data=>data(SizeRAMData-1 downto 0), addr=>addr(SizeRAMAddr-1 downto 0),  addr_draw=>addr_draw, addr_vga=>addr_vga, data_draw=>data_draw,draw_write=>draw_write,draw_read=>draw_read,vga_read=>vga_read);
sr: sram port map (nCE=>'0', nOE=>'1', nWE=>write_enable_n,A=>addr,D=>data, CE2=>'1', download => download,download_filename=>"sram_load.dat", dump=>dump, dump_start=>0, dump_end=>524287, dump_filename=>"sram_dump.dat");

	-- clock period: 1/6250000 = 160 ns
	--clk		<= '1' after 0 ns,
	--		'0' after 80 ns when clk /= '0' else '1' after 80 ns;
	--reset 	<= '1' after 0 ns,
	--		'0' after 320 ns;
	write_enable_n <=NOT write_enable;
	addr(18 downto SizeRAMAddr) <= (others => '0');	
	process
	begin
		--setup
		--download <= TRUE;
		--wait for CLOCKPERIOD;
		--download <= FALSE;
		wait for CLOCKPERIOD;
		addr_vga <= (others=>'0');
		addr_draw <= (others=>'0');
		wait for CLOCKPERIOD;
		vga_read <= '1';
		wait for CLOCKPERIOD;
		addr_vga <= x"ddff";
		wait for CLOCKPERIOD;
		addr_vga <= x"de00";
		wait for CLOCKPERIOD;
		addr_vga <= x"de01";		
		wait for CLOCKPERIOD;
		--finish
		dump <= TRUE;
		wait for CLOCKPERIOD;
		dump <= FALSE;
		wait for CLOCKPERIOD;
	end process;
end testbench;