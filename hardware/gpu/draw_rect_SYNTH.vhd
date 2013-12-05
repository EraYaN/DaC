
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

architecture synthesised of draw_rect is

   component iv110
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component na210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component na310
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component no210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component mu111
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component no310
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component ex210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component tinv10
      port( A, E : in std_logic;  Y : out std_logic);
   end component;
   
   component dfn10
      port( D, CK : in std_logic;  Q : out std_logic);
   end component;
   
   component dfr11
      port( D, R, CK : in std_logic;  Q : out std_logic);
   end component;
   
   signal n328, cx_7_port, cx_6_port, cx_5_port, cx_4_port, cx_3_port, 
      cx_2_port, cx_1_port, cx_0_port, cy_6_port, cy_5_port, cy_4_port, 
      cy_3_port, cy_2_port, cy_1_port, cy_0_port, almost_done, almost_done_tmp,
      started, n3, n5, n7, n9, n11, n13, n15, n17, n19, n21, n23, n25, n27, n29
      , n31, n33, n35, n37, n39, n140, n141, n165, n166, n167, n168, n169, n170
      , n171, n172, n173, n174, n175, n176, n177, n178, n179, n181, 
      draw_write_port, n183, n184, n185, n186, n187, n188, n189, n190, n191, 
      n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, 
      n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, 
      n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, 
      n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, 
      n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, 
      n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, 
      n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, 
      n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, 
      n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, 
      n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, 
      n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, 
      n324, n325, n326, n327 : std_logic;

begin
   draw_write <= draw_write_port;
   
   started_reg : dfr11 port map( D => n140, R => n141, CK => clk, Q => started)
                           ;
   cy_reg_0_inst : dfn10 port map( D => n171, CK => clk, Q => cy_0_port);
   cy_reg_1_inst : dfn10 port map( D => n170, CK => clk, Q => cy_1_port);
   cy_reg_2_inst : dfn10 port map( D => n169, CK => clk, Q => cy_2_port);
   cy_reg_3_inst : dfn10 port map( D => n168, CK => clk, Q => cy_3_port);
   cy_reg_4_inst : dfn10 port map( D => n167, CK => clk, Q => cy_4_port);
   cy_reg_5_inst : dfn10 port map( D => n166, CK => clk, Q => cy_5_port);
   cy_reg_6_inst : dfn10 port map( D => n165, CK => clk, Q => cy_6_port);
   cx_reg_7_inst : dfn10 port map( D => n172, CK => clk, Q => cx_7_port);
   almost_done_reg : dfn10 port map( D => almost_done_tmp, CK => clk, Q => 
                           almost_done);
   cx_reg_6_inst : dfn10 port map( D => n173, CK => clk, Q => cx_6_port);
   cx_reg_5_inst : dfn10 port map( D => n174, CK => clk, Q => cx_5_port);
   cx_reg_4_inst : dfn10 port map( D => n175, CK => clk, Q => cx_4_port);
   cx_reg_3_inst : dfn10 port map( D => n176, CK => clk, Q => cx_3_port);
   cx_reg_2_inst : dfn10 port map( D => n177, CK => clk, Q => cx_2_port);
   cx_reg_1_inst : dfn10 port map( D => n178, CK => clk, Q => cx_1_port);
   cx_reg_0_inst : dfn10 port map( D => n179, CK => clk, Q => cx_0_port);
   ramdata_tri_0_inst : tinv10 port map( A => n39, E => draw_write_port, Y => 
                           ramdata(0));
   ramdata_tri_1_inst : tinv10 port map( A => n37, E => draw_write_port, Y => 
                           ramdata(1));
   ramdata_tri_2_inst : tinv10 port map( A => n35, E => n328, Y => ramdata(2));
   ramdata_tri_3_inst : tinv10 port map( A => n33, E => draw_write_port, Y => 
                           ramdata(3));
   ramaddr_tri_0_inst : tinv10 port map( A => n31, E => n328, Y => ramaddr(0));
   ramaddr_tri_1_inst : tinv10 port map( A => n29, E => draw_write_port, Y => 
                           ramaddr(1));
   ramaddr_tri_2_inst : tinv10 port map( A => n27, E => n328, Y => ramaddr(2));
   ramaddr_tri_3_inst : tinv10 port map( A => n25, E => n181, Y => ramaddr(3));
   ramaddr_tri_4_inst : tinv10 port map( A => n23, E => n181, Y => ramaddr(4));
   ramaddr_tri_5_inst : tinv10 port map( A => n21, E => n181, Y => ramaddr(5));
   ramaddr_tri_6_inst : tinv10 port map( A => n19, E => n181, Y => ramaddr(6));
   ramaddr_tri_7_inst : tinv10 port map( A => n17, E => n181, Y => ramaddr(7));
   ramaddr_tri_8_inst : tinv10 port map( A => n15, E => n181, Y => ramaddr(8));
   ramaddr_tri_9_inst : tinv10 port map( A => n13, E => n181, Y => ramaddr(9));
   ramaddr_tri_10_inst : tinv10 port map( A => n11, E => n181, Y => ramaddr(10)
                           );
   ramaddr_tri_11_inst : tinv10 port map( A => n9, E => n181, Y => ramaddr(11))
                           ;
   ramaddr_tri_12_inst : tinv10 port map( A => n7, E => n181, Y => ramaddr(12))
                           ;
   ramaddr_tri_13_inst : tinv10 port map( A => n5, E => n181, Y => ramaddr(13))
                           ;
   ramaddr_tri_14_inst : tinv10 port map( A => n3, E => n181, Y => ramaddr(14))
                           ;
   ramaddr_tri_15_inst : tinv10 port map( A => asb, E => draw_write_port, Y => 
                           ramaddr(15));
   U166 : iv110 port map( A => n183, Y => n181);
   U167 : iv110 port map( A => n183, Y => draw_write_port);
   U168 : iv110 port map( A => n328, Y => n183);
   U169 : no210 port map( A => enablef, B => enable, Y => n184);
   U170 : no210 port map( A => reset, B => n184, Y => n140);
   U171 : na210 port map( A => n140, B => draw_can_access, Y => n208);
   U172 : iv110 port map( A => started, Y => n206);
   U173 : no310 port map( A => almost_done, B => n208, C => n206, Y => n328);
   U174 : iv110 port map( A => cx_0_port, Y => n31);
   U175 : ex210 port map( A => x0(0), B => n31, Y => n195);
   U176 : ex210 port map( A => cx_4_port, B => x0(4), Y => n192);
   U177 : ex210 port map( A => cx_5_port, B => x0(5), Y => n186);
   U178 : ex210 port map( A => cx_6_port, B => x0(6), Y => n185);
   U179 : no210 port map( A => n186, B => n185, Y => n189);
   U180 : iv110 port map( A => cx_1_port, Y => n29);
   U181 : ex210 port map( A => x0(1), B => n29, Y => n188);
   U182 : iv110 port map( A => cx_7_port, Y => n17);
   U183 : ex210 port map( A => n17, B => x0(7), Y => n187);
   U184 : na310 port map( A => n189, B => n188, C => n187, Y => n191);
   U185 : ex210 port map( A => x0(2), B => cx_2_port, Y => n190);
   U186 : no310 port map( A => n192, B => n191, C => n190, Y => n194);
   U187 : iv110 port map( A => cx_3_port, Y => n25);
   U188 : ex210 port map( A => n25, B => x0(3), Y => n193);
   U189 : na310 port map( A => n195, B => n194, C => n193, Y => n289);
   U190 : iv110 port map( A => cy_1_port, Y => n13);
   U191 : ex210 port map( A => y0(1), B => n13, Y => n204);
   U192 : ex210 port map( A => cy_3_port, B => y0(3), Y => n201);
   U193 : iv110 port map( A => cy_6_port, Y => n3);
   U194 : ex210 port map( A => y0(6), B => n3, Y => n198);
   U195 : iv110 port map( A => cy_4_port, Y => n7);
   U196 : ex210 port map( A => y0(4), B => n7, Y => n197);
   U197 : iv110 port map( A => cy_5_port, Y => n5);
   U198 : ex210 port map( A => n5, B => y0(5), Y => n196);
   U199 : na310 port map( A => n198, B => n197, C => n196, Y => n200);
   U200 : ex210 port map( A => y0(2), B => cy_2_port, Y => n199);
   U201 : no310 port map( A => n201, B => n200, C => n199, Y => n203);
   U202 : iv110 port map( A => cy_0_port, Y => n15);
   U203 : ex210 port map( A => n15, B => y0(0), Y => n202);
   U204 : na310 port map( A => n204, B => n203, C => n202, Y => n221);
   U205 : no310 port map( A => n183, B => n289, C => n221, Y => almost_done_tmp
                           );
   U206 : iv110 port map( A => almost_done, Y => n205);
   U207 : no310 port map( A => n205, B => n208, C => n206, Y => done);
   U208 : no210 port map( A => draw_can_access, B => started, Y => n141);
   U209 : iv110 port map( A => n208, Y => n207);
   U210 : na210 port map( A => n207, B => n206, Y => n284);
   U211 : iv110 port map( A => n289, Y => n283);
   U212 : no210 port map( A => almost_done, B => n208, Y => n209);
   U213 : na210 port map( A => n283, B => n209, Y => n210);
   U214 : na210 port map( A => n284, B => n210, Y => n273);
   U215 : na210 port map( A => x1(0), B => n273, Y => n227);
   U216 : ex210 port map( A => y1(1), B => n13, Y => n219);
   U217 : ex210 port map( A => cy_3_port, B => y1(3), Y => n216);
   U218 : ex210 port map( A => y1(6), B => n3, Y => n213);
   U219 : ex210 port map( A => y1(4), B => n7, Y => n212);
   U220 : ex210 port map( A => n5, B => y1(5), Y => n211);
   U221 : na310 port map( A => n213, B => n212, C => n211, Y => n215);
   U222 : ex210 port map( A => y1(2), B => cy_2_port, Y => n214);
   U223 : no310 port map( A => n216, B => n215, C => n214, Y => n218);
   U224 : ex210 port map( A => n15, B => y1(0), Y => n217);
   U225 : na310 port map( A => n219, B => n218, C => n217, Y => n220);
   U226 : na310 port map( A => enable, B => n221, C => n220, Y => n224);
   U227 : no210 port map( A => n183, B => n283, Y => n223);
   U228 : na210 port map( A => n224, B => n223, Y => n274);
   U229 : iv110 port map( A => draw_can_access, Y => n222);
   U230 : na210 port map( A => n140, B => n222, Y => n310);
   U231 : mu111 port map( A => n274, B => n310, S => cx_0_port, Y => n226);
   U232 : iv110 port map( A => n223, Y => n291);
   U233 : no210 port map( A => n291, B => n224, Y => n279);
   U234 : na210 port map( A => n279, B => x0(0), Y => n225);
   U235 : na310 port map( A => n227, B => n226, C => n225, Y => n179);
   U236 : na210 port map( A => x1(1), B => n273, Y => n233);
   U237 : iv110 port map( A => n274, Y => n269);
   U238 : na210 port map( A => n269, B => n31, Y => n230);
   U239 : na210 port map( A => n269, B => cx_0_port, Y => n228);
   U240 : na210 port map( A => n310, B => n228, Y => n235);
   U241 : iv110 port map( A => n235, Y => n229);
   U242 : mu111 port map( A => n230, B => n229, S => cx_1_port, Y => n232);
   U243 : na210 port map( A => n279, B => x0(1), Y => n231);
   U244 : na310 port map( A => n233, B => n232, C => n231, Y => n178);
   U245 : na210 port map( A => x0(2), B => n279, Y => n240);
   U246 : na210 port map( A => x1(2), B => n273, Y => n239);
   U247 : no210 port map( A => n29, B => n274, Y => n234);
   U248 : no210 port map( A => n235, B => n234, Y => n236);
   U249 : iv110 port map( A => cx_2_port, Y => n27);
   U250 : no210 port map( A => n236, B => n27, Y => n237);
   U251 : na310 port map( A => n31, B => n27, C => n29, Y => n250);
   U252 : no210 port map( A => n274, B => n250, Y => n242);
   U253 : no210 port map( A => n237, B => n242, Y => n238);
   U254 : na310 port map( A => n240, B => n239, C => n238, Y => n177);
   U255 : na210 port map( A => x1(3), B => n273, Y => n246);
   U256 : na210 port map( A => n269, B => n250, Y => n241);
   U257 : na210 port map( A => n310, B => n241, Y => n248);
   U258 : mu111 port map( A => n242, B => n248, S => cx_3_port, Y => n243);
   U259 : iv110 port map( A => n243, Y => n245);
   U260 : na210 port map( A => n279, B => x0(3), Y => n244);
   U261 : na310 port map( A => n246, B => n245, C => n244, Y => n176);
   U262 : na210 port map( A => x0(4), B => n279, Y => n255);
   U263 : na210 port map( A => x1(4), B => n273, Y => n254);
   U264 : no210 port map( A => n25, B => n274, Y => n247);
   U265 : no210 port map( A => n248, B => n247, Y => n249);
   U266 : iv110 port map( A => cx_4_port, Y => n23);
   U267 : no210 port map( A => n249, B => n23, Y => n252);
   U268 : no310 port map( A => cx_3_port, B => cx_4_port, C => n250, Y => n267)
                           ;
   U269 : na210 port map( A => n269, B => n267, Y => n256);
   U270 : iv110 port map( A => n256, Y => n251);
   U271 : no210 port map( A => n252, B => n251, Y => n253);
   U272 : na310 port map( A => n255, B => n254, C => n253, Y => n175);
   U273 : na210 port map( A => x0(5), B => n279, Y => n262);
   U274 : na210 port map( A => x1(5), B => n273, Y => n261);
   U275 : no210 port map( A => cx_5_port, B => n256, Y => n263);
   U276 : iv110 port map( A => n310, Y => n296);
   U277 : no210 port map( A => n274, B => n267, Y => n257);
   U278 : no210 port map( A => n296, B => n257, Y => n258);
   U279 : iv110 port map( A => cx_5_port, Y => n21);
   U280 : no210 port map( A => n258, B => n21, Y => n259);
   U281 : no210 port map( A => n263, B => n259, Y => n260);
   U282 : na310 port map( A => n262, B => n261, C => n260, Y => n174);
   U283 : iv110 port map( A => cx_6_port, Y => n19);
   U284 : na210 port map( A => n263, B => n19, Y => n278);
   U285 : na210 port map( A => x0(6), B => n279, Y => n265);
   U286 : na210 port map( A => x1(6), B => n273, Y => n264);
   U287 : na210 port map( A => n265, B => n264, Y => n266);
   U288 : iv110 port map( A => n266, Y => n272);
   U289 : na210 port map( A => n267, B => n21, Y => n268);
   U290 : na210 port map( A => n269, B => n268, Y => n270);
   U291 : na210 port map( A => n310, B => n270, Y => n275);
   U292 : na210 port map( A => cx_6_port, B => n275, Y => n271);
   U293 : na310 port map( A => n278, B => n272, C => n271, Y => n173);
   U294 : na210 port map( A => x1(7), B => n273, Y => n282);
   U295 : no210 port map( A => n19, B => n274, Y => n276);
   U296 : no210 port map( A => n276, B => n275, Y => n277);
   U297 : mu111 port map( A => n278, B => n277, S => cx_7_port, Y => n281);
   U298 : na210 port map( A => n279, B => x0(7), Y => n280);
   U299 : na310 port map( A => n282, B => n281, C => n280, Y => n172);
   U300 : na310 port map( A => n283, B => n328, C => n15, Y => n288);
   U301 : iv110 port map( A => n284, Y => n325);
   U302 : na210 port map( A => y1(0), B => n325, Y => n287);
   U303 : na210 port map( A => n291, B => n310, Y => n285);
   U304 : na210 port map( A => cy_0_port, B => n285, Y => n286);
   U305 : na310 port map( A => n288, B => n287, C => n286, Y => n171);
   U306 : no310 port map( A => cy_0_port, B => cy_1_port, C => n289, Y => n300)
                           ;
   U307 : na210 port map( A => draw_write_port, B => n300, Y => n297);
   U308 : na210 port map( A => y1(1), B => n325, Y => n294);
   U309 : na210 port map( A => n328, B => cy_0_port, Y => n290);
   U310 : na310 port map( A => n291, B => n310, C => n290, Y => n292);
   U311 : na210 port map( A => cy_1_port, B => n292, Y => n293);
   U312 : na310 port map( A => n297, B => n294, C => n293, Y => n170);
   U313 : no210 port map( A => n300, B => n183, Y => n295);
   U314 : no210 port map( A => n296, B => n295, Y => n302);
   U315 : mu111 port map( A => n297, B => n302, S => cy_2_port, Y => n299);
   U316 : na210 port map( A => n325, B => y1(2), Y => n298);
   U317 : na210 port map( A => n299, B => n298, Y => n169);
   U318 : iv110 port map( A => cy_2_port, Y => n11);
   U319 : iv110 port map( A => cy_3_port, Y => n9);
   U320 : na310 port map( A => n300, B => n11, C => n9, Y => n308);
   U321 : no210 port map( A => n183, B => n308, Y => n307);
   U322 : iv110 port map( A => n307, Y => n306);
   U323 : na210 port map( A => draw_write_port, B => cy_2_port, Y => n301);
   U324 : na210 port map( A => n302, B => n301, Y => n303);
   U325 : na210 port map( A => cy_3_port, B => n303, Y => n305);
   U326 : na210 port map( A => n325, B => y1(3), Y => n304);
   U327 : na310 port map( A => n306, B => n305, C => n304, Y => n168);
   U328 : na210 port map( A => n7, B => n307, Y => n313);
   U329 : na210 port map( A => y1(4), B => n325, Y => n312);
   U330 : na210 port map( A => n328, B => n308, Y => n309);
   U331 : na210 port map( A => n310, B => n309, Y => n315);
   U332 : na210 port map( A => cy_4_port, B => n315, Y => n311);
   U333 : na310 port map( A => n313, B => n312, C => n311, Y => n167);
   U334 : iv110 port map( A => n313, Y => n314);
   U335 : na210 port map( A => n314, B => n5, Y => n322);
   U336 : na210 port map( A => y1(5), B => n325, Y => n319);
   U337 : no210 port map( A => n183, B => n7, Y => n316);
   U338 : no210 port map( A => n316, B => n315, Y => n320);
   U339 : iv110 port map( A => n320, Y => n317);
   U340 : na210 port map( A => cy_5_port, B => n317, Y => n318);
   U341 : na310 port map( A => n322, B => n319, C => n318, Y => n166);
   U342 : na210 port map( A => draw_write_port, B => cy_5_port, Y => n321);
   U343 : na310 port map( A => n321, B => cy_6_port, C => n320, Y => n324);
   U344 : na210 port map( A => n322, B => n3, Y => n323);
   U345 : na210 port map( A => n324, B => n323, Y => n327);
   U346 : na210 port map( A => n325, B => y1(6), Y => n326);
   U347 : na210 port map( A => n327, B => n326, Y => n165);
   U348 : iv110 port map( A => color(0), Y => n39);
   U349 : iv110 port map( A => color(1), Y => n37);
   U350 : iv110 port map( A => color(2), Y => n35);
   U351 : iv110 port map( A => color(3), Y => n33);

end synthesised;



