
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
   
   component no310
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component mu111
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   signal X_Logic0_port, output_r_7_port, output_r_6_port, output_r_5_port, 
      output_r_4_port, output_r_3_port, output_r_2_port, output_r_1_port, 
      output_r_0_port, status_d_1_port, status_d_0_port, N125, N126, N127, N128
      , N129, N130, N133, N134, N135, N136, N137, N138, N139, N140, U3_U1_Z_0, 
      U3_U1_Z_1, U3_U1_Z_2, U3_U1_Z_3, U3_U1_Z_4, U3_U1_Z_5, U3_U1_Z_6, 
      U3_U1_Z_7, U3_U2_Z_0, U3_U2_Z_1, U3_U2_Z_2, U3_U2_Z_3, U3_U2_Z_4, 
      U3_U2_Z_5, U3_U2_Z_6, U3_U2_Z_7, U3_U3_Z_0, n30, n62, n69, n104, 
      n126_port, n147, n168, n189, n210, n283, n284, n285, n286, n287, n288, 
      n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, 
      n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, 
      n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, 
      n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, 
      n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, 
      n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, 
      n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, 
      n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, 
      n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, 
      n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, 
      n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419, n420, 
      n421, n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, 
      n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, 
      n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, 
      n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468, 
      n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479, n480, 
      n481, n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n492, 
      n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503, r22_n53
      , r22_n52, r22_n51, r22_n50, r22_n49, r22_n48, r22_n47, r22_n46, r22_n45,
      r22_n44, r22_n43, r22_n42, r22_n41, r22_n40, r22_n39, r22_n38, r22_n37, 
      r22_n36, r22_n35, r22_n34, r22_n33, r22_n32, r22_n31, r22_n30, r22_n29, 
      r22_n28, r22_n27, r22_n26, r22_n25, r22_n24, r22_n23, r22_n22, r22_n21, 
      r22_n20, r22_n19, r22_n18, r22_n17, r22_n16, r22_n15, r22_n14, r22_n13, 
      r22_n12, r22_n11, r22_n10, r22_n9, r22_n8, r22_n7, r22_n6, r22_n5, r22_n4
      , r22_n3, r22_n2, r22_n1 : std_logic;

begin
   output_r <= ( output_r_7_port, output_r_6_port, output_r_5_port, 
      output_r_4_port, output_r_3_port, output_r_2_port, output_r_1_port, 
      output_r_0_port );
   status_d <= ( X_Logic0_port, X_Logic0_port, status_d_1_port, status_d_0_port
      );
   
   X_Logic0_port <= '0';
   n30 <= '0';
   U39 : no310 port map( A => output_r_6_port, B => output_r_7_port, C => 
                           output_r_5_port, Y => n62);
   U44 : na210 port map( A => n503, B => output_r_7_port, Y => n69);
   U73 : na210 port map( A => N130, B => n503, Y => n104);
   U95 : na210 port map( A => N129, B => n503, Y => n126_port);
   U117 : na210 port map( A => N128, B => n503, Y => n147);
   U139 : na210 port map( A => N127, B => n503, Y => n168);
   U161 : na210 port map( A => N126, B => n503, Y => n189);
   U183 : na210 port map( A => N125, B => n503, Y => n210);
   U286 : iv110 port map( A => n297, Y => n283);
   U287 : na310 port map( A => n284, B => n285, C => n286, Y => output_r_7_port
                           );
   U288 : no310 port map( A => n287, B => n288, C => n289, Y => n286);
   U289 : no210 port map( A => n290, B => n291, Y => n289);
   U290 : no210 port map( A => n292, B => n293, Y => n288);
   U291 : mu111 port map( A => n294, B => n295, S => N140, Y => n287);
   U292 : na210 port map( A => n296, B => n297, Y => n295);
   U293 : na210 port map( A => n503, B => n298, Y => n296);
   U294 : iv110 port map( A => n299, Y => n298);
   U295 : no210 port map( A => n300, B => n301, Y => n299);
   U296 : no310 port map( A => n300, B => n302, C => n301, Y => n294);
   U297 : mu111 port map( A => n303, B => n304, S => n305, Y => n285);
   U298 : no210 port map( A => n306, B => n307, Y => n304);
   U299 : mu111 port map( A => n308, B => n309, S => n310, Y => n307);
   U300 : no210 port map( A => n311, B => n312, Y => n303);
   U301 : mu111 port map( A => n313, B => n308, S => n310, Y => n312);
   U302 : mu111 port map( A => n314, B => n315, S => n310, Y => n284);
   U303 : na310 port map( A => n316, B => n317, C => n318, Y => output_r_6_port
                           );
   U304 : no310 port map( A => n319, B => n320, C => n321, Y => n318);
   U305 : mu111 port map( A => n311, B => n306, S => n291, Y => n321);
   U306 : mu111 port map( A => n322, B => n323, S => n293, Y => n320);
   U307 : na210 port map( A => n324, B => n315, Y => n323);
   U308 : mu111 port map( A => n325, B => n326, S => n291, Y => n324);
   U309 : na210 port map( A => n327, B => n314, Y => n322);
   U310 : mu111 port map( A => n328, B => n325, S => n291, Y => n327);
   U311 : na210 port map( A => n104, B => n329, Y => n319);
   U312 : na210 port map( A => N139, B => U3_U3_Z_0, Y => n329);
   U313 : no210 port map( A => n330, B => n331, Y => n317);
   U314 : no210 port map( A => n332, B => n305, Y => n331);
   U315 : iv110 port map( A => input_b(7), Y => n305);
   U316 : no210 port map( A => n333, B => n310, Y => n330);
   U317 : iv110 port map( A => input_a(7), Y => n310);
   U318 : no210 port map( A => n334, B => n335, Y => n316);
   U319 : no210 port map( A => n336, B => n290, Y => n335);
   U320 : no210 port map( A => n337, B => n292, Y => n334);
   U321 : na310 port map( A => n338, B => n339, C => n340, Y => output_r_5_port
                           );
   U322 : no310 port map( A => n341, B => n342, C => n343, Y => n340);
   U323 : mu111 port map( A => n311, B => n306, S => n336, Y => n343);
   U324 : mu111 port map( A => n344, B => n345, S => n337, Y => n342);
   U325 : na210 port map( A => n346, B => n315, Y => n345);
   U326 : mu111 port map( A => n325, B => n326, S => n336, Y => n346);
   U327 : na210 port map( A => n347, B => n314, Y => n344);
   U328 : mu111 port map( A => n328, B => n325, S => n336, Y => n347);
   U329 : na210 port map( A => n126_port, B => n348, Y => n341);
   U330 : na210 port map( A => N138, B => U3_U3_Z_0, Y => n348);
   U331 : no210 port map( A => n349, B => n350, Y => n339);
   U332 : no210 port map( A => n332, B => n293, Y => n350);
   U333 : iv110 port map( A => input_b(6), Y => n293);
   U334 : no210 port map( A => n333, B => n291, Y => n349);
   U335 : iv110 port map( A => input_a(6), Y => n291);
   U336 : no210 port map( A => n351, B => n352, Y => n338);
   U337 : no210 port map( A => n290, B => n353, Y => n352);
   U338 : no210 port map( A => n292, B => n354, Y => n351);
   U339 : na210 port map( A => n355, B => n356, Y => U3_U2_Z_7);
   U340 : na210 port map( A => input_b(7), B => n357, Y => n356);
   U341 : na210 port map( A => n358, B => input_a(7), Y => n355);
   U342 : na210 port map( A => n359, B => n360, Y => U3_U2_Z_6);
   U343 : na210 port map( A => input_b(6), B => n357, Y => n360);
   U344 : na210 port map( A => n358, B => input_a(6), Y => n359);
   U345 : na210 port map( A => n361, B => n362, Y => U3_U2_Z_5);
   U346 : na210 port map( A => input_b(5), B => n357, Y => n362);
   U347 : na210 port map( A => n358, B => input_a(5), Y => n361);
   U348 : na210 port map( A => n363, B => n364, Y => U3_U2_Z_4);
   U349 : na210 port map( A => input_b(4), B => n357, Y => n364);
   U350 : na210 port map( A => n358, B => input_a(4), Y => n363);
   U351 : na210 port map( A => n365, B => n366, Y => U3_U2_Z_3);
   U352 : na210 port map( A => input_b(3), B => n357, Y => n366);
   U353 : na210 port map( A => n358, B => input_a(3), Y => n365);
   U354 : na210 port map( A => n367, B => n368, Y => U3_U2_Z_2);
   U355 : na210 port map( A => input_b(2), B => n357, Y => n368);
   U356 : na210 port map( A => n358, B => input_a(2), Y => n367);
   U357 : na210 port map( A => n369, B => n370, Y => U3_U2_Z_1);
   U358 : na210 port map( A => input_b(1), B => n357, Y => n370);
   U359 : na210 port map( A => n358, B => input_a(1), Y => n369);
   U360 : na210 port map( A => n371, B => n372, Y => U3_U2_Z_0);
   U361 : na210 port map( A => input_b(0), B => n357, Y => n372);
   U362 : na210 port map( A => n358, B => input_a(0), Y => n371);
   U363 : na210 port map( A => n373, B => n374, Y => U3_U1_Z_7);
   U364 : na210 port map( A => input_a(7), B => n357, Y => n374);
   U365 : na210 port map( A => n358, B => input_b(7), Y => n373);
   U366 : na210 port map( A => n375, B => n376, Y => U3_U1_Z_6);
   U367 : na210 port map( A => input_a(6), B => n357, Y => n376);
   U368 : na210 port map( A => n358, B => input_b(6), Y => n375);
   U369 : na210 port map( A => n377, B => n378, Y => U3_U1_Z_5);
   U370 : na210 port map( A => input_a(5), B => n357, Y => n378);
   U371 : na210 port map( A => n358, B => input_b(5), Y => n377);
   U372 : na210 port map( A => n379, B => n380, Y => U3_U1_Z_4);
   U373 : na210 port map( A => input_a(4), B => n357, Y => n380);
   U374 : na210 port map( A => n358, B => input_b(4), Y => n379);
   U375 : na210 port map( A => n381, B => n382, Y => U3_U1_Z_3);
   U376 : na210 port map( A => input_a(3), B => n357, Y => n382);
   U377 : na210 port map( A => n358, B => input_b(3), Y => n381);
   U378 : na210 port map( A => n383, B => n384, Y => U3_U1_Z_2);
   U379 : na210 port map( A => input_a(2), B => n357, Y => n384);
   U380 : na210 port map( A => n358, B => input_b(2), Y => n383);
   U381 : na210 port map( A => n385, B => n386, Y => U3_U1_Z_1);
   U382 : na210 port map( A => input_a(1), B => n357, Y => n386);
   U383 : na210 port map( A => n358, B => input_b(1), Y => n385);
   U384 : na210 port map( A => n387, B => n388, Y => U3_U1_Z_0);
   U385 : na210 port map( A => input_a(0), B => n357, Y => n388);
   U386 : na210 port map( A => n302, B => n389, Y => n357);
   U387 : na210 port map( A => n358, B => input_b(0), Y => n387);
   U388 : iv110 port map( A => n390, Y => n358);
   U389 : ex210 port map( A => n300, B => n301, Y => N130);
   U390 : na310 port map( A => n391, B => N137, C => N138, Y => n301);
   U391 : iv110 port map( A => N139, Y => n300);
   U392 : iv110 port map( A => n392, Y => N129);
   U393 : ex210 port map( A => N138, B => n393, Y => n392);
   U394 : na210 port map( A => n391, B => N137, Y => n393);
   U395 : ex210 port map( A => N137, B => n391, Y => N128);
   U396 : no210 port map( A => n394, B => n395, Y => n391);
   U397 : ex210 port map( A => n395, B => n394, Y => N127);
   U398 : na210 port map( A => N135, B => n396, Y => n394);
   U399 : iv110 port map( A => N136, Y => n395);
   U400 : ex210 port map( A => n396, B => N135, Y => N126);
   U401 : na210 port map( A => n397, B => n398, Y => n396);
   U402 : na210 port map( A => N134, B => n399, Y => n398);
   U403 : na210 port map( A => n400, B => n401, Y => n399);
   U404 : na210 port map( A => status_d_1_port, B => n402, Y => n397);
   U405 : ex210 port map( A => n402, B => n403, Y => N125);
   U406 : ex210 port map( A => N134, B => status_d_1_port, Y => n403);
   U407 : iv110 port map( A => n401, Y => status_d_1_port);
   U408 : na210 port map( A => n404, B => n405, Y => n401);
   U409 : no310 port map( A => n406, B => output_r_3_port, C => output_r_2_port
                           , Y => n405);
   U410 : na310 port map( A => n407, B => n408, C => n409, Y => output_r_2_port
                           );
   U411 : no310 port map( A => n410, B => n411, C => n412, Y => n409);
   U412 : mu111 port map( A => n311, B => n306, S => n413, Y => n412);
   U413 : mu111 port map( A => n414, B => n415, S => n416, Y => n411);
   U414 : na210 port map( A => n417, B => n315, Y => n415);
   U415 : mu111 port map( A => n325, B => n326, S => n413, Y => n417);
   U416 : na210 port map( A => n418, B => n314, Y => n414);
   U417 : mu111 port map( A => n328, B => n325, S => n413, Y => n418);
   U418 : na210 port map( A => n189, B => n419, Y => n410);
   U419 : na210 port map( A => N135, B => U3_U3_Z_0, Y => n419);
   U420 : no210 port map( A => n420, B => n421, Y => n408);
   U421 : no210 port map( A => n332, B => n422, Y => n421);
   U422 : no210 port map( A => n333, B => n423, Y => n420);
   U423 : no210 port map( A => n424, B => n425, Y => n407);
   U424 : no210 port map( A => n290, B => n426, Y => n425);
   U425 : no210 port map( A => n292, B => n427, Y => n424);
   U426 : na310 port map( A => n428, B => n429, C => n430, Y => output_r_3_port
                           );
   U427 : no310 port map( A => n431, B => n432, C => n433, Y => n430);
   U428 : mu111 port map( A => n311, B => n306, S => n423, Y => n433);
   U429 : mu111 port map( A => n434, B => n435, S => n422, Y => n432);
   U430 : na210 port map( A => n436, B => n315, Y => n435);
   U431 : mu111 port map( A => n325, B => n326, S => n423, Y => n436);
   U432 : na210 port map( A => n437, B => n314, Y => n434);
   U433 : mu111 port map( A => n328, B => n325, S => n423, Y => n437);
   U434 : na210 port map( A => n168, B => n438, Y => n431);
   U435 : na210 port map( A => N136, B => U3_U3_Z_0, Y => n438);
   U436 : no210 port map( A => n439, B => n440, Y => n429);
   U437 : no210 port map( A => n332, B => n354, Y => n440);
   U438 : no210 port map( A => n333, B => n353, Y => n439);
   U439 : no210 port map( A => n441, B => n442, Y => n428);
   U440 : no210 port map( A => n290, B => n413, Y => n442);
   U441 : no210 port map( A => n292, B => n416, Y => n441);
   U442 : iv110 port map( A => n443, Y => n406);
   U443 : no210 port map( A => output_r_4_port, B => op(2), Y => n443);
   U444 : na310 port map( A => n444, B => n445, C => n446, Y => output_r_4_port
                           );
   U445 : no310 port map( A => n447, B => n448, C => n449, Y => n446);
   U446 : mu111 port map( A => n311, B => n306, S => n353, Y => n449);
   U447 : mu111 port map( A => n450, B => n451, S => n354, Y => n448);
   U448 : iv110 port map( A => input_b(4), Y => n354);
   U449 : na210 port map( A => n452, B => n315, Y => n451);
   U450 : mu111 port map( A => n325, B => n326, S => n353, Y => n452);
   U451 : na210 port map( A => n453, B => n314, Y => n450);
   U452 : mu111 port map( A => n328, B => n325, S => n353, Y => n453);
   U453 : iv110 port map( A => input_a(4), Y => n353);
   U454 : na210 port map( A => n147, B => n454, Y => n447);
   U455 : na210 port map( A => N137, B => U3_U3_Z_0, Y => n454);
   U456 : no210 port map( A => n455, B => n456, Y => n445);
   U457 : no210 port map( A => n332, B => n337, Y => n456);
   U458 : iv110 port map( A => input_b(5), Y => n337);
   U459 : no210 port map( A => n333, B => n336, Y => n455);
   U460 : iv110 port map( A => input_a(5), Y => n336);
   U461 : no210 port map( A => n457, B => n458, Y => n444);
   U462 : no210 port map( A => n290, B => n423, Y => n458);
   U463 : iv110 port map( A => input_a(3), Y => n423);
   U464 : no210 port map( A => n292, B => n422, Y => n457);
   U465 : iv110 port map( A => input_b(3), Y => n422);
   U466 : no310 port map( A => n459, B => output_r_1_port, C => output_r_0_port
                           , Y => n404);
   U467 : na310 port map( A => n460, B => n461, C => n462, Y => output_r_0_port
                           );
   U468 : no310 port map( A => n463, B => n464, C => n465, Y => n462);
   U469 : no210 port map( A => n332, B => n427, Y => n465);
   U470 : no210 port map( A => n333, B => n426, Y => n464);
   U471 : mu111 port map( A => n466, B => n467, S => N133, Y => n463);
   U472 : na210 port map( A => n468, B => n297, Y => n467);
   U473 : iv110 port map( A => U3_U3_Z_0, Y => n297);
   U474 : na210 port map( A => n503, B => n469, Y => n468);
   U475 : iv110 port map( A => n302, Y => n503);
   U476 : no210 port map( A => n469, B => n302, Y => n466);
   U477 : na310 port map( A => op(2), B => n470, C => n471, Y => n302);
   U478 : no210 port map( A => op(3), B => op(1), Y => n471);
   U479 : iv110 port map( A => status_d_0_port, Y => n469);
   U480 : mu111 port map( A => n472, B => n473, S => input_b(0), Y => n461);
   U481 : no210 port map( A => n311, B => n474, Y => n473);
   U482 : mu111 port map( A => n308, B => n313, S => input_a(0), Y => n474);
   U483 : no210 port map( A => n306, B => n475, Y => n472);
   U484 : mu111 port map( A => n309, B => n308, S => input_a(0), Y => n475);
   U485 : iv110 port map( A => n325, Y => n308);
   U486 : mu111 port map( A => n315, B => n314, S => input_a(0), Y => n460);
   U487 : na310 port map( A => n476, B => n477, C => n478, Y => output_r_1_port
                           );
   U488 : no310 port map( A => n479, B => n480, C => n481, Y => n478);
   U489 : mu111 port map( A => n311, B => n306, S => n426, Y => n481);
   U490 : iv110 port map( A => n315, Y => n306);
   U491 : iv110 port map( A => n314, Y => n311);
   U492 : mu111 port map( A => n482, B => n483, S => n427, Y => n480);
   U493 : iv110 port map( A => input_b(1), Y => n427);
   U494 : na210 port map( A => n484, B => n315, Y => n483);
   U495 : na310 port map( A => op(2), B => op(0), C => n485, Y => n315);
   U496 : no210 port map( A => op(1), B => n486, Y => n485);
   U497 : mu111 port map( A => n325, B => n326, S => n426, Y => n484);
   U498 : iv110 port map( A => n309, Y => n326);
   U499 : no310 port map( A => n486, B => op(0), C => n487, Y => n309);
   U500 : na210 port map( A => n488, B => n314, Y => n482);
   U501 : na310 port map( A => op(3), B => n470, C => n489, Y => n314);
   U502 : mu111 port map( A => n328, B => n325, S => n426, Y => n488);
   U503 : iv110 port map( A => input_a(1), Y => n426);
   U504 : na310 port map( A => n489, B => op(3), C => op(0), Y => n325);
   U505 : iv110 port map( A => n313, Y => n328);
   U506 : na210 port map( A => n210, B => n490, Y => n479);
   U507 : na210 port map( A => N134, B => U3_U3_Z_0, Y => n490);
   U508 : na210 port map( A => n390, B => n389, Y => U3_U3_Z_0);
   U509 : na310 port map( A => n491, B => n492, C => op(2), Y => n389);
   U510 : na310 port map( A => n491, B => op(1), C => op(2), Y => n390);
   U511 : no210 port map( A => n493, B => n494, Y => n477);
   U512 : no210 port map( A => n332, B => n416, Y => n494);
   U513 : iv110 port map( A => input_b(2), Y => n416);
   U514 : na310 port map( A => n470, B => n486, C => n489, Y => n332);
   U515 : no210 port map( A => n333, B => n413, Y => n493);
   U516 : iv110 port map( A => input_a(2), Y => n413);
   U517 : na310 port map( A => n470, B => n492, C => n495, Y => n333);
   U518 : no210 port map( A => op(3), B => op(2), Y => n495);
   U519 : iv110 port map( A => n496, Y => n476);
   U520 : na210 port map( A => n497, B => n498, Y => n496);
   U521 : na210 port map( A => n499, B => input_a(0), Y => n498);
   U522 : na210 port map( A => n500, B => input_b(0), Y => n497);
   U523 : na210 port map( A => n62, B => n313, Y => n459);
   U524 : no310 port map( A => op(0), B => op(1), C => n486, Y => n313);
   U525 : iv110 port map( A => op(3), Y => n486);
   U526 : iv110 port map( A => n400, Y => n402);
   U527 : na210 port map( A => N133, B => status_d_0_port, Y => n400);
   U528 : na310 port map( A => n501, B => n502, C => n69, Y => status_d_0_port)
                           ;
   U529 : na210 port map( A => input_b(7), B => n500, Y => n502);
   U530 : iv110 port map( A => n292, Y => n500);
   U531 : na210 port map( A => n491, B => n489, Y => n292);
   U532 : no210 port map( A => n492, B => op(2), Y => n489);
   U533 : na210 port map( A => input_a(7), B => n499, Y => n501);
   U534 : iv110 port map( A => n290, Y => n499);
   U535 : na310 port map( A => n492, B => n487, C => n491, Y => n290);
   U536 : no210 port map( A => n470, B => op(3), Y => n491);
   U537 : iv110 port map( A => op(0), Y => n470);
   U538 : iv110 port map( A => op(2), Y => n487);
   U539 : iv110 port map( A => op(1), Y => n492);
   r22_U61 : ex210 port map( A => r22_n9, B => U3_U2_Z_0, Y => r22_n52);
   r22_U60 : ex210 port map( A => U3_U1_Z_0, B => n283, Y => r22_n53);
   r22_U59 : ex210 port map( A => r22_n8, B => r22_n53, Y => N133);
   r22_U58 : na210 port map( A => n283, B => r22_n8, Y => r22_n49);
   r22_U57 : na210 port map( A => r22_n52, B => r22_n9, Y => r22_n51);
   r22_U56 : na210 port map( A => U3_U1_Z_0, B => r22_n51, Y => r22_n50);
   r22_U55 : na210 port map( A => r22_n49, B => r22_n50, Y => r22_n46);
   r22_U54 : ex210 port map( A => U3_U1_Z_1, B => r22_n46, Y => r22_n48);
   r22_U53 : ex210 port map( A => n283, B => U3_U2_Z_1, Y => r22_n47);
   r22_U52 : ex210 port map( A => r22_n48, B => r22_n47, Y => N134);
   r22_U51 : na210 port map( A => r22_n47, B => r22_n46, Y => r22_n43);
   r22_U50 : no210 port map( A => r22_n46, B => r22_n47, Y => r22_n45);
   r22_U49 : na210 port map( A => U3_U1_Z_1, B => r22_n7, Y => r22_n44);
   r22_U48 : na210 port map( A => r22_n43, B => r22_n44, Y => r22_n40);
   r22_U47 : ex210 port map( A => r22_n40, B => U3_U1_Z_2, Y => r22_n42);
   r22_U46 : ex210 port map( A => n283, B => U3_U2_Z_2, Y => r22_n41);
   r22_U45 : ex210 port map( A => r22_n42, B => r22_n41, Y => N135);
   r22_U44 : na210 port map( A => r22_n41, B => r22_n40, Y => r22_n37);
   r22_U43 : no210 port map( A => r22_n40, B => r22_n41, Y => r22_n39);
   r22_U42 : na210 port map( A => U3_U1_Z_2, B => r22_n6, Y => r22_n38);
   r22_U41 : na210 port map( A => r22_n37, B => r22_n38, Y => r22_n34);
   r22_U40 : ex210 port map( A => U3_U1_Z_3, B => r22_n34, Y => r22_n36);
   r22_U39 : ex210 port map( A => n283, B => U3_U2_Z_3, Y => r22_n35);
   r22_U38 : ex210 port map( A => r22_n36, B => r22_n35, Y => N136);
   r22_U37 : na210 port map( A => r22_n35, B => r22_n34, Y => r22_n31);
   r22_U36 : no210 port map( A => r22_n34, B => r22_n35, Y => r22_n33);
   r22_U35 : na210 port map( A => U3_U1_Z_3, B => r22_n5, Y => r22_n32);
   r22_U34 : na210 port map( A => r22_n31, B => r22_n32, Y => r22_n28);
   r22_U33 : ex210 port map( A => r22_n28, B => U3_U1_Z_4, Y => r22_n30);
   r22_U32 : ex210 port map( A => n283, B => U3_U2_Z_4, Y => r22_n29);
   r22_U31 : ex210 port map( A => r22_n30, B => r22_n29, Y => N137);
   r22_U30 : na210 port map( A => r22_n29, B => r22_n28, Y => r22_n25);
   r22_U29 : no210 port map( A => r22_n28, B => r22_n29, Y => r22_n27);
   r22_U28 : na210 port map( A => U3_U1_Z_4, B => r22_n4, Y => r22_n26);
   r22_U27 : na210 port map( A => r22_n25, B => r22_n26, Y => r22_n22);
   r22_U26 : ex210 port map( A => U3_U1_Z_5, B => r22_n22, Y => r22_n24);
   r22_U25 : ex210 port map( A => n283, B => U3_U2_Z_5, Y => r22_n23);
   r22_U24 : ex210 port map( A => r22_n24, B => r22_n23, Y => N138);
   r22_U23 : na210 port map( A => r22_n23, B => r22_n22, Y => r22_n19);
   r22_U22 : no210 port map( A => r22_n22, B => r22_n23, Y => r22_n21);
   r22_U21 : na210 port map( A => U3_U1_Z_5, B => r22_n3, Y => r22_n20);
   r22_U20 : na210 port map( A => r22_n19, B => r22_n20, Y => r22_n15);
   r22_U19 : ex210 port map( A => r22_n15, B => U3_U1_Z_6, Y => r22_n18);
   r22_U18 : ex210 port map( A => n283, B => U3_U2_Z_6, Y => r22_n16);
   r22_U17 : ex210 port map( A => r22_n18, B => r22_n16, Y => N139);
   r22_U16 : no210 port map( A => r22_n16, B => r22_n15, Y => r22_n17);
   r22_U15 : no210 port map( A => r22_n17, B => r22_n2, Y => r22_n13);
   r22_U14 : na210 port map( A => r22_n15, B => r22_n16, Y => r22_n14);
   r22_U13 : no210 port map( A => r22_n13, B => r22_n1, Y => r22_n12);
   r22_U12 : ex210 port map( A => r22_n9, B => r22_n12, Y => r22_n10);
   r22_U11 : ex210 port map( A => U3_U2_Z_7, B => U3_U1_Z_7, Y => r22_n11);
   r22_U10 : ex210 port map( A => r22_n10, B => r22_n11, Y => N140);
   r22_U9 : iv110 port map( A => n283, Y => r22_n9);
   r22_U8 : iv110 port map( A => r22_n52, Y => r22_n8);
   r22_U7 : iv110 port map( A => r22_n45, Y => r22_n7);
   r22_U6 : iv110 port map( A => r22_n39, Y => r22_n6);
   r22_U5 : iv110 port map( A => r22_n33, Y => r22_n5);
   r22_U4 : iv110 port map( A => r22_n27, Y => r22_n4);
   r22_U3 : iv110 port map( A => r22_n21, Y => r22_n3);
   r22_U2 : iv110 port map( A => U3_U1_Z_6, Y => r22_n2);
   r22_U1 : iv110 port map( A => r22_n14, Y => r22_n1);

end synthesised;



