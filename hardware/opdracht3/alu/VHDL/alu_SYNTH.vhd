
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

architecture synthesised of alu is

   component iv110
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ex210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component no210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component na210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component na310
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component mu111
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component no310
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component dfn10
      port( D, CK : in std_logic;  Q : out std_logic);
   end component;
   
   component dfr11
      port( D, R, CK : in std_logic;  Q : out std_logic);
   end component;
   
   signal output_R_7_port, output_R_6_port, output_R_5_port, output_R_4_port, 
      output_R_3_port, output_R_2_port, output_R_1_port, output_R_0_port, 
      status_D_3_port, status_D_2_port, status_D_1_port, status_D_0_port, N115,
      N116, N117, N118, N119, N120, N121, N122, n18, U3_U4_Z_0, U3_U4_Z_1, 
      U3_U4_Z_2, U3_U4_Z_3, U3_U4_Z_4, U3_U4_Z_5, U3_U4_Z_6, U3_U4_Z_7, 
      U3_U5_Z_0, U3_U5_Z_1, U3_U5_Z_2, U3_U5_Z_3, U3_U5_Z_4, U3_U5_Z_5, 
      U3_U5_Z_6, U3_U5_Z_7, U3_U6_Z_0, n312, n313, n314, n315, n316, n317, n318
      , n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
      n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, 
      n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, 
      n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, 
      n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, 
      n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, 
      n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, 
      n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, 
      n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, 
      n427, n428, n429, n430, n431, n432, n433, n434, n435, n436, n437, n438, 
      n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, n450, 
      n451, n452, n453, n454, n455, n456, n457, n458, n459, n460, n461, n462, 
      n463, n464, n465, n466, n467, n468, n469, n470, n471, n472, n473, n474, 
      n475, n476, n477, n478, n479, n480, n481, n482, n483, n484, n485, n486, 
      n487, n488, n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, 
      n499, n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, 
      n511, n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522, 
      n523, n524, n525, n526, n527, n528, n529, n530, n531, n532, n533, n534, 
      n535, n536, n537, n538, n539, n540, n541, n542, n543, n544, n545, n546, 
      n547, n548, n549, n550, n551, n552, n553, n554, n555, n556, n557, n558, 
      n559, n560, n561, n562, n563, n564, n565, n566, n567, n568, n569, n570, 
      n571, n572, n573, n574, n575, n576, n577, n578, n579, n580, n581, n582, 
      n583, n584, n585, n586, n587, r26_n53, r26_n52, r26_n51, r26_n50, r26_n49
      , r26_n48, r26_n47, r26_n46, r26_n45, r26_n44, r26_n43, r26_n42, r26_n41,
      r26_n40, r26_n39, r26_n38, r26_n37, r26_n36, r26_n35, r26_n34, r26_n33, 
      r26_n32, r26_n31, r26_n30, r26_n29, r26_n28, r26_n27, r26_n26, r26_n25, 
      r26_n24, r26_n23, r26_n22, r26_n21, r26_n20, r26_n19, r26_n18, r26_n17, 
      r26_n16, r26_n15, r26_n14, r26_n13, r26_n12, r26_n11, r26_n10, r26_n9, 
      r26_n8, r26_n7, r26_n6, r26_n5, r26_n4, r26_n3, r26_n2, r26_n1 : 
      std_logic;

begin
   output_R <= ( output_R_7_port, output_R_6_port, output_R_5_port, 
      output_R_4_port, output_R_3_port, output_R_2_port, output_R_1_port, 
      output_R_0_port );
   status_D <= ( status_D_3_port, status_D_2_port, status_D_1_port, 
      status_D_0_port );
   
   n18 <= '0';
   Reg3_reg_0_inst : dfn10 port map( D => n321, CK => clk, Q => output_R_0_port
                           );
   Reg4_reg_0_inst : dfr11 port map( D => n320, R => U3_U6_Z_0, CK => clk, Q =>
                           status_D_0_port);
   Reg4_reg_1_inst : dfr11 port map( D => n319, R => U3_U6_Z_0, CK => clk, Q =>
                           status_D_1_port);
   Reg3_reg_1_inst : dfn10 port map( D => n318, CK => clk, Q => output_R_1_port
                           );
   Reg3_reg_2_inst : dfn10 port map( D => n317, CK => clk, Q => output_R_2_port
                           );
   Reg3_reg_3_inst : dfn10 port map( D => n316, CK => clk, Q => output_R_3_port
                           );
   Reg3_reg_4_inst : dfn10 port map( D => n315, CK => clk, Q => output_R_4_port
                           );
   Reg3_reg_5_inst : dfn10 port map( D => n314, CK => clk, Q => output_R_5_port
                           );
   Reg3_reg_6_inst : dfn10 port map( D => n313, CK => clk, Q => output_R_6_port
                           );
   Reg3_reg_7_inst : dfn10 port map( D => n312, CK => clk, Q => output_R_7_port
                           );
   status_D_3_port <= '0';
   status_D_2_port <= '0';
   U318 : iv110 port map( A => n332, Y => n322);
   U319 : na310 port map( A => n323, B => n324, C => n325, Y => n321);
   U320 : no310 port map( A => n326, B => n327, C => n328, Y => n325);
   U321 : mu111 port map( A => n329, B => n330, S => N115, Y => n328);
   U322 : na210 port map( A => n331, B => n332, Y => n330);
   U323 : na210 port map( A => n333, B => n334, Y => n331);
   U324 : no210 port map( A => n335, B => n334, Y => n329);
   U325 : iv110 port map( A => status_D_0_port, Y => n334);
   U326 : mu111 port map( A => n336, B => n337, S => n338, Y => n327);
   U327 : mu111 port map( A => n339, B => n340, S => input_B(0), Y => n326);
   U328 : na210 port map( A => n341, B => n342, Y => n340);
   U329 : mu111 port map( A => n343, B => n344, S => n338, Y => n341);
   U330 : na210 port map( A => n345, B => n346, Y => n339);
   U331 : mu111 port map( A => n344, B => n347, S => n338, Y => n345);
   U332 : na210 port map( A => input_A(1), B => n348, Y => n324);
   U333 : no210 port map( A => n349, B => n350, Y => n323);
   U334 : no210 port map( A => n351, B => n352, Y => n350);
   U335 : no210 port map( A => n353, B => n354, Y => n349);
   U336 : iv110 port map( A => output_R_0_port, Y => n354);
   U337 : mu111 port map( A => status_D_0_port, B => n355, S => n356, Y => n320
                           );
   U338 : mu111 port map( A => status_D_1_port, B => n357, S => n356, Y => n319
                           );
   U339 : na210 port map( A => n358, B => n359, Y => n356);
   U340 : mu111 port map( A => n360, B => n361, S => output_R_7_port, Y => n358
                           );
   U341 : na310 port map( A => n362, B => n363, C => n364, Y => n360);
   U342 : no310 port map( A => n365, B => output_R_4_port, C => output_R_3_port
                           , Y => n364);
   U343 : na210 port map( A => n366, B => n367, Y => n365);
   U344 : no210 port map( A => output_R_2_port, B => output_R_1_port, Y => n363
                           );
   U345 : no210 port map( A => output_R_0_port, B => n368, Y => n362);
   U346 : na310 port map( A => n369, B => n370, C => n371, Y => n318);
   U347 : no310 port map( A => n372, B => n373, C => n374, Y => n371);
   U348 : mu111 port map( A => n336, B => n337, S => n375, Y => n374);
   U349 : mu111 port map( A => n376, B => n377, S => input_B(1), Y => n373);
   U350 : na210 port map( A => n378, B => n342, Y => n377);
   U351 : mu111 port map( A => n343, B => n344, S => n375, Y => n378);
   U352 : na210 port map( A => n379, B => n346, Y => n376);
   U353 : mu111 port map( A => n344, B => n347, S => n375, Y => n379);
   U354 : na210 port map( A => n380, B => n381, Y => n372);
   U355 : na210 port map( A => input_A(2), B => n348, Y => n381);
   U356 : na210 port map( A => N116, B => U3_U6_Z_0, Y => n380);
   U357 : no310 port map( A => n382, B => n383, C => n384, Y => n370);
   U358 : no210 port map( A => n353, B => n385, Y => n384);
   U359 : iv110 port map( A => output_R_1_port, Y => n385);
   U360 : no210 port map( A => n386, B => n335, Y => n383);
   U361 : ex210 port map( A => n387, B => n388, Y => n386);
   U362 : ex210 port map( A => status_D_1_port, B => N116, Y => n388);
   U363 : no210 port map( A => n389, B => n390, Y => n382);
   U364 : iv110 port map( A => input_B(0), Y => n389);
   U365 : no210 port map( A => n391, B => n392, Y => n369);
   U366 : no210 port map( A => n351, B => n393, Y => n392);
   U367 : no210 port map( A => n338, B => n394, Y => n391);
   U368 : iv110 port map( A => input_A(0), Y => n338);
   U369 : na310 port map( A => n395, B => n396, C => n397, Y => n317);
   U370 : no310 port map( A => n398, B => n399, C => n400, Y => n397);
   U371 : mu111 port map( A => n336, B => n337, S => n401, Y => n400);
   U372 : mu111 port map( A => n402, B => n403, S => input_B(2), Y => n399);
   U373 : na210 port map( A => n404, B => n342, Y => n403);
   U374 : mu111 port map( A => n343, B => n344, S => n401, Y => n404);
   U375 : na210 port map( A => n405, B => n346, Y => n402);
   U376 : mu111 port map( A => n344, B => n347, S => n401, Y => n405);
   U377 : na210 port map( A => n406, B => n407, Y => n398);
   U378 : na210 port map( A => input_A(3), B => n348, Y => n407);
   U379 : mu111 port map( A => n408, B => n409, S => n410, Y => n406);
   U380 : na210 port map( A => n333, B => n411, Y => n409);
   U381 : no210 port map( A => n412, B => n413, Y => n396);
   U382 : no210 port map( A => n352, B => n390, Y => n413);
   U383 : iv110 port map( A => input_B(1), Y => n352);
   U384 : no210 port map( A => n353, B => n414, Y => n412);
   U385 : iv110 port map( A => output_R_2_port, Y => n414);
   U386 : no210 port map( A => n415, B => n416, Y => n395);
   U387 : no210 port map( A => n351, B => n417, Y => n416);
   U388 : no210 port map( A => n375, B => n394, Y => n415);
   U389 : iv110 port map( A => input_A(1), Y => n375);
   U390 : na310 port map( A => n418, B => n419, C => n420, Y => n316);
   U391 : no310 port map( A => n421, B => n422, C => n423, Y => n420);
   U392 : mu111 port map( A => n424, B => n425, S => N118, Y => n423);
   U393 : na210 port map( A => n408, B => n426, Y => n425);
   U394 : na210 port map( A => n333, B => n410, Y => n426);
   U395 : no210 port map( A => n427, B => U3_U6_Z_0, Y => n408);
   U396 : no210 port map( A => n411, B => n335, Y => n427);
   U397 : no310 port map( A => n410, B => n428, C => n335, Y => n424);
   U398 : iv110 port map( A => n411, Y => n428);
   U399 : iv110 port map( A => N117, Y => n410);
   U400 : iv110 port map( A => n429, Y => n422);
   U401 : na210 port map( A => n348, B => input_A(4), Y => n429);
   U402 : na210 port map( A => n430, B => n431, Y => n421);
   U403 : mu111 port map( A => n432, B => n433, S => input_B(3), Y => n431);
   U404 : no210 port map( A => n336, B => n434, Y => n433);
   U405 : mu111 port map( A => n435, B => n436, S => n437, Y => n434);
   U406 : no210 port map( A => n337, B => n438, Y => n432);
   U407 : mu111 port map( A => n436, B => n439, S => n437, Y => n438);
   U408 : mu111 port map( A => n342, B => n346, S => n437, Y => n430);
   U409 : no210 port map( A => n440, B => n441, Y => n419);
   U410 : no210 port map( A => n390, B => n393, Y => n441);
   U411 : iv110 port map( A => input_B(2), Y => n393);
   U412 : no210 port map( A => n353, B => n442, Y => n440);
   U413 : iv110 port map( A => output_R_3_port, Y => n442);
   U414 : no210 port map( A => n443, B => n444, Y => n418);
   U415 : no210 port map( A => n351, B => n445, Y => n444);
   U416 : no210 port map( A => n394, B => n401, Y => n443);
   U417 : iv110 port map( A => input_A(2), Y => n401);
   U418 : na310 port map( A => n446, B => n447, C => n448, Y => n315);
   U419 : no310 port map( A => n449, B => n450, C => n451, Y => n448);
   U420 : mu111 port map( A => n452, B => n453, S => N119, Y => n451);
   U421 : no210 port map( A => n335, B => n454, Y => n452);
   U422 : iv110 port map( A => n455, Y => n450);
   U423 : na210 port map( A => n348, B => input_A(5), Y => n455);
   U424 : na210 port map( A => n456, B => n457, Y => n449);
   U425 : mu111 port map( A => n458, B => n459, S => input_B(4), Y => n457);
   U426 : no210 port map( A => n336, B => n460, Y => n459);
   U427 : mu111 port map( A => n436, B => n435, S => input_A(4), Y => n460);
   U428 : no210 port map( A => n337, B => n461, Y => n458);
   U429 : mu111 port map( A => n439, B => n436, S => input_A(4), Y => n461);
   U430 : mu111 port map( A => n346, B => n342, S => input_A(4), Y => n456);
   U431 : no210 port map( A => n462, B => n463, Y => n447);
   U432 : no210 port map( A => n390, B => n417, Y => n463);
   U433 : iv110 port map( A => input_B(3), Y => n417);
   U434 : no210 port map( A => n353, B => n464, Y => n462);
   U435 : iv110 port map( A => output_R_4_port, Y => n464);
   U436 : no210 port map( A => n465, B => n466, Y => n446);
   U437 : no210 port map( A => n351, B => n467, Y => n466);
   U438 : no210 port map( A => n394, B => n437, Y => n465);
   U439 : iv110 port map( A => input_A(3), Y => n437);
   U440 : na210 port map( A => n468, B => n469, Y => n314);
   U441 : no310 port map( A => n470, B => n471, C => n472, Y => n469);
   U442 : no210 port map( A => n390, B => n445, Y => n472);
   U443 : iv110 port map( A => input_B(4), Y => n445);
   U444 : no210 port map( A => n353, B => n366, Y => n471);
   U445 : iv110 port map( A => output_R_5_port, Y => n366);
   U446 : na210 port map( A => n473, B => n474, Y => n470);
   U447 : na210 port map( A => input_A(4), B => n475, Y => n474);
   U448 : na210 port map( A => input_B(6), B => n476, Y => n473);
   U449 : no310 port map( A => n477, B => n478, C => n479, Y => n468);
   U450 : mu111 port map( A => n337, B => n336, S => input_A(5), Y => n479);
   U451 : mu111 port map( A => n480, B => n481, S => input_B(5), Y => n478);
   U452 : na210 port map( A => n482, B => n342, Y => n481);
   U453 : mu111 port map( A => n344, B => n343, S => input_A(5), Y => n482);
   U454 : na210 port map( A => n483, B => n346, Y => n480);
   U455 : mu111 port map( A => n347, B => n344, S => input_A(5), Y => n483);
   U456 : na210 port map( A => n484, B => n485, Y => n477);
   U457 : na210 port map( A => input_A(6), B => n348, Y => n485);
   U458 : mu111 port map( A => n486, B => n487, S => N120, Y => n484);
   U459 : no210 port map( A => n488, B => n453, Y => n487);
   U460 : na210 port map( A => n489, B => n332, Y => n453);
   U461 : na210 port map( A => n333, B => n454, Y => n489);
   U462 : no210 port map( A => N119, B => n335, Y => n488);
   U463 : na310 port map( A => n490, B => n333, C => N119, Y => n486);
   U464 : na310 port map( A => n491, B => n492, C => n493, Y => n313);
   U465 : no310 port map( A => n494, B => n495, C => n496, Y => n493);
   U466 : no210 port map( A => n390, B => n467, Y => n496);
   U467 : iv110 port map( A => input_B(5), Y => n467);
   U468 : no210 port map( A => n353, B => n367, Y => n495);
   U469 : iv110 port map( A => output_R_6_port, Y => n367);
   U470 : na210 port map( A => n497, B => n498, Y => n494);
   U471 : na210 port map( A => input_A(5), B => n475, Y => n498);
   U472 : iv110 port map( A => n394, Y => n475);
   U473 : na210 port map( A => input_B(7), B => n476, Y => n497);
   U474 : no210 port map( A => n499, B => n500, Y => n492);
   U475 : mu111 port map( A => n501, B => n502, S => N121, Y => n500);
   U476 : no210 port map( A => n335, B => n503, Y => n501);
   U477 : iv110 port map( A => n504, Y => n499);
   U478 : na210 port map( A => n348, B => input_A(7), Y => n504);
   U479 : no210 port map( A => n505, B => n506, Y => n491);
   U480 : mu111 port map( A => n336, B => n337, S => n507, Y => n506);
   U481 : mu111 port map( A => n508, B => n509, S => input_B(6), Y => n505);
   U482 : na210 port map( A => n510, B => n342, Y => n509);
   U483 : mu111 port map( A => n343, B => n344, S => n507, Y => n510);
   U484 : iv110 port map( A => n435, Y => n343);
   U485 : na210 port map( A => n511, B => n346, Y => n508);
   U486 : mu111 port map( A => n344, B => n347, S => n507, Y => n511);
   U487 : na310 port map( A => n512, B => n513, C => n514, Y => n312);
   U488 : no310 port map( A => n515, B => n516, C => n517, Y => n514);
   U489 : no210 port map( A => n390, B => n518, Y => n517);
   U490 : iv110 port map( A => input_B(6), Y => n518);
   U491 : no210 port map( A => n353, B => n519, Y => n516);
   U492 : iv110 port map( A => output_R_7_port, Y => n519);
   U493 : na310 port map( A => n359, B => n361, C => n520, Y => n353);
   U494 : no210 port map( A => U3_U6_Z_0, B => n357, Y => n520);
   U495 : iv110 port map( A => n368, Y => n357);
   U496 : iv110 port map( A => n355, Y => n361);
   U497 : na310 port map( A => n394, B => n335, C => n390, Y => n355);
   U498 : na210 port map( A => n521, B => n522, Y => n390);
   U499 : iv110 port map( A => n523, Y => n359);
   U500 : na310 port map( A => n524, B => n525, C => n526, Y => n523);
   U501 : no310 port map( A => n476, B => n348, C => n336, Y => n526);
   U502 : iv110 port map( A => n527, Y => n348);
   U503 : na210 port map( A => n528, B => n521, Y => n527);
   U504 : iv110 port map( A => n351, Y => n476);
   U505 : na310 port map( A => Op(1), B => n529, C => n521, Y => n351);
   U506 : na210 port map( A => Op(3), B => n530, Y => n525);
   U507 : no210 port map( A => n436, B => n439, Y => n524);
   U508 : no210 port map( A => n394, B => n507, Y => n515);
   U509 : iv110 port map( A => input_A(6), Y => n507);
   U510 : na210 port map( A => n521, B => n530, Y => n394);
   U511 : no210 port map( A => Op(3), B => Op(2), Y => n521);
   U512 : mu111 port map( A => n531, B => n532, S => input_B(7), Y => n513);
   U513 : no210 port map( A => n336, B => n533, Y => n532);
   U514 : mu111 port map( A => n436, B => n435, S => input_A(7), Y => n533);
   U515 : na210 port map( A => n368, B => n534, Y => n435);
   U516 : na210 port map( A => n439, B => n535, Y => n534);
   U517 : na210 port map( A => n536, B => n528, Y => n368);
   U518 : no210 port map( A => n337, B => n537, Y => n531);
   U519 : mu111 port map( A => n439, B => n436, S => input_A(7), Y => n537);
   U520 : iv110 port map( A => n344, Y => n436);
   U521 : na210 port map( A => n536, B => n522, Y => n344);
   U522 : iv110 port map( A => n347, Y => n439);
   U523 : na310 port map( A => Op(2), B => n529, C => Op(3), Y => n347);
   U524 : no210 port map( A => n538, B => n539, Y => n512);
   U525 : mu111 port map( A => n540, B => n541, S => N122, Y => n539);
   U526 : na210 port map( A => n542, B => n543, Y => n541);
   U527 : na210 port map( A => n333, B => n544, Y => n543);
   U528 : iv110 port map( A => n502, Y => n542);
   U529 : na210 port map( A => n545, B => n332, Y => n502);
   U530 : iv110 port map( A => U3_U6_Z_0, Y => n332);
   U531 : na210 port map( A => n333, B => n503, Y => n545);
   U532 : iv110 port map( A => n335, Y => n333);
   U533 : no310 port map( A => n544, B => n335, C => n503, Y => n540);
   U534 : na310 port map( A => N119, B => n490, C => N120, Y => n503);
   U535 : iv110 port map( A => n454, Y => n490);
   U536 : na310 port map( A => N117, B => n411, C => N118, Y => n454);
   U537 : na210 port map( A => n546, B => n547, Y => n411);
   U538 : na210 port map( A => status_D_1_port, B => n548, Y => n547);
   U539 : na210 port map( A => n549, B => n387, Y => n548);
   U540 : iv110 port map( A => N116, Y => n549);
   U541 : na210 port map( A => n550, B => N116, Y => n546);
   U542 : iv110 port map( A => n387, Y => n550);
   U543 : na210 port map( A => N115, B => status_D_0_port, Y => n387);
   U544 : iv110 port map( A => N121, Y => n544);
   U545 : mu111 port map( A => n337, B => n336, S => input_A(7), Y => n538);
   U546 : iv110 port map( A => n342, Y => n336);
   U547 : na310 port map( A => Op(1), B => n529, C => n536, Y => n342);
   U548 : no210 port map( A => n551, B => Op(2), Y => n536);
   U549 : iv110 port map( A => n346, Y => n337);
   U550 : na310 port map( A => Op(2), B => n530, C => Op(3), Y => n346);
   U551 : na210 port map( A => n552, B => n553, Y => U3_U6_Z_0);
   U552 : na210 port map( A => n554, B => n555, Y => U3_U5_Z_7);
   U553 : na210 port map( A => input_B(7), B => n556, Y => n555);
   U554 : na210 port map( A => n557, B => input_A(7), Y => n554);
   U555 : na210 port map( A => n558, B => n559, Y => U3_U5_Z_6);
   U556 : na210 port map( A => input_B(6), B => n556, Y => n559);
   U557 : na210 port map( A => n557, B => input_A(6), Y => n558);
   U558 : na210 port map( A => n560, B => n561, Y => U3_U5_Z_5);
   U559 : na210 port map( A => input_B(5), B => n556, Y => n561);
   U560 : na210 port map( A => n557, B => input_A(5), Y => n560);
   U561 : na210 port map( A => n562, B => n563, Y => U3_U5_Z_4);
   U562 : na210 port map( A => input_B(4), B => n556, Y => n563);
   U563 : na210 port map( A => n557, B => input_A(4), Y => n562);
   U564 : na210 port map( A => n564, B => n565, Y => U3_U5_Z_3);
   U565 : na210 port map( A => input_B(3), B => n556, Y => n565);
   U566 : na210 port map( A => n557, B => input_A(3), Y => n564);
   U567 : na210 port map( A => n566, B => n567, Y => U3_U5_Z_2);
   U568 : na210 port map( A => input_B(2), B => n556, Y => n567);
   U569 : na210 port map( A => n557, B => input_A(2), Y => n566);
   U570 : na210 port map( A => n568, B => n569, Y => U3_U5_Z_1);
   U571 : na210 port map( A => input_B(1), B => n556, Y => n569);
   U572 : na210 port map( A => n557, B => input_A(1), Y => n568);
   U573 : na210 port map( A => n570, B => n571, Y => U3_U5_Z_0);
   U574 : na210 port map( A => input_B(0), B => n556, Y => n571);
   U575 : na210 port map( A => n557, B => input_A(0), Y => n570);
   U576 : na210 port map( A => n572, B => n573, Y => U3_U4_Z_7);
   U577 : na210 port map( A => input_A(7), B => n556, Y => n573);
   U578 : na210 port map( A => n557, B => input_B(7), Y => n572);
   U579 : na210 port map( A => n574, B => n575, Y => U3_U4_Z_6);
   U580 : na210 port map( A => input_A(6), B => n556, Y => n575);
   U581 : na210 port map( A => n557, B => input_B(6), Y => n574);
   U582 : na210 port map( A => n576, B => n577, Y => U3_U4_Z_5);
   U583 : na210 port map( A => input_A(5), B => n556, Y => n577);
   U584 : na210 port map( A => n557, B => input_B(5), Y => n576);
   U585 : na210 port map( A => n578, B => n579, Y => U3_U4_Z_4);
   U586 : na210 port map( A => input_A(4), B => n556, Y => n579);
   U587 : na210 port map( A => n557, B => input_B(4), Y => n578);
   U588 : na210 port map( A => n580, B => n581, Y => U3_U4_Z_3);
   U589 : na210 port map( A => input_A(3), B => n556, Y => n581);
   U590 : na210 port map( A => n557, B => input_B(3), Y => n580);
   U591 : na210 port map( A => n582, B => n583, Y => U3_U4_Z_2);
   U592 : na210 port map( A => input_A(2), B => n556, Y => n583);
   U593 : na210 port map( A => n557, B => input_B(2), Y => n582);
   U594 : na210 port map( A => n584, B => n585, Y => U3_U4_Z_1);
   U595 : na210 port map( A => input_A(1), B => n556, Y => n585);
   U596 : na210 port map( A => n557, B => input_B(1), Y => n584);
   U597 : na210 port map( A => n586, B => n587, Y => U3_U4_Z_0);
   U598 : na210 port map( A => input_A(0), B => n556, Y => n587);
   U599 : na210 port map( A => n335, B => n553, Y => n556);
   U600 : na310 port map( A => n530, B => n551, C => Op(2), Y => n553);
   U601 : no210 port map( A => n529, B => Op(1), Y => n530);
   U602 : na310 port map( A => Op(2), B => n551, C => n528, Y => n335);
   U603 : no210 port map( A => Op(1), B => Op(0), Y => n528);
   U604 : na210 port map( A => n557, B => input_B(0), Y => n586);
   U605 : iv110 port map( A => n552, Y => n557);
   U606 : na310 port map( A => Op(2), B => n551, C => n522, Y => n552);
   U607 : no210 port map( A => n535, B => n529, Y => n522);
   U608 : iv110 port map( A => Op(0), Y => n529);
   U609 : iv110 port map( A => Op(1), Y => n535);
   U610 : iv110 port map( A => Op(3), Y => n551);
   r26_U61 : ex210 port map( A => r26_n9, B => U3_U5_Z_0, Y => r26_n52);
   r26_U60 : ex210 port map( A => U3_U4_Z_0, B => n322, Y => r26_n53);
   r26_U59 : ex210 port map( A => r26_n8, B => r26_n53, Y => N115);
   r26_U58 : na210 port map( A => n322, B => r26_n8, Y => r26_n49);
   r26_U57 : na210 port map( A => r26_n52, B => r26_n9, Y => r26_n51);
   r26_U56 : na210 port map( A => U3_U4_Z_0, B => r26_n51, Y => r26_n50);
   r26_U55 : na210 port map( A => r26_n49, B => r26_n50, Y => r26_n46);
   r26_U54 : ex210 port map( A => U3_U4_Z_1, B => r26_n46, Y => r26_n48);
   r26_U53 : ex210 port map( A => n322, B => U3_U5_Z_1, Y => r26_n47);
   r26_U52 : ex210 port map( A => r26_n48, B => r26_n47, Y => N116);
   r26_U51 : na210 port map( A => r26_n47, B => r26_n46, Y => r26_n43);
   r26_U50 : no210 port map( A => r26_n46, B => r26_n47, Y => r26_n45);
   r26_U49 : na210 port map( A => U3_U4_Z_1, B => r26_n7, Y => r26_n44);
   r26_U48 : na210 port map( A => r26_n43, B => r26_n44, Y => r26_n40);
   r26_U47 : ex210 port map( A => r26_n40, B => U3_U4_Z_2, Y => r26_n42);
   r26_U46 : ex210 port map( A => n322, B => U3_U5_Z_2, Y => r26_n41);
   r26_U45 : ex210 port map( A => r26_n42, B => r26_n41, Y => N117);
   r26_U44 : na210 port map( A => r26_n41, B => r26_n40, Y => r26_n37);
   r26_U43 : no210 port map( A => r26_n40, B => r26_n41, Y => r26_n39);
   r26_U42 : na210 port map( A => U3_U4_Z_2, B => r26_n6, Y => r26_n38);
   r26_U41 : na210 port map( A => r26_n37, B => r26_n38, Y => r26_n34);
   r26_U40 : ex210 port map( A => U3_U4_Z_3, B => r26_n34, Y => r26_n36);
   r26_U39 : ex210 port map( A => n322, B => U3_U5_Z_3, Y => r26_n35);
   r26_U38 : ex210 port map( A => r26_n36, B => r26_n35, Y => N118);
   r26_U37 : na210 port map( A => r26_n35, B => r26_n34, Y => r26_n31);
   r26_U36 : no210 port map( A => r26_n34, B => r26_n35, Y => r26_n33);
   r26_U35 : na210 port map( A => U3_U4_Z_3, B => r26_n5, Y => r26_n32);
   r26_U34 : na210 port map( A => r26_n31, B => r26_n32, Y => r26_n28);
   r26_U33 : ex210 port map( A => r26_n28, B => U3_U4_Z_4, Y => r26_n30);
   r26_U32 : ex210 port map( A => n322, B => U3_U5_Z_4, Y => r26_n29);
   r26_U31 : ex210 port map( A => r26_n30, B => r26_n29, Y => N119);
   r26_U30 : na210 port map( A => r26_n29, B => r26_n28, Y => r26_n25);
   r26_U29 : no210 port map( A => r26_n28, B => r26_n29, Y => r26_n27);
   r26_U28 : na210 port map( A => U3_U4_Z_4, B => r26_n4, Y => r26_n26);
   r26_U27 : na210 port map( A => r26_n25, B => r26_n26, Y => r26_n22);
   r26_U26 : ex210 port map( A => U3_U4_Z_5, B => r26_n22, Y => r26_n24);
   r26_U25 : ex210 port map( A => n322, B => U3_U5_Z_5, Y => r26_n23);
   r26_U24 : ex210 port map( A => r26_n24, B => r26_n23, Y => N120);
   r26_U23 : na210 port map( A => r26_n23, B => r26_n22, Y => r26_n19);
   r26_U22 : no210 port map( A => r26_n22, B => r26_n23, Y => r26_n21);
   r26_U21 : na210 port map( A => U3_U4_Z_5, B => r26_n3, Y => r26_n20);
   r26_U20 : na210 port map( A => r26_n19, B => r26_n20, Y => r26_n15);
   r26_U19 : ex210 port map( A => r26_n15, B => U3_U4_Z_6, Y => r26_n18);
   r26_U18 : ex210 port map( A => n322, B => U3_U5_Z_6, Y => r26_n16);
   r26_U17 : ex210 port map( A => r26_n18, B => r26_n16, Y => N121);
   r26_U16 : no210 port map( A => r26_n16, B => r26_n15, Y => r26_n17);
   r26_U15 : no210 port map( A => r26_n17, B => r26_n2, Y => r26_n13);
   r26_U14 : na210 port map( A => r26_n15, B => r26_n16, Y => r26_n14);
   r26_U13 : no210 port map( A => r26_n13, B => r26_n1, Y => r26_n12);
   r26_U12 : ex210 port map( A => r26_n9, B => r26_n12, Y => r26_n10);
   r26_U11 : ex210 port map( A => U3_U5_Z_7, B => U3_U4_Z_7, Y => r26_n11);
   r26_U10 : ex210 port map( A => r26_n10, B => r26_n11, Y => N122);
   r26_U9 : iv110 port map( A => n322, Y => r26_n9);
   r26_U8 : iv110 port map( A => r26_n52, Y => r26_n8);
   r26_U7 : iv110 port map( A => r26_n45, Y => r26_n7);
   r26_U6 : iv110 port map( A => r26_n39, Y => r26_n6);
   r26_U5 : iv110 port map( A => r26_n33, Y => r26_n5);
   r26_U4 : iv110 port map( A => r26_n27, Y => r26_n4);
   r26_U3 : iv110 port map( A => r26_n21, Y => r26_n3);
   r26_U2 : iv110 port map( A => U3_U4_Z_6, Y => r26_n2);
   r26_U1 : iv110 port map( A => r26_n14, Y => r26_n1);

end synthesised;



