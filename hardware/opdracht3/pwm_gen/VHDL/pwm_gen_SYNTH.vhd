
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

architecture synthesised of pwm_gen is

   component iv110
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ex210
      port( A, B : in std_logic;  Y : out std_logic);
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
   
   component dfr11
      port( D, R, CK : in std_logic;  Q : out std_logic);
   end component;
   
   signal count_3_port, count_2_port, count_1_port, count_0_port, N16, N17, N18
      , N19, N25, N26, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, 
      n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61 : 
      std_logic;

begin
   
   count_reg_0_inst : dfr11 port map( D => N16, R => reset, CK => clk, Q => 
                           count_0_port);
   count_reg_1_inst : dfr11 port map( D => N17, R => reset, CK => clk, Q => 
                           count_1_port);
   count_reg_2_inst : dfr11 port map( D => N18, R => reset, CK => clk, Q => 
                           count_2_port);
   count_reg_3_inst : dfr11 port map( D => N19, R => reset, CK => clk, Q => 
                           count_3_port);
   pulse_reg : dfr11 port map( D => N25, R => N26, CK => clk, Q => pulse);
   U38 : na210 port map( A => enabled, B => n38, Y => N26);
   U39 : na210 port map( A => n39, B => n40, Y => N25);
   U40 : na210 port map( A => n41, B => n42, Y => n40);
   U41 : iv110 port map( A => n43, Y => n42);
   U42 : no210 port map( A => n44, B => width(3), Y => n43);
   U43 : na210 port map( A => n45, B => n46, Y => n41);
   U44 : iv110 port map( A => n47, Y => n46);
   U45 : no210 port map( A => n48, B => count_2_port, Y => n47);
   U46 : na310 port map( A => n49, B => n50, C => n51, Y => n45);
   U47 : na210 port map( A => count_2_port, B => n48, Y => n51);
   U48 : iv110 port map( A => width(2), Y => n48);
   U49 : iv110 port map( A => n52, Y => n50);
   U50 : no210 port map( A => n53, B => width(1), Y => n52);
   U51 : no210 port map( A => n54, B => count_1_port, Y => n53);
   U52 : na210 port map( A => count_1_port, B => n54, Y => n49);
   U53 : na210 port map( A => width(0), B => n55, Y => n54);
   U54 : na210 port map( A => width(3), B => n56, Y => n39);
   U55 : na210 port map( A => count_3_port, B => n57, Y => n56);
   U56 : na310 port map( A => width(0), B => width(2), C => width(1), Y => n57)
                           ;
   U57 : ex210 port map( A => n44, B => n58, Y => N19);
   U58 : na210 port map( A => n59, B => count_2_port, Y => n58);
   U59 : iv110 port map( A => count_3_port, Y => n44);
   U60 : ex210 port map( A => count_2_port, B => n59, Y => N18);
   U61 : no210 port map( A => n60, B => n61, Y => n59);
   U62 : ex210 port map( A => n61, B => n60, Y => N17);
   U63 : na210 port map( A => count_0_port, B => n38, Y => n60);
   U64 : iv110 port map( A => reset, Y => n38);
   U65 : iv110 port map( A => count_1_port, Y => n61);
   U66 : ex210 port map( A => n55, B => reset, Y => N16);
   U67 : iv110 port map( A => count_0_port, Y => n55);

end synthesised;



