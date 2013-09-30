
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
   
   component no210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component na310
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component na210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   signal n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, 
      n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, 
      n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, 
      n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, 
      n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, 
      n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, 
      n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, 
      n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, 
      n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, 
      n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, 
      n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, 
      n271, n272, n273, n274, n275, n276, n277, n278 : std_logic;

begin
   
   U221 : no210 port map( A => n140, B => n141, Y => write_out(7));
   U222 : no210 port map( A => n141, B => n142, Y => write_out(6));
   U223 : no210 port map( A => n141, B => n143, Y => write_out(5));
   U224 : no210 port map( A => n141, B => n144, Y => write_out(4));
   U225 : no210 port map( A => n141, B => n145, Y => write_out(3));
   U226 : no210 port map( A => n141, B => n146, Y => write_out(2));
   U227 : no210 port map( A => n141, B => n147, Y => write_out(1));
   U228 : no210 port map( A => n141, B => n148, Y => write_out(0));
   U229 : iv110 port map( A => write, Y => n141);
   U230 : na210 port map( A => n149, B => n150, Y => d_out_muxed(7));
   U231 : no210 port map( A => n151, B => n152, Y => n150);
   U232 : na210 port map( A => n153, B => n154, Y => n152);
   U233 : na210 port map( A => d_out(47), B => n155, Y => n154);
   U234 : na210 port map( A => d_out(39), B => n156, Y => n153);
   U235 : na210 port map( A => n157, B => n158, Y => n151);
   U236 : na210 port map( A => d_out(63), B => n159, Y => n158);
   U237 : na210 port map( A => d_out(55), B => n160, Y => n157);
   U238 : no210 port map( A => n161, B => n162, Y => n149);
   U239 : na210 port map( A => n163, B => n164, Y => n162);
   U240 : na210 port map( A => d_out(15), B => n165, Y => n164);
   U241 : na210 port map( A => d_out(7), B => n166, Y => n163);
   U242 : na210 port map( A => n167, B => n168, Y => n161);
   U243 : na210 port map( A => d_out(31), B => n169, Y => n168);
   U244 : na210 port map( A => d_out(23), B => n170, Y => n167);
   U245 : na210 port map( A => n171, B => n172, Y => d_out_muxed(6));
   U246 : no210 port map( A => n173, B => n174, Y => n172);
   U247 : na210 port map( A => n175, B => n176, Y => n174);
   U248 : na210 port map( A => d_out(46), B => n155, Y => n176);
   U249 : na210 port map( A => d_out(38), B => n156, Y => n175);
   U250 : na210 port map( A => n177, B => n178, Y => n173);
   U251 : na210 port map( A => d_out(62), B => n159, Y => n178);
   U252 : na210 port map( A => d_out(54), B => n160, Y => n177);
   U253 : no210 port map( A => n179, B => n180, Y => n171);
   U254 : na210 port map( A => n181, B => n182, Y => n180);
   U255 : na210 port map( A => d_out(14), B => n165, Y => n182);
   U256 : na210 port map( A => d_out(6), B => n166, Y => n181);
   U257 : na210 port map( A => n183, B => n184, Y => n179);
   U258 : na210 port map( A => d_out(30), B => n169, Y => n184);
   U259 : na210 port map( A => d_out(22), B => n170, Y => n183);
   U260 : na210 port map( A => n185, B => n186, Y => d_out_muxed(5));
   U261 : no210 port map( A => n187, B => n188, Y => n186);
   U262 : na210 port map( A => n189, B => n190, Y => n188);
   U263 : na210 port map( A => d_out(45), B => n155, Y => n190);
   U264 : na210 port map( A => d_out(37), B => n156, Y => n189);
   U265 : na210 port map( A => n191, B => n192, Y => n187);
   U266 : na210 port map( A => d_out(61), B => n159, Y => n192);
   U267 : na210 port map( A => d_out(53), B => n160, Y => n191);
   U268 : no210 port map( A => n193, B => n194, Y => n185);
   U269 : na210 port map( A => n195, B => n196, Y => n194);
   U270 : na210 port map( A => d_out(13), B => n165, Y => n196);
   U271 : na210 port map( A => d_out(5), B => n166, Y => n195);
   U272 : na210 port map( A => n197, B => n198, Y => n193);
   U273 : na210 port map( A => d_out(29), B => n169, Y => n198);
   U274 : na210 port map( A => d_out(21), B => n170, Y => n197);
   U275 : na210 port map( A => n199, B => n200, Y => d_out_muxed(4));
   U276 : no210 port map( A => n201, B => n202, Y => n200);
   U277 : na210 port map( A => n203, B => n204, Y => n202);
   U278 : na210 port map( A => d_out(44), B => n155, Y => n204);
   U279 : na210 port map( A => d_out(36), B => n156, Y => n203);
   U280 : na210 port map( A => n205, B => n206, Y => n201);
   U281 : na210 port map( A => d_out(60), B => n159, Y => n206);
   U282 : na210 port map( A => d_out(52), B => n160, Y => n205);
   U283 : no210 port map( A => n207, B => n208, Y => n199);
   U284 : na210 port map( A => n209, B => n210, Y => n208);
   U285 : na210 port map( A => d_out(12), B => n165, Y => n210);
   U286 : na210 port map( A => d_out(4), B => n166, Y => n209);
   U287 : na210 port map( A => n211, B => n212, Y => n207);
   U288 : na210 port map( A => d_out(28), B => n169, Y => n212);
   U289 : na210 port map( A => d_out(20), B => n170, Y => n211);
   U290 : na210 port map( A => n213, B => n214, Y => d_out_muxed(3));
   U291 : no210 port map( A => n215, B => n216, Y => n214);
   U292 : na210 port map( A => n217, B => n218, Y => n216);
   U293 : na210 port map( A => d_out(43), B => n155, Y => n218);
   U294 : na210 port map( A => d_out(35), B => n156, Y => n217);
   U295 : na210 port map( A => n219, B => n220, Y => n215);
   U296 : na210 port map( A => d_out(59), B => n159, Y => n220);
   U297 : na210 port map( A => d_out(51), B => n160, Y => n219);
   U298 : no210 port map( A => n221, B => n222, Y => n213);
   U299 : na210 port map( A => n223, B => n224, Y => n222);
   U300 : na210 port map( A => d_out(11), B => n165, Y => n224);
   U301 : na210 port map( A => d_out(3), B => n166, Y => n223);
   U302 : na210 port map( A => n225, B => n226, Y => n221);
   U303 : na210 port map( A => d_out(27), B => n169, Y => n226);
   U304 : na210 port map( A => d_out(19), B => n170, Y => n225);
   U305 : na210 port map( A => n227, B => n228, Y => d_out_muxed(2));
   U306 : no210 port map( A => n229, B => n230, Y => n228);
   U307 : na210 port map( A => n231, B => n232, Y => n230);
   U308 : na210 port map( A => d_out(42), B => n155, Y => n232);
   U309 : na210 port map( A => d_out(34), B => n156, Y => n231);
   U310 : na210 port map( A => n233, B => n234, Y => n229);
   U311 : na210 port map( A => d_out(58), B => n159, Y => n234);
   U312 : na210 port map( A => d_out(50), B => n160, Y => n233);
   U313 : no210 port map( A => n235, B => n236, Y => n227);
   U314 : na210 port map( A => n237, B => n238, Y => n236);
   U315 : na210 port map( A => d_out(10), B => n165, Y => n238);
   U316 : na210 port map( A => d_out(2), B => n166, Y => n237);
   U317 : na210 port map( A => n239, B => n240, Y => n235);
   U318 : na210 port map( A => d_out(26), B => n169, Y => n240);
   U319 : na210 port map( A => d_out(18), B => n170, Y => n239);
   U320 : na210 port map( A => n241, B => n242, Y => d_out_muxed(1));
   U321 : no210 port map( A => n243, B => n244, Y => n242);
   U322 : na210 port map( A => n245, B => n246, Y => n244);
   U323 : na210 port map( A => d_out(41), B => n155, Y => n246);
   U324 : na210 port map( A => d_out(33), B => n156, Y => n245);
   U325 : na210 port map( A => n247, B => n248, Y => n243);
   U326 : na210 port map( A => d_out(57), B => n159, Y => n248);
   U327 : na210 port map( A => d_out(49), B => n160, Y => n247);
   U328 : no210 port map( A => n249, B => n250, Y => n241);
   U329 : na210 port map( A => n251, B => n252, Y => n250);
   U330 : na210 port map( A => d_out(9), B => n165, Y => n252);
   U331 : na210 port map( A => d_out(1), B => n166, Y => n251);
   U332 : na210 port map( A => n253, B => n254, Y => n249);
   U333 : na210 port map( A => d_out(25), B => n169, Y => n254);
   U334 : na210 port map( A => d_out(17), B => n170, Y => n253);
   U335 : na210 port map( A => n255, B => n256, Y => d_out_muxed(0));
   U336 : no210 port map( A => n257, B => n258, Y => n256);
   U337 : na210 port map( A => n259, B => n260, Y => n258);
   U338 : na210 port map( A => d_out(40), B => n155, Y => n260);
   U339 : iv110 port map( A => n143, Y => n155);
   U340 : na210 port map( A => d_out(32), B => n156, Y => n259);
   U341 : iv110 port map( A => n144, Y => n156);
   U342 : na210 port map( A => n261, B => n262, Y => n257);
   U343 : na210 port map( A => d_out(56), B => n159, Y => n262);
   U344 : iv110 port map( A => n140, Y => n159);
   U345 : na210 port map( A => d_out(48), B => n160, Y => n261);
   U346 : iv110 port map( A => n142, Y => n160);
   U347 : no210 port map( A => n263, B => n264, Y => n255);
   U348 : na210 port map( A => n265, B => n266, Y => n264);
   U349 : na210 port map( A => d_out(8), B => n165, Y => n266);
   U350 : na210 port map( A => d_out(0), B => n166, Y => n265);
   U351 : na210 port map( A => n267, B => n268, Y => n263);
   U352 : na210 port map( A => d_out(24), B => n169, Y => n268);
   U353 : na210 port map( A => d_out(16), B => n170, Y => n267);
   U354 : no210 port map( A => n147, B => n269, Y => d_in(9));
   U355 : no210 port map( A => n147, B => n270, Y => d_in(8));
   U356 : no210 port map( A => n148, B => n271, Y => d_in(7));
   U357 : no210 port map( A => n148, B => n272, Y => d_in(6));
   U358 : no210 port map( A => n140, B => n271, Y => d_in(63));
   U359 : no210 port map( A => n140, B => n272, Y => d_in(62));
   U360 : no210 port map( A => n140, B => n273, Y => d_in(61));
   U361 : no210 port map( A => n140, B => n274, Y => d_in(60));
   U362 : no210 port map( A => n148, B => n273, Y => d_in(5));
   U363 : no210 port map( A => n140, B => n275, Y => d_in(59));
   U364 : no210 port map( A => n140, B => n276, Y => d_in(58));
   U365 : no210 port map( A => n140, B => n269, Y => d_in(57));
   U366 : no210 port map( A => n140, B => n270, Y => d_in(56));
   U367 : na310 port map( A => sel(1), B => sel(0), C => sel(2), Y => n140);
   U368 : no210 port map( A => n142, B => n271, Y => d_in(55));
   U369 : no210 port map( A => n142, B => n272, Y => d_in(54));
   U370 : no210 port map( A => n142, B => n273, Y => d_in(53));
   U371 : no210 port map( A => n142, B => n274, Y => d_in(52));
   U372 : no210 port map( A => n142, B => n275, Y => d_in(51));
   U373 : no210 port map( A => n142, B => n276, Y => d_in(50));
   U374 : no210 port map( A => n148, B => n274, Y => d_in(4));
   U375 : no210 port map( A => n142, B => n269, Y => d_in(49));
   U376 : no210 port map( A => n142, B => n270, Y => d_in(48));
   U377 : na310 port map( A => sel(1), B => n277, C => sel(2), Y => n142);
   U378 : no210 port map( A => n143, B => n271, Y => d_in(47));
   U379 : no210 port map( A => n143, B => n272, Y => d_in(46));
   U380 : no210 port map( A => n143, B => n273, Y => d_in(45));
   U381 : no210 port map( A => n143, B => n274, Y => d_in(44));
   U382 : no210 port map( A => n143, B => n275, Y => d_in(43));
   U383 : no210 port map( A => n143, B => n276, Y => d_in(42));
   U384 : no210 port map( A => n143, B => n269, Y => d_in(41));
   U385 : no210 port map( A => n143, B => n270, Y => d_in(40));
   U386 : na310 port map( A => sel(0), B => n278, C => sel(2), Y => n143);
   U387 : no210 port map( A => n148, B => n275, Y => d_in(3));
   U388 : no210 port map( A => n144, B => n271, Y => d_in(39));
   U389 : no210 port map( A => n144, B => n272, Y => d_in(38));
   U390 : no210 port map( A => n144, B => n273, Y => d_in(37));
   U391 : no210 port map( A => n144, B => n274, Y => d_in(36));
   U392 : no210 port map( A => n144, B => n275, Y => d_in(35));
   U393 : no210 port map( A => n144, B => n276, Y => d_in(34));
   U394 : no210 port map( A => n144, B => n269, Y => d_in(33));
   U395 : no210 port map( A => n144, B => n270, Y => d_in(32));
   U396 : na310 port map( A => n277, B => n278, C => sel(2), Y => n144);
   U397 : no210 port map( A => n145, B => n271, Y => d_in(31));
   U398 : no210 port map( A => n145, B => n272, Y => d_in(30));
   U399 : no210 port map( A => n148, B => n276, Y => d_in(2));
   U400 : no210 port map( A => n145, B => n273, Y => d_in(29));
   U401 : no210 port map( A => n145, B => n274, Y => d_in(28));
   U402 : no210 port map( A => n145, B => n275, Y => d_in(27));
   U403 : no210 port map( A => n145, B => n276, Y => d_in(26));
   U404 : no210 port map( A => n145, B => n269, Y => d_in(25));
   U405 : no210 port map( A => n145, B => n270, Y => d_in(24));
   U406 : iv110 port map( A => n169, Y => n145);
   U407 : no310 port map( A => n277, B => sel(2), C => n278, Y => n169);
   U408 : no210 port map( A => n146, B => n271, Y => d_in(23));
   U409 : no210 port map( A => n146, B => n272, Y => d_in(22));
   U410 : no210 port map( A => n146, B => n273, Y => d_in(21));
   U411 : no210 port map( A => n146, B => n274, Y => d_in(20));
   U412 : no210 port map( A => n148, B => n269, Y => d_in(1));
   U413 : no210 port map( A => n146, B => n275, Y => d_in(19));
   U414 : no210 port map( A => n146, B => n276, Y => d_in(18));
   U415 : no210 port map( A => n146, B => n269, Y => d_in(17));
   U416 : iv110 port map( A => d_in_muxed(1), Y => n269);
   U417 : no210 port map( A => n146, B => n270, Y => d_in(16));
   U418 : iv110 port map( A => n170, Y => n146);
   U419 : no310 port map( A => sel(0), B => sel(2), C => n278, Y => n170);
   U420 : iv110 port map( A => sel(1), Y => n278);
   U421 : no210 port map( A => n147, B => n271, Y => d_in(15));
   U422 : iv110 port map( A => d_in_muxed(7), Y => n271);
   U423 : no210 port map( A => n147, B => n272, Y => d_in(14));
   U424 : iv110 port map( A => d_in_muxed(6), Y => n272);
   U425 : no210 port map( A => n147, B => n273, Y => d_in(13));
   U426 : iv110 port map( A => d_in_muxed(5), Y => n273);
   U427 : no210 port map( A => n147, B => n274, Y => d_in(12));
   U428 : iv110 port map( A => d_in_muxed(4), Y => n274);
   U429 : no210 port map( A => n147, B => n275, Y => d_in(11));
   U430 : iv110 port map( A => d_in_muxed(3), Y => n275);
   U431 : no210 port map( A => n147, B => n276, Y => d_in(10));
   U432 : iv110 port map( A => d_in_muxed(2), Y => n276);
   U433 : iv110 port map( A => n165, Y => n147);
   U434 : no310 port map( A => sel(1), B => sel(2), C => n277, Y => n165);
   U435 : iv110 port map( A => sel(0), Y => n277);
   U436 : no210 port map( A => n148, B => n270, Y => d_in(0));
   U437 : iv110 port map( A => d_in_muxed(0), Y => n270);
   U438 : iv110 port map( A => n166, Y => n148);
   U439 : no310 port map( A => sel(1), B => sel(2), C => sel(0), Y => n166);

end synthesised;



