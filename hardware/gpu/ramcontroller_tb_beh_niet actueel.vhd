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
clk : in std_logic;
--external
write_enable : out std_logic;
--internal
vga_claim : in std_logic;
decoder_claim : in std_logic;
is_init : in std_logic;

decoder_write : in std_logic;
draw_write : in std_logic;
draw_read : in std_logic;
vga_read : in std_logic;

draw_can_access : out std_logic;
decoder_can_access : out std_logic;
vga_can_access : out std_logic
);
end component;
component sram IS
  PORT (      
    nCE: IN std_logic;  -- low-active Chip-Enable of the SRAM device; defaults to '1' (inactive)
    nOE: IN std_logic;  -- low-active Output-Enable of the SRAM device; defaults to '1' (inactive)
    nWE: IN std_logic;  -- low-active Write-Enable of the SRAM device; defaults to '1' (inactive)
    A:   IN std_logic_vector(SizeRAMAddr-1 downto 0); -- address bus of the SRAM device
    D:   INOUT std_logic_vector(SizeRAMData-1 downto 0);  -- bidirectional data bus to/from the SRAM device
    CE2: IN std_logic;  -- high-active Chip-Enable of the SRAM device; defaults to '1'  (active) 
    download: IN boolean; 
    dump: IN boolean;
    dump_start: IN natural; 
    dump_end: IN natural    
  );
END component;

signal download, dump :boolean := FALSE;
signal clk : std_logic;
signal vga_claim : std_logic;
signal decoder_claim : std_logic;
signal is_init : std_logic;
signal draw_write : std_logic := '0';
signal draw_read : std_logic := '0';
signal decoder_write : std_logic := '0';
signal vga_read : std_logic := '0';
signal draw_can_access : std_logic;
signal decoder_can_access : std_logic;
signal vga_can_access : std_logic;
signal write_enable,write_enable_n : std_logic;
signal addr : std_logic_vector(SizeRAMAddr-1 downto 0);
signal data : std_logic_vector(SizeRAMData-1 downto 0);

begin
rc: ramcontroller port map (
	clk=>clk,
	write_enable=>write_enable,
	vga_claim=>vga_claim,
	decoder_claim=>decoder_claim,
	is_init=>is_init,
	decoder_write=>decoder_write,
	draw_write=>draw_write,
	draw_read=>draw_read,
	vga_read=>vga_read,
	draw_can_access=>draw_can_access,
	decoder_can_access=>decoder_can_access,
	vga_can_access=>vga_can_access
);
sr: sram port map (
	nCE=>'0',
	nOE=>'1',
	nWE=>write_enable_n,
	A=>addr,
	D=>data,
	CE2=>'1',
	download => download,
	dump=>dump,
	dump_start=>0,
	dump_end=>2 ** SizeRAMAddr
);
	-- clock period: 1/6250000 = 160 ns
	clk		<= '1' after 0 ns,
			'0' after 80 ns when clk /= '0' else '1' after 80 ns;
	--reset 	<= '1' after 0 ns,
	--		'0' after 320 ns;
	write_enable_n <=NOT write_enable;
	process
	begin
		--setup
		is_init <= '1';
		--download <= TRUE;
		--wait for CLOCKPERIOD;
		--download <= FALSE;
		
		wait for CLOCKPERIOD;
		addr <= (others=>'0');
		
		
		wait for CLOCKPERIOD;
		is_init <= '0';
		vga_claim <= '1';
		vga_read <= '1';
		wait for CLOCKPERIOD;
		addr <= x"0000";
		wait for CLOCKPERIOD;
		addr <= x"0001";
		wait for CLOCKPERIOD;
		addr <= x"0002";		
		wait for CLOCKPERIOD;
		vga_claim <= '0';
		vga_read <= '0';
		draw_write <= '1';
		wait for CLOCKPERIOD;
		data <= x"3";
		addr <= x"0000";
		wait for CLOCKPERIOD;
		data <= x"4";
		addr <= x"0001";
		wait for CLOCKPERIOD;
		data <= x"5";
		addr <= x"0002";				
		wait for CLOCKPERIOD;
		--finish
		dump <= TRUE;
		wait for CLOCKPERIOD;
		dump <= FALSE;
		wait for CLOCKPERIOD;
	end process;
end testbench;