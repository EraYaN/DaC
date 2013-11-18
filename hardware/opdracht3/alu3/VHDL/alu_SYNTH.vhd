
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

architecture synthesised of alu is

   component iv110
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component na210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component no310
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component no210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ex210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component na310
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component mu111
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   signal X_Logic0_port, status_d_0_port, n34, n38, n39, n40, n239, n240, n241,
      n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, 
      n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, 
      n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, 
      n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, 
      n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, 
      n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, 
      n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, 
      n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, 
      n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, 
      n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, 
      n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, 
      n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, 
      n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, 
      n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, 
      n410, n411, n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, 
      n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, 
      n434, n435, n436 : std_logic;

begin
   status_d <= ( X_Logic0_port, X_Logic0_port, X_Logic0_port, status_d_0_port )
      ;
   
   X_Logic0_port <= '0';
   U37 : no210 port map( A => n39, B => n40, Y => n38);
   U38 : na210 port map( A => n40, B => n39, Y => n34);
   U248 : no310 port map( A => n364, B => op(2), C => n362, Y => n239);
   U249 : no310 port map( A => n365, B => op(3), C => n364, Y => n240);
   U250 : na310 port map( A => n241, B => n242, C => n243, Y => output_r(5));
   U251 : iv110 port map( A => n244, Y => n243);
   U252 : na310 port map( A => n245, B => n246, C => n247, Y => n244);
   U253 : na210 port map( A => n248, B => input_b(4), Y => n247);
   U254 : na210 port map( A => n249, B => input_a(4), Y => n246);
   U255 : ex210 port map( A => n250, B => n251, Y => n245);
   U256 : ex210 port map( A => n40, B => n39, Y => n251);
   U257 : mu111 port map( A => n252, B => n253, S => input_b(5), Y => n242);
   U258 : no210 port map( A => n254, B => n255, Y => n253);
   U259 : mu111 port map( A => n239, B => n257, S => input_a(5), Y => n255);
   U260 : no210 port map( A => n258, B => n259, Y => n252);
   U261 : mu111 port map( A => n260, B => n256, S => input_a(5), Y => n259);
   U262 : mu111 port map( A => n261, B => n262, S => input_a(5), Y => n241);
   U263 : na310 port map( A => n263, B => n264, C => n265, Y => output_r(4));
   U264 : iv110 port map( A => n266, Y => n265);
   U265 : na310 port map( A => n267, B => n268, C => n269, Y => n266);
   U266 : na210 port map( A => n248, B => input_b(3), Y => n269);
   U267 : na210 port map( A => n249, B => input_a(3), Y => n268);
   U268 : iv110 port map( A => n270, Y => n267);
   U269 : na210 port map( A => n271, B => n272, Y => n270);
   U270 : na210 port map( A => n273, B => input_a(5), Y => n272);
   U271 : na210 port map( A => n274, B => input_b(5), Y => n271);
   U272 : mu111 port map( A => n275, B => n276, S => input_b(4), Y => n264);
   U273 : no210 port map( A => n254, B => n277, Y => n276);
   U274 : mu111 port map( A => n239, B => n257, S => input_a(4), Y => n277);
   U275 : no210 port map( A => n258, B => n278, Y => n275);
   U276 : mu111 port map( A => n260, B => n256, S => input_a(4), Y => n278);
   U277 : no210 port map( A => n279, B => n280, Y => n263);
   U278 : mu111 port map( A => n258, B => n254, S => input_a(4), Y => n280);
   U279 : ex210 port map( A => n281, B => n282, Y => n279);
   U280 : ex210 port map( A => n283, B => n284, Y => n282);
   U281 : na310 port map( A => n285, B => n286, C => n287, Y => output_r(3));
   U282 : iv110 port map( A => n288, Y => n287);
   U283 : na310 port map( A => n289, B => n290, C => n291, Y => n288);
   U284 : na210 port map( A => n248, B => input_b(2), Y => n291);
   U285 : na210 port map( A => n249, B => input_a(2), Y => n290);
   U286 : iv110 port map( A => n292, Y => n289);
   U287 : na210 port map( A => n293, B => n294, Y => n292);
   U288 : na210 port map( A => n273, B => input_a(4), Y => n294);
   U289 : na210 port map( A => n274, B => input_b(4), Y => n293);
   U290 : mu111 port map( A => n295, B => n296, S => input_b(3), Y => n286);
   U291 : no210 port map( A => n254, B => n297, Y => n296);
   U292 : mu111 port map( A => n239, B => n257, S => input_a(3), Y => n297);
   U293 : no210 port map( A => n258, B => n298, Y => n295);
   U294 : mu111 port map( A => n260, B => n256, S => input_a(3), Y => n298);
   U295 : no210 port map( A => n299, B => n300, Y => n285);
   U296 : mu111 port map( A => n258, B => n254, S => input_a(3), Y => n300);
   U297 : ex210 port map( A => n301, B => n302, Y => n299);
   U298 : ex210 port map( A => n303, B => n304, Y => n302);
   U299 : na310 port map( A => n305, B => n306, C => n307, Y => output_r(2));
   U300 : no310 port map( A => n308, B => n309, C => n310, Y => n307);
   U301 : iv110 port map( A => n311, Y => n310);
   U302 : na210 port map( A => n248, B => input_b(1), Y => n311);
   U303 : iv110 port map( A => n312, Y => n309);
   U304 : na210 port map( A => n249, B => input_a(1), Y => n312);
   U305 : na210 port map( A => n313, B => n314, Y => n308);
   U306 : na210 port map( A => n273, B => input_a(3), Y => n314);
   U307 : na210 port map( A => n274, B => input_b(3), Y => n313);
   U308 : mu111 port map( A => n315, B => n316, S => input_b(2), Y => n306);
   U309 : no210 port map( A => n254, B => n317, Y => n316);
   U310 : mu111 port map( A => n239, B => n257, S => input_a(2), Y => n317);
   U311 : no210 port map( A => n258, B => n318, Y => n315);
   U312 : mu111 port map( A => n260, B => n256, S => input_a(2), Y => n318);
   U313 : no210 port map( A => n319, B => n320, Y => n305);
   U314 : mu111 port map( A => n258, B => n254, S => input_a(2), Y => n320);
   U315 : ex210 port map( A => n321, B => n322, Y => n319);
   U316 : ex210 port map( A => n323, B => n324, Y => n322);
   U317 : na310 port map( A => n325, B => n326, C => n327, Y => output_r(1));
   U318 : iv110 port map( A => n328, Y => n327);
   U319 : na310 port map( A => n329, B => n330, C => n331, Y => n328);
   U320 : na210 port map( A => n248, B => input_b(0), Y => n331);
   U321 : na210 port map( A => n249, B => input_a(0), Y => n330);
   U322 : iv110 port map( A => n332, Y => n329);
   U323 : na210 port map( A => n333, B => n334, Y => n332);
   U324 : na210 port map( A => n273, B => input_a(2), Y => n334);
   U325 : na210 port map( A => n274, B => input_b(2), Y => n333);
   U326 : mu111 port map( A => n335, B => n336, S => input_b(1), Y => n326);
   U327 : no210 port map( A => n254, B => n337, Y => n336);
   U328 : mu111 port map( A => n239, B => n257, S => input_a(1), Y => n337);
   U329 : no210 port map( A => n258, B => n338, Y => n335);
   U330 : mu111 port map( A => n260, B => n256, S => input_a(1), Y => n338);
   U331 : no210 port map( A => n339, B => n340, Y => n325);
   U332 : mu111 port map( A => n258, B => n254, S => input_a(1), Y => n340);
   U333 : ex210 port map( A => n341, B => n342, Y => n339);
   U334 : ex210 port map( A => n343, B => n344, Y => n342);
   U335 : na310 port map( A => n345, B => n346, C => n347, Y => output_r(0));
   U336 : iv110 port map( A => n348, Y => n347);
   U337 : na310 port map( A => n349, B => n350, C => n351, Y => n348);
   U338 : na210 port map( A => input_b(1), B => n274, Y => n351);
   U339 : no310 port map( A => n352, B => op(0), C => n353, Y => n274);
   U340 : na210 port map( A => input_a(1), B => n273, Y => n350);
   U341 : no210 port map( A => n353, B => n354, Y => n273);
   U342 : ex210 port map( A => n355, B => n356, Y => n349);
   U343 : ex210 port map( A => n357, B => n358, Y => n356);
   U344 : mu111 port map( A => n359, B => n360, S => input_b(0), Y => n346);
   U345 : no210 port map( A => n254, B => n361, Y => n360);
   U346 : mu111 port map( A => n239, B => n257, S => input_a(0), Y => n361);
   U347 : no210 port map( A => n362, B => n354, Y => n257);
   U348 : iv110 port map( A => n262, Y => n254);
   U349 : no210 port map( A => n258, B => n363, Y => n359);
   U350 : mu111 port map( A => n260, B => n256, S => input_a(0), Y => n363);
   U351 : no310 port map( A => n364, B => op(2), C => n362, Y => n256);
   U352 : no310 port map( A => n365, B => op(0), C => n362, Y => n260);
   U353 : iv110 port map( A => n261, Y => n258);
   U354 : mu111 port map( A => n261, B => n262, S => input_a(0), Y => n345);
   U355 : na310 port map( A => op(3), B => op(1), C => n366, Y => n262);
   U356 : no210 port map( A => op(2), B => op(0), Y => n366);
   U357 : na310 port map( A => op(3), B => op(0), C => n367, Y => n261);
   U358 : no210 port map( A => op(1), B => n365, Y => n367);
   U359 : na210 port map( A => n368, B => n369, Y => n40);
   U360 : na210 port map( A => n370, B => n283, Y => n369);
   U361 : na210 port map( A => n371, B => n372, Y => n283);
   U362 : na210 port map( A => n373, B => n303, Y => n372);
   U363 : na210 port map( A => n374, B => n375, Y => n303);
   U364 : na210 port map( A => input_a(3), B => n376, Y => n375);
   U365 : na210 port map( A => input_b(3), B => n377, Y => n374);
   U366 : iv110 port map( A => n378, Y => n373);
   U367 : no210 port map( A => n304, B => n301, Y => n378);
   U368 : na210 port map( A => n301, B => n304, Y => n371);
   U369 : na210 port map( A => n379, B => n380, Y => n304);
   U370 : na210 port map( A => n381, B => n323, Y => n380);
   U371 : na210 port map( A => n382, B => n383, Y => n323);
   U372 : na210 port map( A => n384, B => n343, Y => n383);
   U373 : na210 port map( A => n385, B => n386, Y => n343);
   U374 : iv110 port map( A => n387, Y => n386);
   U375 : no210 port map( A => n355, B => n388, Y => n387);
   U376 : no210 port map( A => n357, B => n358, Y => n388);
   U377 : ex210 port map( A => n389, B => n390, Y => n355);
   U378 : na210 port map( A => n391, B => n392, Y => n389);
   U379 : na210 port map( A => input_b(0), B => n376, Y => n392);
   U380 : na210 port map( A => input_a(0), B => n240, Y => n391);
   U381 : na210 port map( A => n358, B => n357, Y => n385);
   U382 : na210 port map( A => n393, B => n394, Y => n357);
   U383 : na210 port map( A => input_a(0), B => n376, Y => n394);
   U384 : na210 port map( A => input_b(0), B => n377, Y => n393);
   U385 : na210 port map( A => n390, B => n395, Y => n358);
   U386 : na210 port map( A => n396, B => status_d_0_port, Y => n395);
   U387 : na310 port map( A => n397, B => n398, C => n399, Y => status_d_0_port
                           );
   U388 : na210 port map( A => n248, B => input_b(5), Y => n399);
   U389 : no210 port map( A => n353, B => n364, Y => n248);
   U390 : na210 port map( A => n396, B => n400, Y => n398);
   U391 : na210 port map( A => n34, B => n401, Y => n400);
   U392 : iv110 port map( A => n402, Y => n401);
   U393 : no210 port map( A => n250, B => n38, Y => n402);
   U394 : ex210 port map( A => n403, B => n390, Y => n250);
   U395 : na210 port map( A => n404, B => n405, Y => n403);
   U396 : na210 port map( A => input_b(5), B => n376, Y => n405);
   U397 : na210 port map( A => input_a(5), B => n240, Y => n404);
   U398 : na210 port map( A => n249, B => input_a(5), Y => n397);
   U399 : no310 port map( A => n406, B => op(1), C => n353, Y => n249);
   U400 : na210 port map( A => n362, B => n365, Y => n353);
   U401 : na210 port map( A => n407, B => n408, Y => n384);
   U402 : iv110 port map( A => n344, Y => n407);
   U403 : na210 port map( A => n341, B => n344, Y => n382);
   U404 : na210 port map( A => n409, B => n410, Y => n344);
   U405 : na210 port map( A => input_a(1), B => n376, Y => n410);
   U406 : na210 port map( A => input_b(1), B => n377, Y => n409);
   U407 : iv110 port map( A => n408, Y => n341);
   U408 : ex210 port map( A => n411, B => n390, Y => n408);
   U409 : na210 port map( A => n412, B => n413, Y => n411);
   U410 : na210 port map( A => input_b(1), B => n376, Y => n413);
   U411 : na210 port map( A => input_a(1), B => n240, Y => n412);
   U412 : na210 port map( A => n414, B => n415, Y => n381);
   U413 : iv110 port map( A => n324, Y => n414);
   U414 : na210 port map( A => n321, B => n324, Y => n379);
   U415 : na210 port map( A => n416, B => n417, Y => n324);
   U416 : na210 port map( A => input_a(2), B => n376, Y => n417);
   U417 : na210 port map( A => input_b(2), B => n377, Y => n416);
   U418 : iv110 port map( A => n415, Y => n321);
   U419 : ex210 port map( A => n418, B => n390, Y => n415);
   U420 : na210 port map( A => n419, B => n420, Y => n418);
   U421 : na210 port map( A => input_b(2), B => n376, Y => n420);
   U422 : na210 port map( A => input_a(2), B => n240, Y => n419);
   U423 : iv110 port map( A => n421, Y => n301);
   U424 : ex210 port map( A => n422, B => n390, Y => n421);
   U425 : na210 port map( A => n423, B => n424, Y => n422);
   U426 : na210 port map( A => input_b(3), B => n376, Y => n424);
   U427 : na210 port map( A => input_a(3), B => n377, Y => n423);
   U428 : iv110 port map( A => n425, Y => n370);
   U429 : no210 port map( A => n284, B => n281, Y => n425);
   U430 : na210 port map( A => n281, B => n284, Y => n368);
   U431 : na210 port map( A => n426, B => n427, Y => n284);
   U432 : na210 port map( A => input_a(4), B => n376, Y => n427);
   U433 : na210 port map( A => input_b(4), B => n240, Y => n426);
   U434 : iv110 port map( A => n428, Y => n281);
   U435 : ex210 port map( A => n429, B => n390, Y => n428);
   U436 : no210 port map( A => n377, B => n430, Y => n390);
   U437 : na210 port map( A => n431, B => n432, Y => n429);
   U438 : na210 port map( A => input_b(4), B => n376, Y => n432);
   U439 : na210 port map( A => input_a(4), B => n240, Y => n431);
   U440 : na210 port map( A => n433, B => n434, Y => n39);
   U441 : na210 port map( A => input_a(5), B => n376, Y => n434);
   U442 : iv110 port map( A => n435, Y => n376);
   U443 : no210 port map( A => n396, B => n430, Y => n435);
   U444 : no310 port map( A => n406, B => n365, C => n436, Y => n430);
   U445 : na210 port map( A => n362, B => n352, Y => n436);
   U446 : iv110 port map( A => op(3), Y => n362);
   U447 : no310 port map( A => n354, B => op(3), C => n365, Y => n396);
   U448 : na210 port map( A => n352, B => n406, Y => n354);
   U449 : iv110 port map( A => op(0), Y => n406);
   U450 : iv110 port map( A => op(1), Y => n352);
   U451 : na210 port map( A => n377, B => input_b(5), Y => n433);
   U452 : no310 port map( A => n365, B => op(3), C => n364, Y => n377);
   U453 : na210 port map( A => op(1), B => op(0), Y => n364);
   U454 : iv110 port map( A => op(2), Y => n365);

end synthesised;



