
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

architecture synthesised of rammux is

   component iv110
      port( A : in std_logic;  Y : out std_logic);
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
   
   signal n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
      n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, 
      n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, 
      n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, 
      n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, 
      n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149 : 
      std_logic;

begin
   
   U120 : na210 port map( A => sel(1), B => sel(0), Y => n75);
   U121 : no210 port map( A => n75, B => n77, Y => write_out(3));
   U122 : no210 port map( A => n77, B => n78, Y => write_out(2));
   U123 : no210 port map( A => n77, B => n79, Y => write_out(1));
   U124 : no210 port map( A => n77, B => n80, Y => write_out(0));
   U125 : iv110 port map( A => write, Y => n77);
   U126 : na310 port map( A => n81, B => n82, C => n83, Y => d_out_muxed(7));
   U127 : no210 port map( A => n84, B => n85, Y => n83);
   U128 : no210 port map( A => n76, B => n86, Y => n85);
   U129 : iv110 port map( A => d_out(31), Y => n86);
   U130 : no210 port map( A => n87, B => n88, Y => n84);
   U131 : iv110 port map( A => d_out(7), Y => n88);
   U132 : na210 port map( A => d_out(23), B => n89, Y => n82);
   U133 : na210 port map( A => d_out(15), B => n90, Y => n81);
   U134 : na310 port map( A => n91, B => n92, C => n93, Y => d_out_muxed(6));
   U135 : no210 port map( A => n94, B => n95, Y => n93);
   U136 : no210 port map( A => n75, B => n96, Y => n95);
   U137 : iv110 port map( A => d_out(30), Y => n96);
   U138 : no210 port map( A => n87, B => n97, Y => n94);
   U139 : iv110 port map( A => d_out(6), Y => n97);
   U140 : na210 port map( A => d_out(22), B => n89, Y => n92);
   U141 : na210 port map( A => d_out(14), B => n90, Y => n91);
   U142 : na310 port map( A => n98, B => n99, C => n100, Y => d_out_muxed(5));
   U143 : no210 port map( A => n101, B => n102, Y => n100);
   U144 : no210 port map( A => n76, B => n103, Y => n102);
   U145 : iv110 port map( A => d_out(29), Y => n103);
   U146 : no210 port map( A => n87, B => n104, Y => n101);
   U147 : iv110 port map( A => d_out(5), Y => n104);
   U148 : na210 port map( A => d_out(21), B => n89, Y => n99);
   U149 : na210 port map( A => d_out(13), B => n90, Y => n98);
   U150 : na310 port map( A => n105, B => n106, C => n107, Y => d_out_muxed(4))
                           ;
   U151 : no210 port map( A => n108, B => n109, Y => n107);
   U152 : no210 port map( A => n75, B => n110, Y => n109);
   U153 : iv110 port map( A => d_out(28), Y => n110);
   U154 : no210 port map( A => n87, B => n111, Y => n108);
   U155 : iv110 port map( A => d_out(4), Y => n111);
   U156 : na210 port map( A => d_out(20), B => n89, Y => n106);
   U157 : na210 port map( A => d_out(12), B => n90, Y => n105);
   U158 : na310 port map( A => n112, B => n113, C => n114, Y => d_out_muxed(3))
                           ;
   U159 : no210 port map( A => n115, B => n116, Y => n114);
   U160 : no210 port map( A => n76, B => n117, Y => n116);
   U161 : iv110 port map( A => d_out(27), Y => n117);
   U162 : no210 port map( A => n87, B => n118, Y => n115);
   U163 : iv110 port map( A => d_out(3), Y => n118);
   U164 : na210 port map( A => d_out(19), B => n89, Y => n113);
   U165 : na210 port map( A => d_out(11), B => n90, Y => n112);
   U166 : na310 port map( A => n119, B => n120, C => n121, Y => d_out_muxed(2))
                           ;
   U167 : no210 port map( A => n122, B => n123, Y => n121);
   U168 : no210 port map( A => n75, B => n124, Y => n123);
   U169 : iv110 port map( A => d_out(26), Y => n124);
   U170 : no210 port map( A => n87, B => n125, Y => n122);
   U171 : iv110 port map( A => d_out(2), Y => n125);
   U172 : na210 port map( A => d_out(18), B => n89, Y => n120);
   U173 : na210 port map( A => d_out(10), B => n90, Y => n119);
   U174 : na310 port map( A => n126, B => n127, C => n128, Y => d_out_muxed(1))
                           ;
   U175 : no210 port map( A => n129, B => n130, Y => n128);
   U176 : no210 port map( A => n76, B => n131, Y => n130);
   U177 : iv110 port map( A => d_out(25), Y => n131);
   U178 : no210 port map( A => n87, B => n132, Y => n129);
   U179 : iv110 port map( A => d_out(1), Y => n132);
   U180 : na210 port map( A => d_out(17), B => n89, Y => n127);
   U181 : na210 port map( A => d_out(9), B => n90, Y => n126);
   U182 : na310 port map( A => n133, B => n134, C => n135, Y => d_out_muxed(0))
                           ;
   U183 : no210 port map( A => n136, B => n137, Y => n135);
   U184 : no210 port map( A => n75, B => n138, Y => n137);
   U185 : iv110 port map( A => d_out(24), Y => n138);
   U186 : no210 port map( A => n87, B => n139, Y => n136);
   U187 : iv110 port map( A => d_out(0), Y => n139);
   U188 : na310 port map( A => n78, B => n76, C => n79, Y => n87);
   U189 : na210 port map( A => d_out(16), B => n89, Y => n134);
   U190 : iv110 port map( A => n78, Y => n89);
   U191 : na210 port map( A => d_out(8), B => n90, Y => n133);
   U192 : iv110 port map( A => n79, Y => n90);
   U193 : no210 port map( A => n79, B => n140, Y => d_in(9));
   U194 : no210 port map( A => n79, B => n141, Y => d_in(8));
   U195 : no210 port map( A => n80, B => n142, Y => d_in(7));
   U196 : no210 port map( A => n80, B => n143, Y => d_in(6));
   U197 : no210 port map( A => n80, B => n144, Y => d_in(5));
   U198 : no210 port map( A => n80, B => n145, Y => d_in(4));
   U199 : no210 port map( A => n80, B => n146, Y => d_in(3));
   U200 : no210 port map( A => n75, B => n142, Y => d_in(31));
   U201 : no210 port map( A => n76, B => n143, Y => d_in(30));
   U202 : no210 port map( A => n80, B => n147, Y => d_in(2));
   U203 : no210 port map( A => n75, B => n144, Y => d_in(29));
   U204 : no210 port map( A => n76, B => n145, Y => d_in(28));
   U205 : no210 port map( A => n75, B => n146, Y => d_in(27));
   U206 : no210 port map( A => n76, B => n147, Y => d_in(26));
   U207 : no210 port map( A => n75, B => n140, Y => d_in(25));
   U208 : no210 port map( A => n76, B => n141, Y => d_in(24));
   U209 : na210 port map( A => sel(1), B => sel(0), Y => n76);
   U210 : no210 port map( A => n78, B => n142, Y => d_in(23));
   U211 : no210 port map( A => n78, B => n143, Y => d_in(22));
   U212 : no210 port map( A => n78, B => n144, Y => d_in(21));
   U213 : no210 port map( A => n78, B => n145, Y => d_in(20));
   U214 : no210 port map( A => n80, B => n140, Y => d_in(1));
   U215 : no210 port map( A => n78, B => n146, Y => d_in(19));
   U216 : no210 port map( A => n78, B => n147, Y => d_in(18));
   U217 : no210 port map( A => n78, B => n140, Y => d_in(17));
   U218 : iv110 port map( A => d_in_muxed(1), Y => n140);
   U219 : no210 port map( A => n78, B => n141, Y => d_in(16));
   U220 : na210 port map( A => sel(1), B => n148, Y => n78);
   U221 : no210 port map( A => n79, B => n142, Y => d_in(15));
   U222 : iv110 port map( A => d_in_muxed(7), Y => n142);
   U223 : no210 port map( A => n79, B => n143, Y => d_in(14));
   U224 : iv110 port map( A => d_in_muxed(6), Y => n143);
   U225 : no210 port map( A => n79, B => n144, Y => d_in(13));
   U226 : iv110 port map( A => d_in_muxed(5), Y => n144);
   U227 : no210 port map( A => n79, B => n145, Y => d_in(12));
   U228 : iv110 port map( A => d_in_muxed(4), Y => n145);
   U229 : no210 port map( A => n79, B => n146, Y => d_in(11));
   U230 : iv110 port map( A => d_in_muxed(3), Y => n146);
   U231 : no210 port map( A => n79, B => n147, Y => d_in(10));
   U232 : iv110 port map( A => d_in_muxed(2), Y => n147);
   U233 : na210 port map( A => sel(0), B => n149, Y => n79);
   U234 : no210 port map( A => n80, B => n141, Y => d_in(0));
   U235 : iv110 port map( A => d_in_muxed(0), Y => n141);
   U236 : na210 port map( A => n149, B => n148, Y => n80);
   U237 : iv110 port map( A => sel(0), Y => n148);
   U238 : iv110 port map( A => sel(1), Y => n149);

end synthesised;



