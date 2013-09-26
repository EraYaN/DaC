
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

architecture synthesised of ram is

   component iv110
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component na310
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component no210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component no310
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component na210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component mu111
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component dfn10
      port( D, CK : in std_logic;  Q : out std_logic);
   end component;
   
   signal ram_0_7_port, ram_0_6_port, ram_0_5_port, ram_0_4_port, ram_0_3_port,
      ram_0_2_port, ram_0_1_port, ram_0_0_port, ram_1_7_port, ram_1_6_port, 
      ram_1_5_port, ram_1_4_port, ram_1_3_port, ram_1_2_port, ram_1_1_port, 
      ram_1_0_port, ram_2_7_port, ram_2_6_port, ram_2_5_port, ram_2_4_port, 
      ram_2_3_port, ram_2_2_port, ram_2_1_port, ram_2_0_port, ram_3_7_port, 
      ram_3_6_port, ram_3_5_port, ram_3_4_port, ram_3_3_port, ram_3_2_port, 
      ram_3_1_port, ram_3_0_port, ram_4_7_port, ram_4_6_port, ram_4_5_port, 
      ram_4_4_port, ram_4_3_port, ram_4_2_port, ram_4_1_port, ram_4_0_port, 
      ram_5_7_port, ram_5_6_port, ram_5_5_port, ram_5_4_port, ram_5_3_port, 
      ram_5_2_port, ram_5_1_port, ram_5_0_port, ram_6_7_port, ram_6_6_port, 
      ram_6_5_port, ram_6_4_port, ram_6_3_port, ram_6_2_port, ram_6_1_port, 
      ram_6_0_port, ram_7_7_port, ram_7_6_port, ram_7_5_port, ram_7_4_port, 
      ram_7_3_port, ram_7_2_port, ram_7_1_port, ram_7_0_port, n276, n277, n278,
      n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, 
      n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, 
      n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, 
      n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, 
      n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, 
      n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, 
      n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, 
      n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, 
      n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, 
      n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, 
      n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, 
      n411, n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, 
      n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, 
      n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446, 
      n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457, n458, 
      n459, n460, n461, n462, n463, n464, n465, n466, n467, n468, n469, n470, 
      n471, n472, n473, n474, n475, n476, n477, n478, n479, n480, n481, n482, 
      n483, n484, n485, n486, n487, n488, n489, n490, n491, n492, n493, n494, 
      n495, n496, n497, n498, n499, n500, n501, n502, n503, n504, n505, n506 : 
      std_logic;

begin
   
   ram_reg_0_7_inst : dfn10 port map( D => n339, CK => clk, Q => ram_0_7_port);
   ram_reg_0_6_inst : dfn10 port map( D => n338, CK => clk, Q => ram_0_6_port);
   ram_reg_0_5_inst : dfn10 port map( D => n337, CK => clk, Q => ram_0_5_port);
   ram_reg_0_4_inst : dfn10 port map( D => n336, CK => clk, Q => ram_0_4_port);
   ram_reg_0_3_inst : dfn10 port map( D => n335, CK => clk, Q => ram_0_3_port);
   ram_reg_0_2_inst : dfn10 port map( D => n334, CK => clk, Q => ram_0_2_port);
   ram_reg_0_1_inst : dfn10 port map( D => n333, CK => clk, Q => ram_0_1_port);
   ram_reg_0_0_inst : dfn10 port map( D => n332, CK => clk, Q => ram_0_0_port);
   ram_reg_1_7_inst : dfn10 port map( D => n331, CK => clk, Q => ram_1_7_port);
   ram_reg_1_6_inst : dfn10 port map( D => n330, CK => clk, Q => ram_1_6_port);
   ram_reg_1_5_inst : dfn10 port map( D => n329, CK => clk, Q => ram_1_5_port);
   ram_reg_1_4_inst : dfn10 port map( D => n328, CK => clk, Q => ram_1_4_port);
   ram_reg_1_3_inst : dfn10 port map( D => n327, CK => clk, Q => ram_1_3_port);
   ram_reg_1_2_inst : dfn10 port map( D => n326, CK => clk, Q => ram_1_2_port);
   ram_reg_1_1_inst : dfn10 port map( D => n325, CK => clk, Q => ram_1_1_port);
   ram_reg_1_0_inst : dfn10 port map( D => n324, CK => clk, Q => ram_1_0_port);
   ram_reg_2_7_inst : dfn10 port map( D => n323, CK => clk, Q => ram_2_7_port);
   ram_reg_2_6_inst : dfn10 port map( D => n322, CK => clk, Q => ram_2_6_port);
   ram_reg_2_5_inst : dfn10 port map( D => n321, CK => clk, Q => ram_2_5_port);
   ram_reg_2_4_inst : dfn10 port map( D => n320, CK => clk, Q => ram_2_4_port);
   ram_reg_2_3_inst : dfn10 port map( D => n319, CK => clk, Q => ram_2_3_port);
   ram_reg_2_2_inst : dfn10 port map( D => n318, CK => clk, Q => ram_2_2_port);
   ram_reg_2_1_inst : dfn10 port map( D => n317, CK => clk, Q => ram_2_1_port);
   ram_reg_2_0_inst : dfn10 port map( D => n316, CK => clk, Q => ram_2_0_port);
   ram_reg_3_7_inst : dfn10 port map( D => n315, CK => clk, Q => ram_3_7_port);
   ram_reg_3_6_inst : dfn10 port map( D => n314, CK => clk, Q => ram_3_6_port);
   ram_reg_3_5_inst : dfn10 port map( D => n313, CK => clk, Q => ram_3_5_port);
   ram_reg_3_4_inst : dfn10 port map( D => n312, CK => clk, Q => ram_3_4_port);
   ram_reg_3_3_inst : dfn10 port map( D => n311, CK => clk, Q => ram_3_3_port);
   ram_reg_3_2_inst : dfn10 port map( D => n310, CK => clk, Q => ram_3_2_port);
   ram_reg_3_1_inst : dfn10 port map( D => n309, CK => clk, Q => ram_3_1_port);
   ram_reg_3_0_inst : dfn10 port map( D => n308, CK => clk, Q => ram_3_0_port);
   ram_reg_4_7_inst : dfn10 port map( D => n307, CK => clk, Q => ram_4_7_port);
   ram_reg_4_6_inst : dfn10 port map( D => n306, CK => clk, Q => ram_4_6_port);
   ram_reg_4_5_inst : dfn10 port map( D => n305, CK => clk, Q => ram_4_5_port);
   ram_reg_4_4_inst : dfn10 port map( D => n304, CK => clk, Q => ram_4_4_port);
   ram_reg_4_3_inst : dfn10 port map( D => n303, CK => clk, Q => ram_4_3_port);
   ram_reg_4_2_inst : dfn10 port map( D => n302, CK => clk, Q => ram_4_2_port);
   ram_reg_4_1_inst : dfn10 port map( D => n301, CK => clk, Q => ram_4_1_port);
   ram_reg_4_0_inst : dfn10 port map( D => n300, CK => clk, Q => ram_4_0_port);
   ram_reg_5_7_inst : dfn10 port map( D => n299, CK => clk, Q => ram_5_7_port);
   ram_reg_5_6_inst : dfn10 port map( D => n298, CK => clk, Q => ram_5_6_port);
   ram_reg_5_5_inst : dfn10 port map( D => n297, CK => clk, Q => ram_5_5_port);
   ram_reg_5_4_inst : dfn10 port map( D => n296, CK => clk, Q => ram_5_4_port);
   ram_reg_5_3_inst : dfn10 port map( D => n295, CK => clk, Q => ram_5_3_port);
   ram_reg_5_2_inst : dfn10 port map( D => n294, CK => clk, Q => ram_5_2_port);
   ram_reg_5_1_inst : dfn10 port map( D => n293, CK => clk, Q => ram_5_1_port);
   ram_reg_5_0_inst : dfn10 port map( D => n292, CK => clk, Q => ram_5_0_port);
   ram_reg_6_7_inst : dfn10 port map( D => n291, CK => clk, Q => ram_6_7_port);
   ram_reg_6_6_inst : dfn10 port map( D => n290, CK => clk, Q => ram_6_6_port);
   ram_reg_6_5_inst : dfn10 port map( D => n289, CK => clk, Q => ram_6_5_port);
   ram_reg_6_4_inst : dfn10 port map( D => n288, CK => clk, Q => ram_6_4_port);
   ram_reg_6_3_inst : dfn10 port map( D => n287, CK => clk, Q => ram_6_3_port);
   ram_reg_6_2_inst : dfn10 port map( D => n286, CK => clk, Q => ram_6_2_port);
   ram_reg_6_1_inst : dfn10 port map( D => n285, CK => clk, Q => ram_6_1_port);
   ram_reg_6_0_inst : dfn10 port map( D => n284, CK => clk, Q => ram_6_0_port);
   ram_reg_7_7_inst : dfn10 port map( D => n283, CK => clk, Q => ram_7_7_port);
   ram_reg_7_6_inst : dfn10 port map( D => n282, CK => clk, Q => ram_7_6_port);
   ram_reg_7_5_inst : dfn10 port map( D => n281, CK => clk, Q => ram_7_5_port);
   ram_reg_7_4_inst : dfn10 port map( D => n280, CK => clk, Q => ram_7_4_port);
   ram_reg_7_3_inst : dfn10 port map( D => n279, CK => clk, Q => ram_7_3_port);
   ram_reg_7_2_inst : dfn10 port map( D => n278, CK => clk, Q => ram_7_2_port);
   ram_reg_7_1_inst : dfn10 port map( D => n277, CK => clk, Q => ram_7_1_port);
   ram_reg_7_0_inst : dfn10 port map( D => n276, CK => clk, Q => ram_7_0_port);
   U341 : no210 port map( A => n353, B => n354, Y => n340);
   U342 : no210 port map( A => n356, B => n354, Y => n341);
   U343 : no210 port map( A => n358, B => n354, Y => n342);
   U344 : no210 port map( A => n360, B => n354, Y => n343);
   U345 : mu111 port map( A => d_in(7), B => ram_0_7_port, S => n344, Y => n339
                           );
   U346 : mu111 port map( A => d_in(6), B => ram_0_6_port, S => n344, Y => n338
                           );
   U347 : mu111 port map( A => d_in(5), B => ram_0_5_port, S => n344, Y => n337
                           );
   U348 : mu111 port map( A => d_in(4), B => ram_0_4_port, S => n344, Y => n336
                           );
   U349 : mu111 port map( A => d_in(3), B => ram_0_3_port, S => n344, Y => n335
                           );
   U350 : mu111 port map( A => d_in(2), B => ram_0_2_port, S => n344, Y => n334
                           );
   U351 : mu111 port map( A => d_in(1), B => ram_0_1_port, S => n344, Y => n333
                           );
   U352 : mu111 port map( A => d_in(0), B => ram_0_0_port, S => n344, Y => n332
                           );
   U353 : na210 port map( A => write, B => n345, Y => n344);
   U354 : mu111 port map( A => d_in(7), B => ram_1_7_port, S => n346, Y => n331
                           );
   U355 : mu111 port map( A => d_in(6), B => ram_1_6_port, S => n346, Y => n330
                           );
   U356 : mu111 port map( A => d_in(5), B => ram_1_5_port, S => n346, Y => n329
                           );
   U357 : mu111 port map( A => d_in(4), B => ram_1_4_port, S => n346, Y => n328
                           );
   U358 : mu111 port map( A => d_in(3), B => ram_1_3_port, S => n346, Y => n327
                           );
   U359 : mu111 port map( A => d_in(2), B => ram_1_2_port, S => n346, Y => n326
                           );
   U360 : mu111 port map( A => d_in(1), B => ram_1_1_port, S => n346, Y => n325
                           );
   U361 : mu111 port map( A => d_in(0), B => ram_1_0_port, S => n346, Y => n324
                           );
   U362 : na210 port map( A => n347, B => write, Y => n346);
   U363 : mu111 port map( A => d_in(7), B => ram_2_7_port, S => n348, Y => n323
                           );
   U364 : mu111 port map( A => d_in(6), B => ram_2_6_port, S => n348, Y => n322
                           );
   U365 : mu111 port map( A => d_in(5), B => ram_2_5_port, S => n348, Y => n321
                           );
   U366 : mu111 port map( A => d_in(4), B => ram_2_4_port, S => n348, Y => n320
                           );
   U367 : mu111 port map( A => d_in(3), B => ram_2_3_port, S => n348, Y => n319
                           );
   U368 : mu111 port map( A => d_in(2), B => ram_2_2_port, S => n348, Y => n318
                           );
   U369 : mu111 port map( A => d_in(1), B => ram_2_1_port, S => n348, Y => n317
                           );
   U370 : mu111 port map( A => d_in(0), B => ram_2_0_port, S => n348, Y => n316
                           );
   U371 : na210 port map( A => n349, B => write, Y => n348);
   U372 : mu111 port map( A => d_in(7), B => ram_3_7_port, S => n350, Y => n315
                           );
   U373 : mu111 port map( A => d_in(6), B => ram_3_6_port, S => n350, Y => n314
                           );
   U374 : mu111 port map( A => d_in(5), B => ram_3_5_port, S => n350, Y => n313
                           );
   U375 : mu111 port map( A => d_in(4), B => ram_3_4_port, S => n350, Y => n312
                           );
   U376 : mu111 port map( A => d_in(3), B => ram_3_3_port, S => n350, Y => n311
                           );
   U377 : mu111 port map( A => d_in(2), B => ram_3_2_port, S => n350, Y => n310
                           );
   U378 : mu111 port map( A => d_in(1), B => ram_3_1_port, S => n350, Y => n309
                           );
   U379 : mu111 port map( A => d_in(0), B => ram_3_0_port, S => n350, Y => n308
                           );
   U380 : na210 port map( A => n351, B => write, Y => n350);
   U381 : mu111 port map( A => ram_4_7_port, B => d_in(7), S => n340, Y => n307
                           );
   U382 : mu111 port map( A => ram_4_6_port, B => d_in(6), S => n352, Y => n306
                           );
   U383 : mu111 port map( A => ram_4_5_port, B => d_in(5), S => n340, Y => n305
                           );
   U384 : mu111 port map( A => ram_4_4_port, B => d_in(4), S => n352, Y => n304
                           );
   U385 : mu111 port map( A => ram_4_3_port, B => d_in(3), S => n340, Y => n303
                           );
   U386 : mu111 port map( A => ram_4_2_port, B => d_in(2), S => n352, Y => n302
                           );
   U387 : mu111 port map( A => ram_4_1_port, B => d_in(1), S => n340, Y => n301
                           );
   U388 : mu111 port map( A => ram_4_0_port, B => d_in(0), S => n352, Y => n300
                           );
   U389 : no210 port map( A => n353, B => n354, Y => n352);
   U390 : mu111 port map( A => ram_5_7_port, B => d_in(7), S => n341, Y => n299
                           );
   U391 : mu111 port map( A => ram_5_6_port, B => d_in(6), S => n355, Y => n298
                           );
   U392 : mu111 port map( A => ram_5_5_port, B => d_in(5), S => n341, Y => n297
                           );
   U393 : mu111 port map( A => ram_5_4_port, B => d_in(4), S => n355, Y => n296
                           );
   U394 : mu111 port map( A => ram_5_3_port, B => d_in(3), S => n341, Y => n295
                           );
   U395 : mu111 port map( A => ram_5_2_port, B => d_in(2), S => n355, Y => n294
                           );
   U396 : mu111 port map( A => ram_5_1_port, B => d_in(1), S => n341, Y => n293
                           );
   U397 : mu111 port map( A => ram_5_0_port, B => d_in(0), S => n355, Y => n292
                           );
   U398 : no210 port map( A => n356, B => n354, Y => n355);
   U399 : mu111 port map( A => ram_6_7_port, B => d_in(7), S => n342, Y => n291
                           );
   U400 : mu111 port map( A => ram_6_6_port, B => d_in(6), S => n357, Y => n290
                           );
   U401 : mu111 port map( A => ram_6_5_port, B => d_in(5), S => n342, Y => n289
                           );
   U402 : mu111 port map( A => ram_6_4_port, B => d_in(4), S => n357, Y => n288
                           );
   U403 : mu111 port map( A => ram_6_3_port, B => d_in(3), S => n342, Y => n287
                           );
   U404 : mu111 port map( A => ram_6_2_port, B => d_in(2), S => n357, Y => n286
                           );
   U405 : mu111 port map( A => ram_6_1_port, B => d_in(1), S => n342, Y => n285
                           );
   U406 : mu111 port map( A => ram_6_0_port, B => d_in(0), S => n357, Y => n284
                           );
   U407 : no210 port map( A => n358, B => n354, Y => n357);
   U408 : mu111 port map( A => ram_7_7_port, B => d_in(7), S => n343, Y => n283
                           );
   U409 : mu111 port map( A => ram_7_6_port, B => d_in(6), S => n359, Y => n282
                           );
   U410 : mu111 port map( A => ram_7_5_port, B => d_in(5), S => n343, Y => n281
                           );
   U411 : mu111 port map( A => ram_7_4_port, B => d_in(4), S => n359, Y => n280
                           );
   U412 : mu111 port map( A => ram_7_3_port, B => d_in(3), S => n343, Y => n279
                           );
   U413 : mu111 port map( A => ram_7_2_port, B => d_in(2), S => n359, Y => n278
                           );
   U414 : mu111 port map( A => ram_7_1_port, B => d_in(1), S => n343, Y => n277
                           );
   U415 : mu111 port map( A => ram_7_0_port, B => d_in(0), S => n359, Y => n276
                           );
   U416 : no210 port map( A => n360, B => n354, Y => n359);
   U417 : iv110 port map( A => write, Y => n354);
   U418 : na310 port map( A => n361, B => n362, C => n363, Y => d_out(7));
   U419 : no310 port map( A => n364, B => n365, C => n366, Y => n363);
   U420 : iv110 port map( A => n367, Y => n366);
   U421 : na210 port map( A => n351, B => ram_3_7_port, Y => n367);
   U422 : iv110 port map( A => n368, Y => n365);
   U423 : na210 port map( A => n349, B => ram_2_7_port, Y => n368);
   U424 : na210 port map( A => n369, B => n370, Y => n364);
   U425 : na210 port map( A => ram_1_7_port, B => n347, Y => n370);
   U426 : na210 port map( A => ram_0_7_port, B => n345, Y => n369);
   U427 : no210 port map( A => n371, B => n372, Y => n362);
   U428 : no210 port map( A => n360, B => n373, Y => n372);
   U429 : iv110 port map( A => ram_7_7_port, Y => n373);
   U430 : no210 port map( A => n358, B => n374, Y => n371);
   U431 : iv110 port map( A => ram_6_7_port, Y => n374);
   U432 : no210 port map( A => n375, B => n376, Y => n361);
   U433 : no210 port map( A => n356, B => n377, Y => n376);
   U434 : iv110 port map( A => ram_5_7_port, Y => n377);
   U435 : no210 port map( A => n353, B => n378, Y => n375);
   U436 : iv110 port map( A => ram_4_7_port, Y => n378);
   U437 : na310 port map( A => n379, B => n380, C => n381, Y => d_out(6));
   U438 : no310 port map( A => n382, B => n383, C => n384, Y => n381);
   U439 : iv110 port map( A => n385, Y => n384);
   U440 : na210 port map( A => n351, B => ram_3_6_port, Y => n385);
   U441 : iv110 port map( A => n386, Y => n383);
   U442 : na210 port map( A => n349, B => ram_2_6_port, Y => n386);
   U443 : na210 port map( A => n387, B => n388, Y => n382);
   U444 : na210 port map( A => ram_1_6_port, B => n347, Y => n388);
   U445 : na210 port map( A => ram_0_6_port, B => n345, Y => n387);
   U446 : no210 port map( A => n389, B => n390, Y => n380);
   U447 : no210 port map( A => n360, B => n391, Y => n390);
   U448 : iv110 port map( A => ram_7_6_port, Y => n391);
   U449 : no210 port map( A => n358, B => n392, Y => n389);
   U450 : iv110 port map( A => ram_6_6_port, Y => n392);
   U451 : no210 port map( A => n393, B => n394, Y => n379);
   U452 : no210 port map( A => n356, B => n395, Y => n394);
   U453 : iv110 port map( A => ram_5_6_port, Y => n395);
   U454 : no210 port map( A => n353, B => n396, Y => n393);
   U455 : iv110 port map( A => ram_4_6_port, Y => n396);
   U456 : na310 port map( A => n397, B => n398, C => n399, Y => d_out(5));
   U457 : no310 port map( A => n400, B => n401, C => n402, Y => n399);
   U458 : iv110 port map( A => n403, Y => n402);
   U459 : na210 port map( A => n351, B => ram_3_5_port, Y => n403);
   U460 : iv110 port map( A => n404, Y => n401);
   U461 : na210 port map( A => n349, B => ram_2_5_port, Y => n404);
   U462 : na210 port map( A => n405, B => n406, Y => n400);
   U463 : na210 port map( A => ram_1_5_port, B => n347, Y => n406);
   U464 : na210 port map( A => ram_0_5_port, B => n345, Y => n405);
   U465 : no210 port map( A => n407, B => n408, Y => n398);
   U466 : no210 port map( A => n360, B => n409, Y => n408);
   U467 : iv110 port map( A => ram_7_5_port, Y => n409);
   U468 : no210 port map( A => n358, B => n410, Y => n407);
   U469 : iv110 port map( A => ram_6_5_port, Y => n410);
   U470 : no210 port map( A => n411, B => n412, Y => n397);
   U471 : no210 port map( A => n356, B => n413, Y => n412);
   U472 : iv110 port map( A => ram_5_5_port, Y => n413);
   U473 : no210 port map( A => n353, B => n414, Y => n411);
   U474 : iv110 port map( A => ram_4_5_port, Y => n414);
   U475 : na310 port map( A => n415, B => n416, C => n417, Y => d_out(4));
   U476 : no310 port map( A => n418, B => n419, C => n420, Y => n417);
   U477 : iv110 port map( A => n421, Y => n420);
   U478 : na210 port map( A => n351, B => ram_3_4_port, Y => n421);
   U479 : iv110 port map( A => n422, Y => n419);
   U480 : na210 port map( A => n349, B => ram_2_4_port, Y => n422);
   U481 : na210 port map( A => n423, B => n424, Y => n418);
   U482 : na210 port map( A => ram_1_4_port, B => n347, Y => n424);
   U483 : na210 port map( A => ram_0_4_port, B => n345, Y => n423);
   U484 : no210 port map( A => n425, B => n426, Y => n416);
   U485 : no210 port map( A => n360, B => n427, Y => n426);
   U486 : iv110 port map( A => ram_7_4_port, Y => n427);
   U487 : no210 port map( A => n358, B => n428, Y => n425);
   U488 : iv110 port map( A => ram_6_4_port, Y => n428);
   U489 : no210 port map( A => n429, B => n430, Y => n415);
   U490 : no210 port map( A => n356, B => n431, Y => n430);
   U491 : iv110 port map( A => ram_5_4_port, Y => n431);
   U492 : no210 port map( A => n353, B => n432, Y => n429);
   U493 : iv110 port map( A => ram_4_4_port, Y => n432);
   U494 : na310 port map( A => n433, B => n434, C => n435, Y => d_out(3));
   U495 : no310 port map( A => n436, B => n437, C => n438, Y => n435);
   U496 : iv110 port map( A => n439, Y => n438);
   U497 : na210 port map( A => n351, B => ram_3_3_port, Y => n439);
   U498 : iv110 port map( A => n440, Y => n437);
   U499 : na210 port map( A => n349, B => ram_2_3_port, Y => n440);
   U500 : na210 port map( A => n441, B => n442, Y => n436);
   U501 : na210 port map( A => ram_1_3_port, B => n347, Y => n442);
   U502 : na210 port map( A => ram_0_3_port, B => n345, Y => n441);
   U503 : no210 port map( A => n443, B => n444, Y => n434);
   U504 : no210 port map( A => n360, B => n445, Y => n444);
   U505 : iv110 port map( A => ram_7_3_port, Y => n445);
   U506 : no210 port map( A => n358, B => n446, Y => n443);
   U507 : iv110 port map( A => ram_6_3_port, Y => n446);
   U508 : no210 port map( A => n447, B => n448, Y => n433);
   U509 : no210 port map( A => n356, B => n449, Y => n448);
   U510 : iv110 port map( A => ram_5_3_port, Y => n449);
   U511 : no210 port map( A => n353, B => n450, Y => n447);
   U512 : iv110 port map( A => ram_4_3_port, Y => n450);
   U513 : na310 port map( A => n451, B => n452, C => n453, Y => d_out(2));
   U514 : no310 port map( A => n454, B => n455, C => n456, Y => n453);
   U515 : iv110 port map( A => n457, Y => n456);
   U516 : na210 port map( A => n351, B => ram_3_2_port, Y => n457);
   U517 : iv110 port map( A => n458, Y => n455);
   U518 : na210 port map( A => n349, B => ram_2_2_port, Y => n458);
   U519 : na210 port map( A => n459, B => n460, Y => n454);
   U520 : na210 port map( A => ram_1_2_port, B => n347, Y => n460);
   U521 : na210 port map( A => ram_0_2_port, B => n345, Y => n459);
   U522 : no210 port map( A => n461, B => n462, Y => n452);
   U523 : no210 port map( A => n360, B => n463, Y => n462);
   U524 : iv110 port map( A => ram_7_2_port, Y => n463);
   U525 : no210 port map( A => n358, B => n464, Y => n461);
   U526 : iv110 port map( A => ram_6_2_port, Y => n464);
   U527 : no210 port map( A => n465, B => n466, Y => n451);
   U528 : no210 port map( A => n356, B => n467, Y => n466);
   U529 : iv110 port map( A => ram_5_2_port, Y => n467);
   U530 : no210 port map( A => n353, B => n468, Y => n465);
   U531 : iv110 port map( A => ram_4_2_port, Y => n468);
   U532 : na310 port map( A => n469, B => n470, C => n471, Y => d_out(1));
   U533 : no310 port map( A => n472, B => n473, C => n474, Y => n471);
   U534 : iv110 port map( A => n475, Y => n474);
   U535 : na210 port map( A => n351, B => ram_3_1_port, Y => n475);
   U536 : iv110 port map( A => n476, Y => n473);
   U537 : na210 port map( A => n349, B => ram_2_1_port, Y => n476);
   U538 : na210 port map( A => n477, B => n478, Y => n472);
   U539 : na210 port map( A => ram_1_1_port, B => n347, Y => n478);
   U540 : na210 port map( A => ram_0_1_port, B => n345, Y => n477);
   U541 : no210 port map( A => n479, B => n480, Y => n470);
   U542 : no210 port map( A => n360, B => n481, Y => n480);
   U543 : iv110 port map( A => ram_7_1_port, Y => n481);
   U544 : no210 port map( A => n358, B => n482, Y => n479);
   U545 : iv110 port map( A => ram_6_1_port, Y => n482);
   U546 : no210 port map( A => n483, B => n484, Y => n469);
   U547 : no210 port map( A => n356, B => n485, Y => n484);
   U548 : iv110 port map( A => ram_5_1_port, Y => n485);
   U549 : no210 port map( A => n353, B => n486, Y => n483);
   U550 : iv110 port map( A => ram_4_1_port, Y => n486);
   U551 : na310 port map( A => n487, B => n488, C => n489, Y => d_out(0));
   U552 : no310 port map( A => n490, B => n491, C => n492, Y => n489);
   U553 : iv110 port map( A => n493, Y => n492);
   U554 : na210 port map( A => n351, B => ram_3_0_port, Y => n493);
   U555 : no310 port map( A => n494, B => a(2), C => n495, Y => n351);
   U556 : iv110 port map( A => n496, Y => n491);
   U557 : na210 port map( A => n349, B => ram_2_0_port, Y => n496);
   U558 : no310 port map( A => a(0), B => a(2), C => n495, Y => n349);
   U559 : na210 port map( A => n497, B => n498, Y => n490);
   U560 : na210 port map( A => ram_1_0_port, B => n347, Y => n498);
   U561 : no310 port map( A => a(1), B => a(2), C => n494, Y => n347);
   U562 : na210 port map( A => ram_0_0_port, B => n345, Y => n497);
   U563 : no310 port map( A => a(1), B => a(2), C => a(0), Y => n345);
   U564 : no210 port map( A => n499, B => n500, Y => n488);
   U565 : no210 port map( A => n360, B => n501, Y => n500);
   U566 : iv110 port map( A => ram_7_0_port, Y => n501);
   U567 : na310 port map( A => a(1), B => a(0), C => a(2), Y => n360);
   U568 : no210 port map( A => n358, B => n502, Y => n499);
   U569 : iv110 port map( A => ram_6_0_port, Y => n502);
   U570 : na310 port map( A => a(1), B => n494, C => a(2), Y => n358);
   U571 : no210 port map( A => n503, B => n504, Y => n487);
   U572 : no210 port map( A => n356, B => n505, Y => n504);
   U573 : iv110 port map( A => ram_5_0_port, Y => n505);
   U574 : na310 port map( A => a(0), B => n495, C => a(2), Y => n356);
   U575 : no210 port map( A => n353, B => n506, Y => n503);
   U576 : iv110 port map( A => ram_4_0_port, Y => n506);
   U577 : na310 port map( A => n494, B => n495, C => a(2), Y => n353);
   U578 : iv110 port map( A => a(1), Y => n495);
   U579 : iv110 port map( A => a(0), Y => n494);

end synthesised;



