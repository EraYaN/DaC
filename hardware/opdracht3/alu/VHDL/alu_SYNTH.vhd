
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
   
   signal X_Logic0_port, output_R_7_port, output_R_6_port, output_R_5_port, 
      output_R_4_port, output_R_3_port, output_R_2_port, output_R_1_port, 
      output_R_0_port, status_D_1_port, status_D_0_port, N125, N126, N127, N128
      , N129, N130, N133, N134, N135, N136, N137, N138, N139, N140, U3_U1_Z_0, 
      U3_U1_Z_1, U3_U1_Z_2, U3_U1_Z_3, U3_U1_Z_4, U3_U1_Z_5, U3_U1_Z_6, 
      U3_U1_Z_7, U3_U2_Z_0, U3_U2_Z_1, U3_U2_Z_2, U3_U2_Z_3, U3_U2_Z_4, 
      U3_U2_Z_5, U3_U2_Z_6, U3_U2_Z_7, U3_U3_Z_0, n30, n62, n67, n68, n103, 
      n125_port, n146, n167, n188, n209, n282, n283, n284, n285, n286, n287, 
      n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, 
      n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, 
      n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, 
      n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, 
      n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, 
      n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, 
      n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, 
      n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, 
      n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, 
      n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, 
      n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419, 
      n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, 
      n432, n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, 
      n444, n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, 
      n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, 
      n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479, 
      n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, 
      n492, n493, n494, n495, n496, n497, n498, n499, n500, r22_n53, r22_n52, 
      r22_n51, r22_n50, r22_n49, r22_n48, r22_n47, r22_n46, r22_n45, r22_n44, 
      r22_n43, r22_n42, r22_n41, r22_n40, r22_n39, r22_n38, r22_n37, r22_n36, 
      r22_n35, r22_n34, r22_n33, r22_n32, r22_n31, r22_n30, r22_n29, r22_n28, 
      r22_n27, r22_n26, r22_n25, r22_n24, r22_n23, r22_n22, r22_n21, r22_n20, 
      r22_n19, r22_n18, r22_n17, r22_n16, r22_n15, r22_n14, r22_n13, r22_n12, 
      r22_n11, r22_n10, r22_n9, r22_n8, r22_n7, r22_n6, r22_n5, r22_n4, r22_n3,
      r22_n2, r22_n1 : std_logic;

begin
   output_R <= ( output_R_7_port, output_R_6_port, output_R_5_port, 
      output_R_4_port, output_R_3_port, output_R_2_port, output_R_1_port, 
      output_R_0_port );
   status_D <= ( X_Logic0_port, X_Logic0_port, status_D_1_port, status_D_0_port
      );
   
   X_Logic0_port <= '0';
   n30 <= '0';
   U39 : no310 port map( A => output_R_6_port, B => output_R_7_port, C => 
                           output_R_5_port, Y => n62);
   U43 : no210 port map( A => n67, B => n68, Y => status_D_0_port);
   U72 : na210 port map( A => N130, B => n500, Y => n103);
   U94 : na210 port map( A => N129, B => n500, Y => n125_port);
   U116 : na210 port map( A => N128, B => n500, Y => n146);
   U138 : na210 port map( A => N127, B => n500, Y => n167);
   U160 : na210 port map( A => N126, B => n500, Y => n188);
   U182 : na210 port map( A => N125, B => n500, Y => n209);
   U285 : iv110 port map( A => n343, Y => n282);
   U286 : na310 port map( A => n283, B => n284, C => n285, Y => output_R_6_port
                           );
   U287 : no310 port map( A => n286, B => n287, C => n288, Y => n285);
   U288 : mu111 port map( A => n289, B => n290, S => input_A(6), Y => n288);
   U289 : mu111 port map( A => n291, B => n292, S => input_B(6), Y => n287);
   U290 : na210 port map( A => n293, B => n294, Y => n292);
   U291 : mu111 port map( A => n295, B => n296, S => input_A(6), Y => n293);
   U292 : na210 port map( A => n297, B => n298, Y => n291);
   U293 : mu111 port map( A => n299, B => n295, S => input_A(6), Y => n297);
   U294 : na210 port map( A => n103, B => n300, Y => n286);
   U295 : na210 port map( A => N139, B => U3_U3_Z_0, Y => n300);
   U296 : no210 port map( A => n301, B => n302, Y => n284);
   U297 : no210 port map( A => n303, B => n304, Y => n302);
   U298 : no210 port map( A => n305, B => n306, Y => n301);
   U299 : iv110 port map( A => input_A(7), Y => n306);
   U300 : no210 port map( A => n307, B => n308, Y => n283);
   U301 : no210 port map( A => n309, B => n310, Y => n308);
   U302 : iv110 port map( A => input_B(7), Y => n310);
   U303 : no210 port map( A => n311, B => n312, Y => n307);
   U304 : na310 port map( A => n313, B => n314, C => n315, Y => output_R_5_port
                           );
   U305 : no310 port map( A => n316, B => n317, C => n318, Y => n315);
   U306 : mu111 port map( A => n289, B => n290, S => input_A(5), Y => n318);
   U307 : mu111 port map( A => n319, B => n320, S => input_B(5), Y => n317);
   U308 : na210 port map( A => n321, B => n294, Y => n320);
   U309 : mu111 port map( A => n295, B => n296, S => input_A(5), Y => n321);
   U310 : na210 port map( A => n322, B => n298, Y => n319);
   U311 : mu111 port map( A => n299, B => n295, S => input_A(5), Y => n322);
   U312 : na210 port map( A => n125_port, B => n323, Y => n316);
   U313 : na210 port map( A => N138, B => U3_U3_Z_0, Y => n323);
   U314 : no210 port map( A => n324, B => n325, Y => n314);
   U315 : no210 port map( A => n303, B => n326, Y => n325);
   U316 : no210 port map( A => n305, B => n327, Y => n324);
   U317 : no210 port map( A => n328, B => n329, Y => n313);
   U318 : no210 port map( A => n309, B => n330, Y => n329);
   U319 : no210 port map( A => n312, B => n331, Y => n328);
   U320 : iv110 port map( A => n332, Y => n68);
   U321 : na310 port map( A => n333, B => n312, C => n303, Y => n332);
   U322 : iv110 port map( A => output_R_7_port, Y => n67);
   U323 : na310 port map( A => n334, B => n335, C => n336, Y => output_R_7_port
                           );
   U324 : no310 port map( A => n337, B => n338, C => n339, Y => n336);
   U325 : no210 port map( A => n312, B => n327, Y => n339);
   U326 : iv110 port map( A => input_A(6), Y => n327);
   U327 : no210 port map( A => n303, B => n330, Y => n338);
   U328 : iv110 port map( A => input_B(6), Y => n330);
   U329 : mu111 port map( A => n340, B => n341, S => N140, Y => n337);
   U330 : na210 port map( A => n342, B => n343, Y => n341);
   U331 : na210 port map( A => n500, B => n344, Y => n342);
   U332 : na210 port map( A => N139, B => n345, Y => n344);
   U333 : no310 port map( A => n346, B => n333, C => n347, Y => n340);
   U334 : iv110 port map( A => N139, Y => n346);
   U335 : mu111 port map( A => n348, B => n349, S => input_B(7), Y => n335);
   U336 : no210 port map( A => n290, B => n350, Y => n349);
   U337 : mu111 port map( A => n351, B => n352, S => input_A(7), Y => n350);
   U338 : no210 port map( A => n289, B => n353, Y => n348);
   U339 : mu111 port map( A => n354, B => n351, S => input_A(7), Y => n353);
   U340 : mu111 port map( A => n298, B => n294, S => input_A(7), Y => n334);
   U341 : na210 port map( A => n355, B => n356, Y => U3_U2_Z_7);
   U342 : na210 port map( A => input_B(7), B => n357, Y => n356);
   U343 : na210 port map( A => n358, B => input_A(7), Y => n355);
   U344 : na210 port map( A => n359, B => n360, Y => U3_U2_Z_6);
   U345 : na210 port map( A => input_B(6), B => n357, Y => n360);
   U346 : na210 port map( A => n358, B => input_A(6), Y => n359);
   U347 : na210 port map( A => n361, B => n362, Y => U3_U2_Z_5);
   U348 : na210 port map( A => input_B(5), B => n357, Y => n362);
   U349 : na210 port map( A => n358, B => input_A(5), Y => n361);
   U350 : na210 port map( A => n363, B => n364, Y => U3_U2_Z_4);
   U351 : na210 port map( A => input_B(4), B => n357, Y => n364);
   U352 : na210 port map( A => n358, B => input_A(4), Y => n363);
   U353 : na210 port map( A => n365, B => n366, Y => U3_U2_Z_3);
   U354 : na210 port map( A => input_B(3), B => n357, Y => n366);
   U355 : na210 port map( A => n358, B => input_A(3), Y => n365);
   U356 : na210 port map( A => n367, B => n368, Y => U3_U2_Z_2);
   U357 : na210 port map( A => input_B(2), B => n357, Y => n368);
   U358 : na210 port map( A => n358, B => input_A(2), Y => n367);
   U359 : na210 port map( A => n369, B => n370, Y => U3_U2_Z_1);
   U360 : na210 port map( A => input_B(1), B => n357, Y => n370);
   U361 : na210 port map( A => n358, B => input_A(1), Y => n369);
   U362 : na210 port map( A => n371, B => n372, Y => U3_U2_Z_0);
   U363 : na210 port map( A => input_B(0), B => n357, Y => n372);
   U364 : na210 port map( A => n358, B => input_A(0), Y => n371);
   U365 : na210 port map( A => n373, B => n374, Y => U3_U1_Z_7);
   U366 : na210 port map( A => input_A(7), B => n357, Y => n374);
   U367 : na210 port map( A => n358, B => input_B(7), Y => n373);
   U368 : na210 port map( A => n375, B => n376, Y => U3_U1_Z_6);
   U369 : na210 port map( A => input_A(6), B => n357, Y => n376);
   U370 : na210 port map( A => n358, B => input_B(6), Y => n375);
   U371 : na210 port map( A => n377, B => n378, Y => U3_U1_Z_5);
   U372 : na210 port map( A => input_A(5), B => n357, Y => n378);
   U373 : na210 port map( A => n358, B => input_B(5), Y => n377);
   U374 : na210 port map( A => n379, B => n380, Y => U3_U1_Z_4);
   U375 : na210 port map( A => input_A(4), B => n357, Y => n380);
   U376 : na210 port map( A => n358, B => input_B(4), Y => n379);
   U377 : na210 port map( A => n381, B => n382, Y => U3_U1_Z_3);
   U378 : na210 port map( A => input_A(3), B => n357, Y => n382);
   U379 : na210 port map( A => n358, B => input_B(3), Y => n381);
   U380 : na210 port map( A => n383, B => n384, Y => U3_U1_Z_2);
   U381 : na210 port map( A => input_A(2), B => n357, Y => n384);
   U382 : na210 port map( A => n358, B => input_B(2), Y => n383);
   U383 : na210 port map( A => n385, B => n386, Y => U3_U1_Z_1);
   U384 : na210 port map( A => input_A(1), B => n357, Y => n386);
   U385 : na210 port map( A => n358, B => input_B(1), Y => n385);
   U386 : na210 port map( A => n387, B => n388, Y => U3_U1_Z_0);
   U387 : na210 port map( A => input_A(0), B => n357, Y => n388);
   U388 : na210 port map( A => n333, B => n389, Y => n357);
   U389 : na210 port map( A => n358, B => input_B(0), Y => n387);
   U390 : iv110 port map( A => n390, Y => n358);
   U391 : ex210 port map( A => N139, B => n345, Y => N130);
   U392 : iv110 port map( A => n347, Y => n345);
   U393 : na310 port map( A => n391, B => N137, C => N138, Y => n347);
   U394 : ex210 port map( A => n392, B => n393, Y => N129);
   U395 : na210 port map( A => n391, B => N137, Y => n393);
   U396 : iv110 port map( A => N138, Y => n392);
   U397 : ex210 port map( A => N137, B => n391, Y => N128);
   U398 : no210 port map( A => n394, B => n395, Y => n391);
   U399 : ex210 port map( A => n395, B => n394, Y => N127);
   U400 : na210 port map( A => N135, B => n396, Y => n394);
   U401 : iv110 port map( A => N136, Y => n395);
   U402 : ex210 port map( A => n396, B => N135, Y => N126);
   U403 : na210 port map( A => n397, B => n398, Y => n396);
   U404 : na210 port map( A => N134, B => n399, Y => n398);
   U405 : na210 port map( A => n400, B => n401, Y => n399);
   U406 : na210 port map( A => status_D_1_port, B => n402, Y => n397);
   U407 : ex210 port map( A => n402, B => n403, Y => N125);
   U408 : ex210 port map( A => N134, B => status_D_1_port, Y => n403);
   U409 : iv110 port map( A => n401, Y => status_D_1_port);
   U410 : na210 port map( A => n404, B => n405, Y => n401);
   U411 : no310 port map( A => n406, B => output_R_3_port, C => output_R_2_port
                           , Y => n405);
   U412 : na310 port map( A => n407, B => n408, C => n409, Y => output_R_2_port
                           );
   U413 : no310 port map( A => n410, B => n411, C => n412, Y => n409);
   U414 : mu111 port map( A => n289, B => n290, S => input_A(2), Y => n412);
   U415 : mu111 port map( A => n413, B => n414, S => input_B(2), Y => n411);
   U416 : na210 port map( A => n415, B => n294, Y => n414);
   U417 : mu111 port map( A => n295, B => n296, S => input_A(2), Y => n415);
   U418 : na210 port map( A => n416, B => n298, Y => n413);
   U419 : mu111 port map( A => n299, B => n295, S => input_A(2), Y => n416);
   U420 : na210 port map( A => n188, B => n417, Y => n410);
   U421 : na210 port map( A => N135, B => U3_U3_Z_0, Y => n417);
   U422 : no210 port map( A => n418, B => n419, Y => n408);
   U423 : no210 port map( A => n303, B => n420, Y => n419);
   U424 : no210 port map( A => n305, B => n421, Y => n418);
   U425 : no210 port map( A => n422, B => n423, Y => n407);
   U426 : no210 port map( A => n424, B => n309, Y => n423);
   U427 : no210 port map( A => n312, B => n425, Y => n422);
   U428 : na310 port map( A => n426, B => n427, C => n428, Y => output_R_3_port
                           );
   U429 : no310 port map( A => n429, B => n430, C => n431, Y => n428);
   U430 : mu111 port map( A => n289, B => n290, S => input_A(3), Y => n431);
   U431 : mu111 port map( A => n432, B => n433, S => input_B(3), Y => n430);
   U432 : na210 port map( A => n434, B => n294, Y => n433);
   U433 : mu111 port map( A => n295, B => n296, S => input_A(3), Y => n434);
   U434 : na210 port map( A => n435, B => n298, Y => n432);
   U435 : mu111 port map( A => n299, B => n295, S => input_A(3), Y => n435);
   U436 : na210 port map( A => n167, B => n436, Y => n429);
   U437 : na210 port map( A => N136, B => U3_U3_Z_0, Y => n436);
   U438 : no210 port map( A => n437, B => n438, Y => n427);
   U439 : no210 port map( A => n303, B => n439, Y => n438);
   U440 : no210 port map( A => n305, B => n331, Y => n437);
   U441 : iv110 port map( A => input_A(4), Y => n331);
   U442 : no210 port map( A => n440, B => n441, Y => n426);
   U443 : no210 port map( A => n309, B => n326, Y => n441);
   U444 : iv110 port map( A => input_B(4), Y => n326);
   U445 : no210 port map( A => n312, B => n442, Y => n440);
   U446 : na210 port map( A => n443, B => n444, Y => n406);
   U447 : iv110 port map( A => output_R_4_port, Y => n443);
   U448 : na310 port map( A => n445, B => n446, C => n447, Y => output_R_4_port
                           );
   U449 : no310 port map( A => n448, B => n449, C => n450, Y => n447);
   U450 : mu111 port map( A => n289, B => n290, S => input_A(4), Y => n450);
   U451 : mu111 port map( A => n451, B => n452, S => input_B(4), Y => n449);
   U452 : na210 port map( A => n453, B => n294, Y => n452);
   U453 : mu111 port map( A => n295, B => n296, S => input_A(4), Y => n453);
   U454 : na210 port map( A => n454, B => n298, Y => n451);
   U455 : mu111 port map( A => n299, B => n295, S => input_A(4), Y => n454);
   U456 : na210 port map( A => n146, B => n455, Y => n448);
   U457 : na210 port map( A => N137, B => U3_U3_Z_0, Y => n455);
   U458 : no210 port map( A => n456, B => n457, Y => n446);
   U459 : no210 port map( A => n303, B => n424, Y => n457);
   U460 : iv110 port map( A => input_B(3), Y => n424);
   U461 : no210 port map( A => n305, B => n311, Y => n456);
   U462 : iv110 port map( A => input_A(5), Y => n311);
   U463 : no210 port map( A => n458, B => n459, Y => n445);
   U464 : no210 port map( A => n309, B => n304, Y => n459);
   U465 : iv110 port map( A => input_B(5), Y => n304);
   U466 : no210 port map( A => n312, B => n421, Y => n458);
   U467 : iv110 port map( A => input_A(3), Y => n421);
   U468 : no310 port map( A => n460, B => output_R_1_port, C => output_R_0_port
                           , Y => n404);
   U469 : na310 port map( A => n461, B => n462, C => n463, Y => output_R_0_port
                           );
   U470 : no310 port map( A => n464, B => n465, C => n466, Y => n463);
   U471 : no210 port map( A => n309, B => n420, Y => n466);
   U472 : iv110 port map( A => input_B(1), Y => n420);
   U473 : no210 port map( A => n305, B => n425, Y => n465);
   U474 : iv110 port map( A => input_A(1), Y => n425);
   U475 : mu111 port map( A => n467, B => n468, S => N133, Y => n464);
   U476 : na210 port map( A => n469, B => n343, Y => n468);
   U477 : iv110 port map( A => U3_U3_Z_0, Y => n343);
   U478 : na210 port map( A => n500, B => n470, Y => n469);
   U479 : iv110 port map( A => n333, Y => n500);
   U480 : no210 port map( A => n333, B => n470, Y => n467);
   U481 : iv110 port map( A => status_D_0_port, Y => n470);
   U482 : na310 port map( A => Op(2), B => n471, C => n472, Y => n333);
   U483 : no210 port map( A => Op(3), B => Op(1), Y => n472);
   U484 : mu111 port map( A => n473, B => n474, S => n475, Y => n462);
   U485 : no210 port map( A => n289, B => n476, Y => n474);
   U486 : mu111 port map( A => n351, B => n354, S => n477, Y => n476);
   U487 : iv110 port map( A => n299, Y => n354);
   U488 : no210 port map( A => n290, B => n478, Y => n473);
   U489 : mu111 port map( A => n352, B => n351, S => n477, Y => n478);
   U490 : iv110 port map( A => n295, Y => n351);
   U491 : mu111 port map( A => n294, B => n298, S => n477, Y => n461);
   U492 : na310 port map( A => n479, B => n480, C => n481, Y => output_R_1_port
                           );
   U493 : no310 port map( A => n482, B => n483, C => n484, Y => n481);
   U494 : mu111 port map( A => n289, B => n290, S => input_A(1), Y => n484);
   U495 : iv110 port map( A => n294, Y => n290);
   U496 : iv110 port map( A => n298, Y => n289);
   U497 : mu111 port map( A => n485, B => n486, S => input_B(1), Y => n483);
   U498 : na210 port map( A => n487, B => n294, Y => n486);
   U499 : na310 port map( A => Op(3), B => n471, C => n488, Y => n294);
   U500 : mu111 port map( A => n295, B => n296, S => input_A(1), Y => n487);
   U501 : na210 port map( A => n489, B => n298, Y => n485);
   U502 : na310 port map( A => Op(2), B => Op(0), C => n490, Y => n298);
   U503 : no210 port map( A => Op(1), B => n491, Y => n490);
   U504 : mu111 port map( A => n299, B => n295, S => input_A(1), Y => n489);
   U505 : na310 port map( A => Op(0), B => Op(3), C => n488, Y => n295);
   U506 : na310 port map( A => Op(3), B => n471, C => Op(2), Y => n299);
   U507 : na210 port map( A => n209, B => n492, Y => n482);
   U508 : na210 port map( A => N134, B => U3_U3_Z_0, Y => n492);
   U509 : na210 port map( A => n390, B => n389, Y => U3_U3_Z_0);
   U510 : na310 port map( A => n493, B => n494, C => Op(2), Y => n389);
   U511 : na310 port map( A => n493, B => Op(1), C => Op(2), Y => n390);
   U512 : no210 port map( A => n495, B => n496, Y => n480);
   U513 : no210 port map( A => n303, B => n475, Y => n496);
   U514 : iv110 port map( A => input_B(0), Y => n475);
   U515 : na210 port map( A => n493, B => n488, Y => n303);
   U516 : no210 port map( A => n305, B => n442, Y => n495);
   U517 : iv110 port map( A => input_A(2), Y => n442);
   U518 : na310 port map( A => n471, B => n494, C => n497, Y => n305);
   U519 : no210 port map( A => Op(3), B => Op(2), Y => n497);
   U520 : no210 port map( A => n498, B => n499, Y => n479);
   U521 : no210 port map( A => n309, B => n439, Y => n499);
   U522 : iv110 port map( A => input_B(2), Y => n439);
   U523 : na310 port map( A => n471, B => n491, C => n488, Y => n309);
   U524 : no210 port map( A => n494, B => Op(2), Y => n488);
   U525 : iv110 port map( A => Op(3), Y => n491);
   U526 : no210 port map( A => n312, B => n477, Y => n498);
   U527 : iv110 port map( A => input_A(0), Y => n477);
   U528 : na310 port map( A => n494, B => n444, C => n493, Y => n312);
   U529 : no210 port map( A => n471, B => Op(3), Y => n493);
   U530 : iv110 port map( A => Op(2), Y => n444);
   U531 : na210 port map( A => n62, B => n352, Y => n460);
   U532 : iv110 port map( A => n296, Y => n352);
   U533 : na310 port map( A => n471, B => n494, C => Op(3), Y => n296);
   U534 : iv110 port map( A => Op(1), Y => n494);
   U535 : iv110 port map( A => Op(0), Y => n471);
   U536 : iv110 port map( A => n400, Y => n402);
   U537 : na210 port map( A => N133, B => status_D_0_port, Y => n400);
   r22_U61 : ex210 port map( A => r22_n9, B => U3_U2_Z_0, Y => r22_n52);
   r22_U60 : ex210 port map( A => U3_U1_Z_0, B => n282, Y => r22_n53);
   r22_U59 : ex210 port map( A => r22_n8, B => r22_n53, Y => N133);
   r22_U58 : na210 port map( A => n282, B => r22_n8, Y => r22_n49);
   r22_U57 : na210 port map( A => r22_n52, B => r22_n9, Y => r22_n51);
   r22_U56 : na210 port map( A => U3_U1_Z_0, B => r22_n51, Y => r22_n50);
   r22_U55 : na210 port map( A => r22_n49, B => r22_n50, Y => r22_n46);
   r22_U54 : ex210 port map( A => U3_U1_Z_1, B => r22_n46, Y => r22_n48);
   r22_U53 : ex210 port map( A => n282, B => U3_U2_Z_1, Y => r22_n47);
   r22_U52 : ex210 port map( A => r22_n48, B => r22_n47, Y => N134);
   r22_U51 : na210 port map( A => r22_n47, B => r22_n46, Y => r22_n43);
   r22_U50 : no210 port map( A => r22_n46, B => r22_n47, Y => r22_n45);
   r22_U49 : na210 port map( A => U3_U1_Z_1, B => r22_n7, Y => r22_n44);
   r22_U48 : na210 port map( A => r22_n43, B => r22_n44, Y => r22_n40);
   r22_U47 : ex210 port map( A => r22_n40, B => U3_U1_Z_2, Y => r22_n42);
   r22_U46 : ex210 port map( A => n282, B => U3_U2_Z_2, Y => r22_n41);
   r22_U45 : ex210 port map( A => r22_n42, B => r22_n41, Y => N135);
   r22_U44 : na210 port map( A => r22_n41, B => r22_n40, Y => r22_n37);
   r22_U43 : no210 port map( A => r22_n40, B => r22_n41, Y => r22_n39);
   r22_U42 : na210 port map( A => U3_U1_Z_2, B => r22_n6, Y => r22_n38);
   r22_U41 : na210 port map( A => r22_n37, B => r22_n38, Y => r22_n34);
   r22_U40 : ex210 port map( A => U3_U1_Z_3, B => r22_n34, Y => r22_n36);
   r22_U39 : ex210 port map( A => n282, B => U3_U2_Z_3, Y => r22_n35);
   r22_U38 : ex210 port map( A => r22_n36, B => r22_n35, Y => N136);
   r22_U37 : na210 port map( A => r22_n35, B => r22_n34, Y => r22_n31);
   r22_U36 : no210 port map( A => r22_n34, B => r22_n35, Y => r22_n33);
   r22_U35 : na210 port map( A => U3_U1_Z_3, B => r22_n5, Y => r22_n32);
   r22_U34 : na210 port map( A => r22_n31, B => r22_n32, Y => r22_n28);
   r22_U33 : ex210 port map( A => r22_n28, B => U3_U1_Z_4, Y => r22_n30);
   r22_U32 : ex210 port map( A => n282, B => U3_U2_Z_4, Y => r22_n29);
   r22_U31 : ex210 port map( A => r22_n30, B => r22_n29, Y => N137);
   r22_U30 : na210 port map( A => r22_n29, B => r22_n28, Y => r22_n25);
   r22_U29 : no210 port map( A => r22_n28, B => r22_n29, Y => r22_n27);
   r22_U28 : na210 port map( A => U3_U1_Z_4, B => r22_n4, Y => r22_n26);
   r22_U27 : na210 port map( A => r22_n25, B => r22_n26, Y => r22_n22);
   r22_U26 : ex210 port map( A => U3_U1_Z_5, B => r22_n22, Y => r22_n24);
   r22_U25 : ex210 port map( A => n282, B => U3_U2_Z_5, Y => r22_n23);
   r22_U24 : ex210 port map( A => r22_n24, B => r22_n23, Y => N138);
   r22_U23 : na210 port map( A => r22_n23, B => r22_n22, Y => r22_n19);
   r22_U22 : no210 port map( A => r22_n22, B => r22_n23, Y => r22_n21);
   r22_U21 : na210 port map( A => U3_U1_Z_5, B => r22_n3, Y => r22_n20);
   r22_U20 : na210 port map( A => r22_n19, B => r22_n20, Y => r22_n15);
   r22_U19 : ex210 port map( A => r22_n15, B => U3_U1_Z_6, Y => r22_n18);
   r22_U18 : ex210 port map( A => n282, B => U3_U2_Z_6, Y => r22_n16);
   r22_U17 : ex210 port map( A => r22_n18, B => r22_n16, Y => N139);
   r22_U16 : no210 port map( A => r22_n16, B => r22_n15, Y => r22_n17);
   r22_U15 : no210 port map( A => r22_n17, B => r22_n2, Y => r22_n13);
   r22_U14 : na210 port map( A => r22_n15, B => r22_n16, Y => r22_n14);
   r22_U13 : no210 port map( A => r22_n13, B => r22_n1, Y => r22_n12);
   r22_U12 : ex210 port map( A => r22_n9, B => r22_n12, Y => r22_n10);
   r22_U11 : ex210 port map( A => U3_U2_Z_7, B => U3_U1_Z_7, Y => r22_n11);
   r22_U10 : ex210 port map( A => r22_n10, B => r22_n11, Y => N140);
   r22_U9 : iv110 port map( A => n282, Y => r22_n9);
   r22_U8 : iv110 port map( A => r22_n52, Y => r22_n8);
   r22_U7 : iv110 port map( A => r22_n45, Y => r22_n7);
   r22_U6 : iv110 port map( A => r22_n39, Y => r22_n6);
   r22_U5 : iv110 port map( A => r22_n33, Y => r22_n5);
   r22_U4 : iv110 port map( A => r22_n27, Y => r22_n4);
   r22_U3 : iv110 port map( A => r22_n21, Y => r22_n3);
   r22_U2 : iv110 port map( A => U3_U1_Z_6, Y => r22_n2);
   r22_U1 : iv110 port map( A => r22_n14, Y => r22_n1);

end synthesised;



