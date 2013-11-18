
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

architecture synthesised of rammux is

   component no310
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component iv110
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component na210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   signal drive_out_5_port, drive_out_1_port, drive_out_0_port, 
      drive_out_2_port, drive_out_3_port, drive_out_4_port, drive_out_6_port, 
      drive_out_7_port, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34 :
      std_logic;

begin
   drive_out <= ( drive_out_7_port, drive_out_6_port, drive_out_5_port, 
      drive_out_4_port, drive_out_3_port, drive_out_2_port, drive_out_1_port, 
      drive_out_0_port );
   
   U31 : iv110 port map( A => n24, Y => write_out(7));
   U32 : na210 port map( A => drive_out_7_port, B => write, Y => n24);
   U33 : iv110 port map( A => n25, Y => write_out(6));
   U34 : na210 port map( A => write, B => drive_out_6_port, Y => n25);
   U35 : iv110 port map( A => n26, Y => write_out(5));
   U36 : na210 port map( A => write, B => drive_out_5_port, Y => n26);
   U37 : iv110 port map( A => n27, Y => write_out(4));
   U38 : na210 port map( A => write, B => drive_out_4_port, Y => n27);
   U39 : iv110 port map( A => n28, Y => write_out(3));
   U40 : na210 port map( A => write, B => drive_out_3_port, Y => n28);
   U41 : iv110 port map( A => n29, Y => write_out(2));
   U42 : na210 port map( A => write, B => drive_out_2_port, Y => n29);
   U43 : iv110 port map( A => n30, Y => write_out(1));
   U44 : na210 port map( A => write, B => drive_out_1_port, Y => n30);
   U45 : iv110 port map( A => n31, Y => write_out(0));
   U46 : na210 port map( A => write, B => drive_out_0_port, Y => n31);
   U47 : no310 port map( A => n32, B => n33, C => n34, Y => drive_out_7_port);
   U48 : no310 port map( A => n32, B => sel(0), C => n34, Y => drive_out_6_port
                           );
   U49 : no310 port map( A => n33, B => sel(1), C => n34, Y => drive_out_5_port
                           );
   U50 : no310 port map( A => sel(0), B => sel(1), C => n34, Y => 
                           drive_out_4_port);
   U51 : iv110 port map( A => sel(2), Y => n34);
   U52 : no310 port map( A => n33, B => sel(2), C => n32, Y => drive_out_3_port
                           );
   U53 : no310 port map( A => sel(0), B => sel(2), C => n32, Y => 
                           drive_out_2_port);
   U54 : iv110 port map( A => sel(1), Y => n32);
   U55 : no310 port map( A => sel(1), B => sel(2), C => n33, Y => 
                           drive_out_1_port);
   U56 : iv110 port map( A => sel(0), Y => n33);
   U57 : no310 port map( A => sel(1), B => sel(2), C => sel(0), Y => 
                           drive_out_0_port);

end synthesised;



