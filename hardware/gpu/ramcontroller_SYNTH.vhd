
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

architecture synthesised of ramcontroller is

   component na210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component na310
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component no210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component no310
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component iv110
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal vga_can_access_port, n7, n8, n9, n10, n11 : std_logic;

begin
   vga_can_access <= vga_can_access_port;
   
   U12 : iv110 port map( A => is_init, Y => vga_can_access_port);
   U13 : na210 port map( A => vga_claim, B => vga_can_access_port, Y => 
                           decoder_can_access);
   U14 : no310 port map( A => is_init, B => decoder_claim, C => vga_claim, Y =>
                           draw_can_access);
   U15 : no210 port map( A => draw_read, B => vga_read, Y => n7);
   U16 : na210 port map( A => clk, B => n7, Y => n8);
   U17 : na210 port map( A => vga_can_access_port, B => n8, Y => n9);
   U18 : na210 port map( A => n9, B => decoder_write, Y => n11);
   U19 : na310 port map( A => n9, B => vga_can_access_port, C => draw_write, Y 
                           => n10);
   U20 : na210 port map( A => n11, B => n10, Y => write_enable);

end synthesised;



