library IEEE;
use IEEE.std_logic_1164.ALL;
use work.parameter_def.ALL;

architecture structural of draw is
	component draw_fill
	port(
		clk   : in    std_logic;
		reset : in    std_logic;
		enable: in    std_logic;
		color : in std_logic_vector(SizeColor-1 downto 0);		
		asb : in std_logic;
		done  : out   std_logic;
		ramaddr     :out   std_logic_vector(SizeRAMAddr-1 downto 0);
		ramdata     :out   std_logic_vector(SizeRAMData-1 downto 0);
		draw_write :out std_logic;
		draw_can_access : in std_logic
	);
	end component;

	component draw_pixel
	port(
		clk   : in    std_logic;
		reset : in    std_logic;
		enable: in    std_logic;
		x  : in    std_logic_vector(SizeX-1 downto 0);
		y  : in    std_logic_vector(SizeY-1 downto 0);
		color : in std_logic_vector(SizeColor-1 downto 0);
		asb : in std_logic;
		done  : out   std_logic;
		ramaddr     :out   std_logic_vector(SizeRAMAddr-1 downto 0);
		ramdata     :out   std_logic_vector(SizeRAMData-1 downto 0);
		draw_write :out std_logic;
		draw_can_access : in std_logic
	);
	end component;

	component draw_rect
	port(
		clk   : in    std_logic;
		reset : in    std_logic;
		enable: in    std_logic;
		enablef: in    std_logic;
		x  : in    std_logic_vector(SizeX-1 downto 0);
		y  : in    std_logic_vector(SizeY-1 downto 0);
		w  : in    std_logic_vector(SizeX-1 downto 0);
		h  : in    std_logic_vector(SizeY-1 downto 0);
		color : in std_logic_vector(SizeColor-1 downto 0);
		asb : in std_logic;
		done  : out   std_logic;
		ramaddr     :out   std_logic_vector(SizeRAMAddr-1 downto 0);
		ramdata     :out   std_logic_vector(SizeRAMData-1 downto 0);
		draw_write :out std_logic;
		draw_can_access : in std_logic
	);
	end component;
	
	-- component draw_line
	-- port(
		-- clk   : in    std_logic;
		-- reset : in    std_logic;
		-- enable: in    std_logic;
		-- x  : in    std_logic_vector(SizeX-1 downto 0);
		-- y  : in    std_logic_vector(SizeY-1 downto 0);
		-- w  : in    std_logic_vector(SizeX-1 downto 0);
		-- h  : in    std_logic_vector(SizeY-1 downto 0);
		-- color : in std_logic_vector(SizeColor-1 downto 0);
		-- asb : in std_logic;
		-- done  : out   std_logic;
		-- ramaddr     :out   std_logic_vector(SizeRAMAddr-1 downto 0);
		-- ramdata     :out   std_logic_vector(SizeRAMData-1 downto 0);
		-- draw_write :out std_logic;
		-- draw_can_access : in std_logic
	-- );
	-- end component;

	signal pixel_done,fill_done,rect_done,line_done : std_logic;
	signal pixel_write,fill_write,rect_write,line_write : std_logic;
begin
	draw_ready <= pixel_done or fill_done or rect_done or line_done;
	draw_write <= pixel_write or fill_write or rect_write or line_write;
	draw_read <= '0';
	-- pixel_done <= '0';
	-- rect_done <= '0';
	-- pixel_write <= '0';
	-- rect_write<='0';
	line_done <= '0';
	line_write <= '0';
	-- Module 0
	fill1: draw_fill port map (
		clk=>clk,
		reset=>reset,
		enable=>en(0),
		color=>color,
		asb=>asb,
		done=>fill_done,
		ramaddr=>ramaddr,
		ramdata=>ramdata,
		draw_write=>fill_write,
		draw_can_access=>draw_can_access
	);
	-- Module 1
	pixel1: draw_pixel port map (
		clk=>clk,
		reset=>reset,
		enable=>en(1),
		x=>x,
		y=>y,
		color=>color,
		asb=>asb,
		done=>pixel_done,
		ramaddr=>ramaddr,
		ramdata=>ramdata,
		draw_write=>pixel_write,
		draw_can_access=>draw_can_access
	);
	-- Module 2 and 3 (filled)
	rect1: draw_rect port map (
		clk=>clk,
		reset=>reset,
		enable=>en(2),
		enablef=>en(3),
		x=>x,
		y=>y,
		w=>w,
		h=>h,
		color=>color,
		asb=>asb,
		done=>rect_done,
		ramaddr=>ramaddr,
		ramdata=>ramdata,
		draw_write=>rect_write,
		draw_can_access=>draw_can_access
	);
	-- Module 4
	-- line1: draw_line port map (
		-- clk=>clk,
		-- reset=>reset,
		-- enable=>en(4),
		-- x=>x,
		-- y=>y,
		-- w=>w,
		-- h=>h,
		-- color=>color,
		-- asb=>asb,
		-- done=>line_done,
		-- ramaddr=>ramaddr,
		-- ramdata=>ramdata,
		-- draw_write=>line_write,
		-- draw_can_access=>draw_can_access
	-- );
end structural;