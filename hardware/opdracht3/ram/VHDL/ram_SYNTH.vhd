
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

package CONV_PACK_ram is

-- define attributes
attribute ENUM_ENCODING : STRING;

-- define any necessary types
type UNSIGNED is array (INTEGER range <>) of std_logic;
subtype word is std_logic_vector (3 downto 0);

end CONV_PACK_ram;

library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

use work.CONV_PACK_ram.all;

entity ram is

   port( clk, reset : in std_logic;  a : in UNSIGNED (1 downto 0);  d_in : in 
         word;  write, read : in std_logic;  d_out : out word);

end ram;

architecture synthesised of ram is

   component iv110
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component na210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component no210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component na310
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component mu111
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component dfr11
      port( D, R, CK : in std_logic;  Q : out std_logic);
   end component;
   
   signal ram_0_3_port, ram_0_2_port, ram_0_1_port, ram_0_0_port, ram_1_3_port,
      ram_1_2_port, ram_1_1_port, ram_1_0_port, ram_2_3_port, ram_2_2_port, 
      ram_2_1_port, ram_2_0_port, ram_3_3_port, ram_3_2_port, ram_3_1_port, 
      ram_3_0_port, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
      n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, 
      n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, 
      n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, 
      n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142 : 
      std_logic;

begin
   
   ram_reg_0_3_inst : dfr11 port map( D => n98, R => reset, CK => clk, Q => 
                           ram_0_3_port);
   ram_reg_0_2_inst : dfr11 port map( D => n97, R => reset, CK => clk, Q => 
                           ram_0_2_port);
   ram_reg_0_1_inst : dfr11 port map( D => n96, R => reset, CK => clk, Q => 
                           ram_0_1_port);
   ram_reg_0_0_inst : dfr11 port map( D => n95, R => reset, CK => clk, Q => 
                           ram_0_0_port);
   ram_reg_1_3_inst : dfr11 port map( D => n94, R => reset, CK => clk, Q => 
                           ram_1_3_port);
   ram_reg_1_2_inst : dfr11 port map( D => n93, R => reset, CK => clk, Q => 
                           ram_1_2_port);
   ram_reg_1_1_inst : dfr11 port map( D => n92, R => reset, CK => clk, Q => 
                           ram_1_1_port);
   ram_reg_1_0_inst : dfr11 port map( D => n91, R => reset, CK => clk, Q => 
                           ram_1_0_port);
   ram_reg_2_3_inst : dfr11 port map( D => n90, R => reset, CK => clk, Q => 
                           ram_2_3_port);
   ram_reg_2_2_inst : dfr11 port map( D => n89, R => reset, CK => clk, Q => 
                           ram_2_2_port);
   ram_reg_2_1_inst : dfr11 port map( D => n88, R => reset, CK => clk, Q => 
                           ram_2_1_port);
   ram_reg_2_0_inst : dfr11 port map( D => n87, R => reset, CK => clk, Q => 
                           ram_2_0_port);
   ram_reg_3_3_inst : dfr11 port map( D => n86, R => reset, CK => clk, Q => 
                           ram_3_3_port);
   ram_reg_3_2_inst : dfr11 port map( D => n85, R => reset, CK => clk, Q => 
                           ram_3_2_port);
   ram_reg_3_1_inst : dfr11 port map( D => n84, R => reset, CK => clk, Q => 
                           ram_3_1_port);
   ram_reg_3_0_inst : dfr11 port map( D => n83, R => reset, CK => clk, Q => 
                           ram_3_0_port);
   U100 : mu111 port map( A => d_in(3), B => ram_0_3_port, S => n99, Y => n98);
   U101 : mu111 port map( A => d_in(2), B => ram_0_2_port, S => n99, Y => n97);
   U102 : mu111 port map( A => d_in(1), B => ram_0_1_port, S => n99, Y => n96);
   U103 : mu111 port map( A => d_in(0), B => ram_0_0_port, S => n99, Y => n95);
   U104 : na210 port map( A => write, B => n100, Y => n99);
   U105 : mu111 port map( A => d_in(3), B => ram_1_3_port, S => n101, Y => n94)
                           ;
   U106 : mu111 port map( A => d_in(2), B => ram_1_2_port, S => n101, Y => n93)
                           ;
   U107 : mu111 port map( A => d_in(1), B => ram_1_1_port, S => n101, Y => n92)
                           ;
   U108 : mu111 port map( A => d_in(0), B => ram_1_0_port, S => n101, Y => n91)
                           ;
   U109 : na210 port map( A => n102, B => write, Y => n101);
   U110 : mu111 port map( A => ram_2_3_port, B => d_in(3), S => n103, Y => n90)
                           ;
   U111 : mu111 port map( A => ram_2_2_port, B => d_in(2), S => n103, Y => n89)
                           ;
   U112 : mu111 port map( A => ram_2_1_port, B => d_in(1), S => n103, Y => n88)
                           ;
   U113 : mu111 port map( A => ram_2_0_port, B => d_in(0), S => n103, Y => n87)
                           ;
   U114 : no210 port map( A => n104, B => n105, Y => n103);
   U115 : mu111 port map( A => ram_3_3_port, B => d_in(3), S => n106, Y => n86)
                           ;
   U116 : mu111 port map( A => ram_3_2_port, B => d_in(2), S => n106, Y => n85)
                           ;
   U117 : mu111 port map( A => ram_3_1_port, B => d_in(1), S => n106, Y => n84)
                           ;
   U118 : mu111 port map( A => ram_3_0_port, B => d_in(0), S => n106, Y => n83)
                           ;
   U119 : no210 port map( A => n107, B => n105, Y => n106);
   U120 : iv110 port map( A => write, Y => n105);
   U121 : iv110 port map( A => n108, Y => d_out(3));
   U122 : na210 port map( A => n109, B => read, Y => n108);
   U123 : na310 port map( A => n110, B => n111, C => n112, Y => n109);
   U124 : na210 port map( A => n102, B => ram_1_3_port, Y => n112);
   U125 : na210 port map( A => n100, B => ram_0_3_port, Y => n111);
   U126 : iv110 port map( A => n113, Y => n110);
   U127 : na210 port map( A => n114, B => n115, Y => n113);
   U128 : na210 port map( A => ram_3_3_port, B => n116, Y => n115);
   U129 : na210 port map( A => ram_2_3_port, B => n117, Y => n114);
   U130 : iv110 port map( A => n118, Y => d_out(2));
   U131 : na210 port map( A => n119, B => read, Y => n118);
   U132 : na310 port map( A => n120, B => n121, C => n122, Y => n119);
   U133 : na210 port map( A => n102, B => ram_1_2_port, Y => n122);
   U134 : na210 port map( A => n100, B => ram_0_2_port, Y => n121);
   U135 : iv110 port map( A => n123, Y => n120);
   U136 : na210 port map( A => n124, B => n125, Y => n123);
   U137 : na210 port map( A => ram_3_2_port, B => n116, Y => n125);
   U138 : na210 port map( A => ram_2_2_port, B => n117, Y => n124);
   U139 : iv110 port map( A => n126, Y => d_out(1));
   U140 : na210 port map( A => n127, B => read, Y => n126);
   U141 : na310 port map( A => n128, B => n129, C => n130, Y => n127);
   U142 : na210 port map( A => n102, B => ram_1_1_port, Y => n130);
   U143 : na210 port map( A => n100, B => ram_0_1_port, Y => n129);
   U144 : iv110 port map( A => n131, Y => n128);
   U145 : na210 port map( A => n132, B => n133, Y => n131);
   U146 : na210 port map( A => ram_3_1_port, B => n116, Y => n133);
   U147 : na210 port map( A => ram_2_1_port, B => n117, Y => n132);
   U148 : iv110 port map( A => n134, Y => d_out(0));
   U149 : na210 port map( A => n135, B => read, Y => n134);
   U150 : na310 port map( A => n136, B => n137, C => n138, Y => n135);
   U151 : na210 port map( A => n102, B => ram_1_0_port, Y => n138);
   U152 : no210 port map( A => n139, B => a(1), Y => n102);
   U153 : na210 port map( A => n100, B => ram_0_0_port, Y => n137);
   U154 : no210 port map( A => a(0), B => a(1), Y => n100);
   U155 : iv110 port map( A => n140, Y => n136);
   U156 : na210 port map( A => n141, B => n142, Y => n140);
   U157 : na210 port map( A => ram_3_0_port, B => n116, Y => n142);
   U158 : iv110 port map( A => n107, Y => n116);
   U159 : na210 port map( A => a(1), B => a(0), Y => n107);
   U160 : na210 port map( A => ram_2_0_port, B => n117, Y => n141);
   U161 : iv110 port map( A => n104, Y => n117);
   U162 : na210 port map( A => a(1), B => n139, Y => n104);
   U163 : iv110 port map( A => a(0), Y => n139);

end synthesised;
