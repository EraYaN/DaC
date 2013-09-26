
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

architecture synthesised of alu is

   component ex210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component na210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component iv110
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component no210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component no310
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component na310
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component mu111
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component buf40
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal X_Logic0_port, status_d_0_port, N138, N139, N140, N141, N142, N143, 
      N144, N145, N146, U3_U1_Z_0, U3_U1_Z_1, U3_U1_Z_2, U3_U1_Z_3, U3_U1_Z_4, 
      U3_U1_Z_5, U3_U1_Z_6, U3_U1_Z_7, U3_U2_Z_0, U3_U2_Z_1, U3_U2_Z_2, 
      U3_U2_Z_3, U3_U2_Z_4, U3_U2_Z_5, U3_U2_Z_6, U3_U2_Z_7, U3_U3_Z_0, 
      U3_U4_Z_0, n29, n225, n262, n263, n264, n265, n266, n267, n268, n269, 
      n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, 
      n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, 
      n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, 
      n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, 
      n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, 
      n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, 
      n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, 
      n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, 
      n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, 
      n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, 
      n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, 
      n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, 
      n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, 
      n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, n436, n437, 
      n438, n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, 
      n450, n451, r73_n57, r73_n56, r73_n55, r73_n54, r73_n53, r73_n52, r73_n51
      , r73_n50, r73_n49, r73_n48, r73_n47, r73_n46, r73_n45, r73_n44, r73_n43,
      r73_n42, r73_n41, r73_n40, r73_n39, r73_n38, r73_n37, r73_n36, r73_n35, 
      r73_n34, r73_n33, r73_n32, r73_n31, r73_n30, r73_n29, r73_n28, r73_n27, 
      r73_n26, r73_n25, r73_n24, r73_n23, r73_n22, r73_n21, r73_n20, r73_n19, 
      r73_n18, r73_n17, r73_n16, r73_n15, r73_n14, r73_n13, r73_n12, r73_n11, 
      r73_n10, r73_n9, r73_n8, r73_n7, r73_n6, r73_n5, r73_n4, r73_n3, r73_n2, 
      r73_n1 : std_logic;

begin
   status_d <= ( X_Logic0_port, X_Logic0_port, X_Logic0_port, status_d_0_port )
      ;
   
   X_Logic0_port <= '0';
   n29 <= '0';
   U203 : na210 port map( A => n451, B => N146, Y => n225);
   U263 : buf40 port map( A => U3_U4_Z_0, Y => n262);
   U264 : no310 port map( A => n407, B => op(2), C => n405, Y => n263);
   U265 : no310 port map( A => n407, B => op(3), C => n404, Y => n264);
   U266 : na310 port map( A => n265, B => n266, C => n267, Y => output_r(7));
   U267 : iv110 port map( A => n268, Y => n267);
   U268 : na310 port map( A => n269, B => n270, C => n271, Y => n268);
   U269 : na210 port map( A => n272, B => input_b(6), Y => n271);
   U270 : na210 port map( A => n273, B => N145, Y => n270);
   U271 : na210 port map( A => n274, B => input_a(6), Y => n269);
   U272 : mu111 port map( A => n275, B => n276, S => input_b(7), Y => n266);
   U273 : no210 port map( A => n277, B => n278, Y => n276);
   U274 : mu111 port map( A => n263, B => n280, S => input_a(7), Y => n278);
   U275 : no210 port map( A => n281, B => n282, Y => n275);
   U276 : mu111 port map( A => n283, B => n279, S => input_a(7), Y => n282);
   U277 : mu111 port map( A => n284, B => n285, S => input_a(7), Y => n265);
   U278 : na310 port map( A => n286, B => n287, C => n288, Y => output_r(6));
   U279 : no310 port map( A => n289, B => n290, C => n291, Y => n288);
   U280 : no210 port map( A => n292, B => n293, Y => n291);
   U281 : iv110 port map( A => n294, Y => n290);
   U282 : na210 port map( A => input_a(7), B => n295, Y => n294);
   U283 : na210 port map( A => n296, B => n297, Y => n289);
   U284 : na210 port map( A => N144, B => n273, Y => n297);
   U285 : na210 port map( A => n298, B => input_b(7), Y => n296);
   U286 : mu111 port map( A => n299, B => n300, S => input_b(6), Y => n287);
   U287 : no210 port map( A => n277, B => n301, Y => n300);
   U288 : mu111 port map( A => n263, B => n280, S => input_a(6), Y => n301);
   U289 : no210 port map( A => n281, B => n302, Y => n299);
   U290 : mu111 port map( A => n283, B => n279, S => input_a(6), Y => n302);
   U291 : no210 port map( A => n303, B => n304, Y => n286);
   U292 : mu111 port map( A => n281, B => n277, S => input_a(6), Y => n304);
   U293 : no210 port map( A => n305, B => n306, Y => n303);
   U294 : na310 port map( A => n307, B => n308, C => n309, Y => output_r(5));
   U295 : no310 port map( A => n310, B => n311, C => n312, Y => n309);
   U296 : no210 port map( A => n292, B => n313, Y => n312);
   U297 : iv110 port map( A => n314, Y => n311);
   U298 : na210 port map( A => input_a(6), B => n295, Y => n314);
   U299 : na210 port map( A => n315, B => n316, Y => n310);
   U300 : na210 port map( A => N143, B => n273, Y => n316);
   U301 : na210 port map( A => n298, B => input_b(6), Y => n315);
   U302 : mu111 port map( A => n317, B => n318, S => n293, Y => n308);
   U303 : iv110 port map( A => input_b(5), Y => n293);
   U304 : no210 port map( A => n281, B => n319, Y => n318);
   U305 : mu111 port map( A => n263, B => n283, S => n306, Y => n319);
   U306 : no210 port map( A => n277, B => n320, Y => n317);
   U307 : mu111 port map( A => n280, B => n279, S => n306, Y => n320);
   U308 : no210 port map( A => n321, B => n322, Y => n307);
   U309 : mu111 port map( A => n277, B => n281, S => n306, Y => n322);
   U310 : no210 port map( A => n305, B => n323, Y => n321);
   U311 : na310 port map( A => n324, B => n325, C => n326, Y => output_r(4));
   U312 : no310 port map( A => n327, B => n328, C => n329, Y => n326);
   U313 : no210 port map( A => n292, B => n330, Y => n329);
   U314 : no210 port map( A => n331, B => n306, Y => n328);
   U315 : iv110 port map( A => input_a(5), Y => n306);
   U316 : na210 port map( A => n332, B => n333, Y => n327);
   U317 : na210 port map( A => N142, B => n273, Y => n333);
   U318 : na210 port map( A => input_b(5), B => n298, Y => n332);
   U319 : mu111 port map( A => n334, B => n335, S => n313, Y => n325);
   U320 : iv110 port map( A => input_b(4), Y => n313);
   U321 : no210 port map( A => n281, B => n336, Y => n335);
   U322 : mu111 port map( A => n263, B => n283, S => n323, Y => n336);
   U323 : no210 port map( A => n277, B => n337, Y => n334);
   U324 : mu111 port map( A => n280, B => n279, S => n323, Y => n337);
   U325 : no210 port map( A => n338, B => n339, Y => n324);
   U326 : mu111 port map( A => n277, B => n281, S => n323, Y => n339);
   U327 : no210 port map( A => n305, B => n340, Y => n338);
   U328 : na310 port map( A => n341, B => n342, C => n343, Y => output_r(3));
   U329 : no310 port map( A => n344, B => n345, C => n346, Y => n343);
   U330 : no210 port map( A => n292, B => n347, Y => n346);
   U331 : no210 port map( A => n331, B => n323, Y => n345);
   U332 : iv110 port map( A => input_a(4), Y => n323);
   U333 : na210 port map( A => n348, B => n349, Y => n344);
   U334 : na210 port map( A => N141, B => n273, Y => n349);
   U335 : na210 port map( A => input_b(4), B => n298, Y => n348);
   U336 : mu111 port map( A => n350, B => n351, S => n330, Y => n342);
   U337 : iv110 port map( A => input_b(3), Y => n330);
   U338 : no210 port map( A => n281, B => n352, Y => n351);
   U339 : mu111 port map( A => n263, B => n283, S => n340, Y => n352);
   U340 : no210 port map( A => n277, B => n353, Y => n350);
   U341 : mu111 port map( A => n280, B => n279, S => n340, Y => n353);
   U342 : no210 port map( A => n354, B => n355, Y => n341);
   U343 : mu111 port map( A => n277, B => n281, S => n340, Y => n355);
   U344 : no210 port map( A => n305, B => n356, Y => n354);
   U345 : na310 port map( A => n357, B => n358, C => n359, Y => output_r(2));
   U346 : no310 port map( A => n360, B => n361, C => n362, Y => n359);
   U347 : no210 port map( A => n292, B => n363, Y => n362);
   U348 : iv110 port map( A => input_b(1), Y => n363);
   U349 : no210 port map( A => n331, B => n340, Y => n361);
   U350 : iv110 port map( A => input_a(3), Y => n340);
   U351 : na210 port map( A => n364, B => n365, Y => n360);
   U352 : na210 port map( A => N140, B => n273, Y => n365);
   U353 : na210 port map( A => input_b(3), B => n298, Y => n364);
   U354 : mu111 port map( A => n366, B => n367, S => n347, Y => n358);
   U355 : iv110 port map( A => input_b(2), Y => n347);
   U356 : no210 port map( A => n281, B => n368, Y => n367);
   U357 : mu111 port map( A => n263, B => n283, S => n356, Y => n368);
   U358 : no210 port map( A => n277, B => n369, Y => n366);
   U359 : mu111 port map( A => n280, B => n279, S => n356, Y => n369);
   U360 : no210 port map( A => n370, B => n371, Y => n357);
   U361 : mu111 port map( A => n277, B => n281, S => n356, Y => n371);
   U362 : iv110 port map( A => n372, Y => n370);
   U363 : na210 port map( A => n274, B => input_a(1), Y => n372);
   U364 : na310 port map( A => n373, B => n374, C => n375, Y => output_r(1));
   U365 : no310 port map( A => n376, B => n377, C => n378, Y => n375);
   U366 : no210 port map( A => n292, B => n379, Y => n378);
   U367 : iv110 port map( A => n272, Y => n292);
   U368 : no210 port map( A => n331, B => n356, Y => n377);
   U369 : iv110 port map( A => input_a(2), Y => n356);
   U370 : iv110 port map( A => n295, Y => n331);
   U371 : na210 port map( A => n380, B => n381, Y => n376);
   U372 : na210 port map( A => N139, B => n273, Y => n381);
   U373 : na210 port map( A => input_b(2), B => n298, Y => n380);
   U374 : mu111 port map( A => n382, B => n383, S => input_b(1), Y => n374);
   U375 : no210 port map( A => n277, B => n384, Y => n383);
   U376 : mu111 port map( A => n263, B => n280, S => input_a(1), Y => n384);
   U377 : no210 port map( A => n281, B => n385, Y => n382);
   U378 : mu111 port map( A => n283, B => n279, S => input_a(1), Y => n385);
   U379 : no210 port map( A => n386, B => n387, Y => n373);
   U380 : mu111 port map( A => n281, B => n277, S => input_a(1), Y => n387);
   U381 : no210 port map( A => n305, B => n388, Y => n386);
   U382 : iv110 port map( A => input_a(0), Y => n388);
   U383 : iv110 port map( A => n274, Y => n305);
   U384 : na310 port map( A => n389, B => n390, C => n391, Y => output_r(0));
   U385 : iv110 port map( A => n392, Y => n391);
   U386 : na310 port map( A => n393, B => n394, C => n395, Y => n392);
   U387 : na210 port map( A => n298, B => input_b(1), Y => n395);
   U388 : no310 port map( A => n396, B => op(0), C => n397, Y => n298);
   U389 : na210 port map( A => n273, B => N138, Y => n394);
   U390 : na210 port map( A => n398, B => n399, Y => n273);
   U391 : na210 port map( A => n295, B => input_a(1), Y => n393);
   U392 : no210 port map( A => n400, B => n397, Y => n295);
   U393 : mu111 port map( A => n401, B => n402, S => n379, Y => n390);
   U394 : iv110 port map( A => input_b(0), Y => n379);
   U395 : no210 port map( A => n281, B => n403, Y => n402);
   U396 : mu111 port map( A => n283, B => n263, S => input_a(0), Y => n403);
   U397 : no310 port map( A => n404, B => op(0), C => n405, Y => n283);
   U398 : iv110 port map( A => n284, Y => n281);
   U399 : no210 port map( A => n277, B => n406, Y => n401);
   U400 : mu111 port map( A => n279, B => n280, S => input_a(0), Y => n406);
   U401 : no210 port map( A => n405, B => n400, Y => n280);
   U402 : no310 port map( A => n407, B => op(2), C => n405, Y => n279);
   U403 : iv110 port map( A => n285, Y => n277);
   U404 : mu111 port map( A => n284, B => n285, S => input_a(0), Y => n389);
   U405 : na310 port map( A => op(3), B => op(1), C => n408, Y => n285);
   U406 : no210 port map( A => op(2), B => op(0), Y => n408);
   U407 : na310 port map( A => op(3), B => op(2), C => n409, Y => n284);
   U408 : no210 port map( A => op(1), B => n410, Y => n409);
   U409 : iv110 port map( A => n399, Y => U3_U4_Z_0);
   U410 : no210 port map( A => n411, B => n412, Y => n399);
   U411 : no210 port map( A => n413, B => n398, Y => U3_U3_Z_0);
   U412 : iv110 port map( A => status_d_0_port, Y => n413);
   U413 : na310 port map( A => n414, B => n415, C => n225, Y => status_d_0_port
                           );
   U414 : na210 port map( A => input_b(7), B => n272, Y => n415);
   U415 : no210 port map( A => n397, B => n407, Y => n272);
   U416 : na210 port map( A => input_a(7), B => n274, Y => n414);
   U417 : no310 port map( A => n410, B => op(1), C => n397, Y => n274);
   U418 : na210 port map( A => n405, B => n404, Y => n397);
   U419 : na210 port map( A => n416, B => n417, Y => U3_U2_Z_7);
   U420 : na210 port map( A => input_b(7), B => n418, Y => n417);
   U421 : na210 port map( A => n264, B => input_a(7), Y => n416);
   U422 : na210 port map( A => n419, B => n420, Y => U3_U2_Z_6);
   U423 : na210 port map( A => input_b(6), B => n418, Y => n420);
   U424 : na210 port map( A => n411, B => input_a(6), Y => n419);
   U425 : na210 port map( A => n421, B => n422, Y => U3_U2_Z_5);
   U426 : na210 port map( A => input_b(5), B => n418, Y => n422);
   U427 : na210 port map( A => n264, B => input_a(5), Y => n421);
   U428 : na210 port map( A => n423, B => n424, Y => U3_U2_Z_4);
   U429 : na210 port map( A => input_b(4), B => n418, Y => n424);
   U430 : na210 port map( A => n411, B => input_a(4), Y => n423);
   U431 : na210 port map( A => n425, B => n426, Y => U3_U2_Z_3);
   U432 : na210 port map( A => input_b(3), B => n418, Y => n426);
   U433 : na210 port map( A => n264, B => input_a(3), Y => n425);
   U434 : na210 port map( A => n427, B => n428, Y => U3_U2_Z_2);
   U435 : na210 port map( A => input_b(2), B => n418, Y => n428);
   U436 : na210 port map( A => n411, B => input_a(2), Y => n427);
   U437 : na210 port map( A => n429, B => n430, Y => U3_U2_Z_1);
   U438 : na210 port map( A => input_b(1), B => n418, Y => n430);
   U439 : na210 port map( A => n264, B => input_a(1), Y => n429);
   U440 : na210 port map( A => n431, B => n432, Y => U3_U2_Z_0);
   U441 : na210 port map( A => input_b(0), B => n418, Y => n432);
   U442 : na210 port map( A => n411, B => input_a(0), Y => n431);
   U443 : na210 port map( A => n433, B => n434, Y => U3_U1_Z_7);
   U444 : na210 port map( A => input_a(7), B => n418, Y => n434);
   U445 : na210 port map( A => n264, B => input_b(7), Y => n433);
   U446 : na210 port map( A => n435, B => n436, Y => U3_U1_Z_6);
   U447 : na210 port map( A => input_a(6), B => n418, Y => n436);
   U448 : na210 port map( A => n411, B => input_b(6), Y => n435);
   U449 : na210 port map( A => n437, B => n438, Y => U3_U1_Z_5);
   U450 : na210 port map( A => input_a(5), B => n418, Y => n438);
   U451 : na210 port map( A => n264, B => input_b(5), Y => n437);
   U452 : na210 port map( A => n439, B => n440, Y => U3_U1_Z_4);
   U453 : na210 port map( A => input_a(4), B => n418, Y => n440);
   U454 : na210 port map( A => n411, B => input_b(4), Y => n439);
   U455 : na210 port map( A => n441, B => n442, Y => U3_U1_Z_3);
   U456 : na210 port map( A => input_a(3), B => n418, Y => n442);
   U457 : na210 port map( A => n264, B => input_b(3), Y => n441);
   U458 : na210 port map( A => n443, B => n444, Y => U3_U1_Z_2);
   U459 : na210 port map( A => input_a(2), B => n418, Y => n444);
   U460 : na210 port map( A => n411, B => input_b(2), Y => n443);
   U461 : na210 port map( A => n445, B => n446, Y => U3_U1_Z_1);
   U462 : na210 port map( A => input_a(1), B => n418, Y => n446);
   U463 : na210 port map( A => n264, B => input_b(1), Y => n445);
   U464 : na210 port map( A => n447, B => n448, Y => U3_U1_Z_0);
   U465 : na210 port map( A => input_a(0), B => n418, Y => n448);
   U466 : na210 port map( A => n398, B => n449, Y => n418);
   U467 : iv110 port map( A => n412, Y => n449);
   U468 : no310 port map( A => n404, B => n410, C => n450, Y => n412);
   U469 : na210 port map( A => n405, B => n396, Y => n450);
   U470 : iv110 port map( A => op(3), Y => n405);
   U471 : iv110 port map( A => n451, Y => n398);
   U472 : no310 port map( A => n404, B => op(3), C => n400, Y => n451);
   U473 : na210 port map( A => n396, B => n410, Y => n400);
   U474 : iv110 port map( A => op(0), Y => n410);
   U475 : iv110 port map( A => op(1), Y => n396);
   U476 : na210 port map( A => n411, B => input_b(0), Y => n447);
   U477 : no310 port map( A => n407, B => op(3), C => n404, Y => n411);
   U478 : iv110 port map( A => op(2), Y => n404);
   U479 : na210 port map( A => op(1), B => op(0), Y => n407);
   r73_U66 : ex210 port map( A => n262, B => U3_U3_Z_0, Y => r73_n55);
   r73_U65 : ex210 port map( A => n262, B => U3_U2_Z_0, Y => r73_n56);
   r73_U64 : ex210 port map( A => U3_U1_Z_0, B => r73_n56, Y => r73_n57);
   r73_U63 : ex210 port map( A => r73_n55, B => r73_n57, Y => N138);
   r73_U62 : na210 port map( A => r73_n56, B => r73_n55, Y => r73_n51);
   r73_U61 : no210 port map( A => r73_n55, B => r73_n56, Y => r73_n54);
   r73_U60 : iv110 port map( A => r73_n54, Y => r73_n53);
   r73_U59 : na210 port map( A => U3_U1_Z_0, B => r73_n53, Y => r73_n52);
   r73_U58 : na210 port map( A => r73_n51, B => r73_n52, Y => r73_n48);
   r73_U57 : ex210 port map( A => U3_U1_Z_1, B => r73_n48, Y => r73_n50);
   r73_U56 : ex210 port map( A => n262, B => U3_U2_Z_1, Y => r73_n49);
   r73_U55 : ex210 port map( A => r73_n50, B => r73_n49, Y => N139);
   r73_U54 : na210 port map( A => r73_n49, B => r73_n48, Y => r73_n44);
   r73_U53 : no210 port map( A => r73_n48, B => r73_n49, Y => r73_n47);
   r73_U52 : iv110 port map( A => r73_n47, Y => r73_n46);
   r73_U51 : na210 port map( A => U3_U1_Z_1, B => r73_n46, Y => r73_n45);
   r73_U50 : na210 port map( A => r73_n44, B => r73_n45, Y => r73_n41);
   r73_U49 : ex210 port map( A => r73_n41, B => U3_U1_Z_2, Y => r73_n43);
   r73_U48 : ex210 port map( A => n262, B => U3_U2_Z_2, Y => r73_n42);
   r73_U47 : ex210 port map( A => r73_n43, B => r73_n42, Y => N140);
   r73_U46 : na210 port map( A => r73_n42, B => r73_n41, Y => r73_n37);
   r73_U45 : no210 port map( A => r73_n41, B => r73_n42, Y => r73_n40);
   r73_U44 : iv110 port map( A => r73_n40, Y => r73_n39);
   r73_U43 : na210 port map( A => U3_U1_Z_2, B => r73_n39, Y => r73_n38);
   r73_U42 : na210 port map( A => r73_n37, B => r73_n38, Y => r73_n34);
   r73_U41 : ex210 port map( A => U3_U1_Z_3, B => r73_n34, Y => r73_n36);
   r73_U40 : ex210 port map( A => n262, B => U3_U2_Z_3, Y => r73_n35);
   r73_U39 : ex210 port map( A => r73_n36, B => r73_n35, Y => N141);
   r73_U38 : na210 port map( A => r73_n35, B => r73_n34, Y => r73_n30);
   r73_U37 : no210 port map( A => r73_n34, B => r73_n35, Y => r73_n33);
   r73_U36 : iv110 port map( A => r73_n33, Y => r73_n32);
   r73_U35 : na210 port map( A => U3_U1_Z_3, B => r73_n32, Y => r73_n31);
   r73_U34 : na210 port map( A => r73_n30, B => r73_n31, Y => r73_n27);
   r73_U33 : ex210 port map( A => r73_n27, B => U3_U1_Z_4, Y => r73_n29);
   r73_U32 : ex210 port map( A => n262, B => U3_U2_Z_4, Y => r73_n28);
   r73_U31 : ex210 port map( A => r73_n29, B => r73_n28, Y => N142);
   r73_U30 : na210 port map( A => r73_n28, B => r73_n27, Y => r73_n23);
   r73_U29 : no210 port map( A => r73_n27, B => r73_n28, Y => r73_n26);
   r73_U28 : iv110 port map( A => r73_n26, Y => r73_n25);
   r73_U27 : na210 port map( A => U3_U1_Z_4, B => r73_n25, Y => r73_n24);
   r73_U26 : na210 port map( A => r73_n23, B => r73_n24, Y => r73_n20);
   r73_U25 : ex210 port map( A => U3_U1_Z_5, B => r73_n20, Y => r73_n22);
   r73_U24 : ex210 port map( A => n262, B => U3_U2_Z_5, Y => r73_n21);
   r73_U23 : ex210 port map( A => r73_n22, B => r73_n21, Y => N143);
   r73_U22 : na210 port map( A => r73_n21, B => r73_n20, Y => r73_n16);
   r73_U21 : no210 port map( A => r73_n20, B => r73_n21, Y => r73_n19);
   r73_U20 : iv110 port map( A => r73_n19, Y => r73_n18);
   r73_U19 : na210 port map( A => U3_U1_Z_5, B => r73_n18, Y => r73_n17);
   r73_U18 : na210 port map( A => r73_n16, B => r73_n17, Y => r73_n13);
   r73_U17 : ex210 port map( A => r73_n13, B => U3_U1_Z_6, Y => r73_n15);
   r73_U16 : ex210 port map( A => n262, B => U3_U2_Z_6, Y => r73_n14);
   r73_U15 : ex210 port map( A => r73_n15, B => r73_n14, Y => N144);
   r73_U14 : na210 port map( A => r73_n14, B => r73_n13, Y => r73_n9);
   r73_U13 : no210 port map( A => r73_n13, B => r73_n14, Y => r73_n12);
   r73_U12 : iv110 port map( A => r73_n12, Y => r73_n11);
   r73_U11 : na210 port map( A => U3_U1_Z_6, B => r73_n11, Y => r73_n10);
   r73_U10 : na210 port map( A => r73_n9, B => r73_n10, Y => r73_n6);
   r73_U9 : ex210 port map( A => U3_U1_Z_7, B => r73_n6, Y => r73_n8);
   r73_U8 : ex210 port map( A => n262, B => U3_U2_Z_7, Y => r73_n7);
   r73_U7 : ex210 port map( A => r73_n8, B => r73_n7, Y => N145);
   r73_U6 : na210 port map( A => r73_n7, B => r73_n6, Y => r73_n2);
   r73_U5 : no210 port map( A => r73_n6, B => r73_n7, Y => r73_n5);
   r73_U4 : iv110 port map( A => r73_n5, Y => r73_n4);
   r73_U3 : na210 port map( A => U3_U1_Z_7, B => r73_n4, Y => r73_n3);
   r73_U2 : na210 port map( A => r73_n2, B => r73_n3, Y => r73_n1);
   r73_U1 : ex210 port map( A => r73_n1, B => n262, Y => N146);

end synthesised;



