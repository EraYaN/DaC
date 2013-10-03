
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

architecture synthesised of rammux is

   component iv110
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component na210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component no210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   signal n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23 : std_logic;

begin
   
   U30 : no210 port map( A => n13, B => n14, Y => write_out(7));
   U31 : no210 port map( A => n14, B => n15, Y => write_out(6));
   U32 : no210 port map( A => n14, B => n16, Y => write_out(5));
   U33 : no210 port map( A => n14, B => n17, Y => write_out(4));
   U34 : na210 port map( A => write, B => sel(2), Y => n14);
   U35 : no210 port map( A => n13, B => n18, Y => write_out(3));
   U36 : no210 port map( A => n15, B => n18, Y => write_out(2));
   U37 : no210 port map( A => n16, B => n18, Y => write_out(1));
   U38 : no210 port map( A => n17, B => n18, Y => write_out(0));
   U39 : na210 port map( A => write, B => n19, Y => n18);
   U40 : no210 port map( A => n13, B => n20, Y => drive_out(7));
   U41 : no210 port map( A => n15, B => n20, Y => drive_out(6));
   U42 : no210 port map( A => n16, B => n20, Y => drive_out(5));
   U43 : no210 port map( A => n17, B => n20, Y => drive_out(4));
   U44 : na210 port map( A => drive, B => sel(2), Y => n20);
   U45 : no210 port map( A => n13, B => n21, Y => drive_out(3));
   U46 : na210 port map( A => sel(1), B => sel(0), Y => n13);
   U47 : no210 port map( A => n15, B => n21, Y => drive_out(2));
   U48 : na210 port map( A => sel(1), B => n22, Y => n15);
   U49 : no210 port map( A => n16, B => n21, Y => drive_out(1));
   U50 : na210 port map( A => sel(0), B => n23, Y => n16);
   U51 : no210 port map( A => n17, B => n21, Y => drive_out(0));
   U52 : na210 port map( A => drive, B => n19, Y => n21);
   U53 : iv110 port map( A => sel(2), Y => n19);
   U54 : na210 port map( A => n22, B => n23, Y => n17);
   U55 : iv110 port map( A => sel(1), Y => n23);
   U56 : iv110 port map( A => sel(0), Y => n22);

end synthesised;



