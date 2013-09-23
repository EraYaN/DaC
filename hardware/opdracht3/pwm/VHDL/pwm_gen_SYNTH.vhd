
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

architecture synthesised of pwm_gen is

   component iv110
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component no210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ex210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component na210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component na310
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component dfr11
      port( D, R, CK : in std_logic;  Q : out std_logic);
   end component;
   
   signal count_3_port, count_2_port, count_1_port, count_0_port, N17, N18, N19
      , N20, N26, n17_port, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, 
      n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68
      , n69, n70, n71, n72, n73 : std_logic;

begin
   
   count_reg_0_inst : dfr11 port map( D => N17, R => reset, CK => clk, Q => 
                           count_0_port);
   count_reg_1_inst : dfr11 port map( D => N18, R => reset, CK => clk, Q => 
                           count_1_port);
   count_reg_2_inst : dfr11 port map( D => N19, R => reset, CK => clk, Q => 
                           count_2_port);
   count_reg_3_inst : dfr11 port map( D => N20, R => reset, CK => clk, Q => 
                           count_3_port);
   pulse_reg : dfr11 port map( D => N26, R => n17_port, CK => clk, Q => pulse);
   U43 : na210 port map( A => n44, B => n45, Y => N26);
   U44 : na210 port map( A => n46, B => n47, Y => n45);
   U45 : na210 port map( A => count_3_port, B => n48, Y => n47);
   U46 : iv110 port map( A => width(3), Y => n48);
   U47 : na210 port map( A => n49, B => n50, Y => n46);
   U48 : na210 port map( A => width(2), B => n51, Y => n50);
   U49 : na310 port map( A => n52, B => n53, C => n54, Y => n49);
   U50 : iv110 port map( A => n55, Y => n54);
   U51 : no210 port map( A => n51, B => width(2), Y => n55);
   U52 : iv110 port map( A => count_2_port, Y => n51);
   U53 : iv110 port map( A => n56, Y => n53);
   U54 : no210 port map( A => n57, B => width(1), Y => n56);
   U55 : no210 port map( A => n58, B => count_1_port, Y => n57);
   U56 : na210 port map( A => count_1_port, B => n58, Y => n52);
   U57 : na210 port map( A => width(0), B => n59, Y => n58);
   U58 : na210 port map( A => width(3), B => n60, Y => n44);
   U59 : na210 port map( A => count_3_port, B => n61, Y => n60);
   U60 : na310 port map( A => width(0), B => width(2), C => width(1), Y => n61)
                           ;
   U61 : na210 port map( A => n62, B => n63, Y => N20);
   U62 : na310 port map( A => count_2_port, B => n64, C => n65, Y => n63);
   U63 : na210 port map( A => count_3_port, B => n66, Y => n62);
   U64 : iv110 port map( A => n67, Y => n66);
   U65 : no210 port map( A => n64, B => n68, Y => n67);
   U66 : iv110 port map( A => n65, Y => n68);
   U67 : na210 port map( A => count_2_port, B => count_3_port, Y => n64);
   U68 : ex210 port map( A => count_2_port, B => n65, Y => N19);
   U69 : no210 port map( A => n69, B => n70, Y => n65);
   U70 : iv110 port map( A => count_1_port, Y => n70);
   U71 : iv110 port map( A => n71, Y => n69);
   U72 : ex210 port map( A => count_1_port, B => n71, Y => N18);
   U73 : no210 port map( A => n59, B => n17_port, Y => n71);
   U74 : iv110 port map( A => n72, Y => n17_port);
   U75 : iv110 port map( A => count_0_port, Y => n59);
   U76 : ex210 port map( A => count_0_port, B => n72, Y => N17);
   U77 : no210 port map( A => n73, B => reset, Y => n72);
   U78 : iv110 port map( A => enabled, Y => n73);

end synthesised;



