
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

architecture synthesised of ram is

   component buf40
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component no210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component iv110
      port( A : in std_logic;  Y : out std_logic);
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
   
   component rambank
      port( clk : in std_logic;  write : in std_logic_vector (7 downto 0);  
            in_lines : in std_logic_vector (63 downto 0);  out_lines : out 
            std_logic_vector (63 downto 0));
   end component;
   
   signal write_out_7_port, write_out_6_port, write_out_5_port, 
      write_out_4_port, write_out_3_port, write_out_2_port, write_out_1_port, 
      write_out_0_port, in_lines_63_port, in_lines_62_port, in_lines_61_port, 
      in_lines_60_port, in_lines_59_port, in_lines_58_port, in_lines_57_port, 
      in_lines_56_port, in_lines_55_port, in_lines_54_port, in_lines_53_port, 
      in_lines_52_port, in_lines_51_port, in_lines_50_port, in_lines_49_port, 
      in_lines_48_port, in_lines_47_port, in_lines_46_port, in_lines_45_port, 
      in_lines_44_port, in_lines_43_port, in_lines_42_port, in_lines_41_port, 
      in_lines_40_port, in_lines_39_port, in_lines_38_port, in_lines_37_port, 
      in_lines_36_port, in_lines_35_port, in_lines_34_port, in_lines_33_port, 
      in_lines_32_port, in_lines_31_port, in_lines_30_port, in_lines_29_port, 
      in_lines_28_port, in_lines_27_port, in_lines_26_port, in_lines_25_port, 
      in_lines_24_port, in_lines_23_port, in_lines_22_port, in_lines_21_port, 
      in_lines_20_port, in_lines_19_port, in_lines_18_port, in_lines_17_port, 
      in_lines_16_port, in_lines_15_port, in_lines_14_port, in_lines_13_port, 
      in_lines_12_port, in_lines_11_port, in_lines_10_port, in_lines_9_port, 
      in_lines_8_port, in_lines_7_port, in_lines_6_port, in_lines_5_port, 
      in_lines_4_port, in_lines_3_port, in_lines_2_port, in_lines_1_port, 
      in_lines_0_port, out_lines_63_port, out_lines_62_port, out_lines_61_port,
      out_lines_60_port, out_lines_59_port, out_lines_58_port, 
      out_lines_57_port, out_lines_56_port, out_lines_55_port, 
      out_lines_54_port, out_lines_53_port, out_lines_52_port, 
      out_lines_51_port, out_lines_50_port, out_lines_49_port, 
      out_lines_48_port, out_lines_47_port, out_lines_46_port, 
      out_lines_45_port, out_lines_44_port, out_lines_43_port, 
      out_lines_42_port, out_lines_41_port, out_lines_40_port, 
      out_lines_39_port, out_lines_38_port, out_lines_37_port, 
      out_lines_36_port, out_lines_35_port, out_lines_34_port, 
      out_lines_33_port, out_lines_32_port, out_lines_31_port, 
      out_lines_30_port, out_lines_29_port, out_lines_28_port, 
      out_lines_27_port, out_lines_26_port, out_lines_25_port, 
      out_lines_24_port, out_lines_23_port, out_lines_22_port, 
      out_lines_21_port, out_lines_20_port, out_lines_19_port, 
      out_lines_18_port, out_lines_17_port, out_lines_16_port, 
      out_lines_15_port, out_lines_14_port, out_lines_13_port, 
      out_lines_12_port, out_lines_11_port, out_lines_10_port, out_lines_9_port
      , out_lines_8_port, out_lines_7_port, out_lines_6_port, out_lines_5_port,
      out_lines_4_port, out_lines_3_port, out_lines_2_port, out_lines_1_port, 
      out_lines_0_port, rm_n147, rm_n146, rm_n145, rm_n144, rm_n143, rm_n142, 
      rm_n141, rm_n140, rm_n139, rm_n138, rm_n137, rm_n136, rm_n135, rm_n134, 
      rm_n133, rm_n132, rm_n131, rm_n130, rm_n129, rm_n128, rm_n127, rm_n126, 
      rm_n125, rm_n124, rm_n123, rm_n122, rm_n121, rm_n120, rm_n119, rm_n118, 
      rm_n117, rm_n116, rm_n115, rm_n114, rm_n113, rm_n112, rm_n111, rm_n110, 
      rm_n109, rm_n108, rm_n107, rm_n106, rm_n105, rm_n104, rm_n103, rm_n102, 
      rm_n101, rm_n100, rm_n99, rm_n98, rm_n97, rm_n96, rm_n95, rm_n94, rm_n93,
      rm_n92, rm_n91, rm_n90, rm_n89, rm_n88, rm_n87, rm_n86, rm_n85, rm_n84, 
      rm_n83, rm_n82, rm_n81, rm_n80, rm_n79, rm_n78, rm_n77, rm_n76, rm_n75, 
      rm_n74, rm_n73, rm_n72, rm_n71, rm_n70, rm_n69, rm_n68, rm_n67, rm_n66, 
      rm_n65, rm_n64, rm_n63, rm_n62, rm_n61, rm_n60, rm_n59, rm_n58, rm_n57, 
      rm_n56, rm_n55, rm_n54, rm_n53, rm_n52, rm_n51, rm_n50, rm_n49, rm_n48, 
      rm_n47, rm_n46, rm_n45, rm_n44, rm_n43, rm_n42, rm_n41, rm_n40, rm_n39, 
      rm_n38, rm_n37, rm_n36, rm_n35, rm_n34, rm_n33, rm_n32, rm_n31, rm_n30, 
      rm_n29, rm_n28, rm_n27, rm_n26, rm_n25, rm_n24, rm_n23, rm_n22, rm_n21, 
      rm_n20, rm_n19, rm_n18, rm_n17, rm_n16, rm_n15, rm_n14, rm_n13, rm_n12, 
      rm_n11, rm_n10, rm_n9, rm_n155, rm_n154, rm_n153, rm_n152, rm_n151, 
      rm_n150, rm_n149, rm_n148 : std_logic;

begin
   
   rb : rambank port map( clk => clk, write(7) => write_out_7_port, write(6) =>
                           write_out_6_port, write(5) => write_out_5_port, 
                           write(4) => write_out_4_port, write(3) => 
                           write_out_3_port, write(2) => write_out_2_port, 
                           write(1) => write_out_1_port, write(0) => 
                           write_out_0_port, in_lines(63) => in_lines_63_port, 
                           in_lines(62) => in_lines_62_port, in_lines(61) => 
                           in_lines_61_port, in_lines(60) => in_lines_60_port, 
                           in_lines(59) => in_lines_59_port, in_lines(58) => 
                           in_lines_58_port, in_lines(57) => in_lines_57_port, 
                           in_lines(56) => in_lines_56_port, in_lines(55) => 
                           in_lines_55_port, in_lines(54) => in_lines_54_port, 
                           in_lines(53) => in_lines_53_port, in_lines(52) => 
                           in_lines_52_port, in_lines(51) => in_lines_51_port, 
                           in_lines(50) => in_lines_50_port, in_lines(49) => 
                           in_lines_49_port, in_lines(48) => in_lines_48_port, 
                           in_lines(47) => in_lines_47_port, in_lines(46) => 
                           in_lines_46_port, in_lines(45) => in_lines_45_port, 
                           in_lines(44) => in_lines_44_port, in_lines(43) => 
                           in_lines_43_port, in_lines(42) => in_lines_42_port, 
                           in_lines(41) => in_lines_41_port, in_lines(40) => 
                           in_lines_40_port, in_lines(39) => in_lines_39_port, 
                           in_lines(38) => in_lines_38_port, in_lines(37) => 
                           in_lines_37_port, in_lines(36) => in_lines_36_port, 
                           in_lines(35) => in_lines_35_port, in_lines(34) => 
                           in_lines_34_port, in_lines(33) => in_lines_33_port, 
                           in_lines(32) => in_lines_32_port, in_lines(31) => 
                           in_lines_31_port, in_lines(30) => in_lines_30_port, 
                           in_lines(29) => in_lines_29_port, in_lines(28) => 
                           in_lines_28_port, in_lines(27) => in_lines_27_port, 
                           in_lines(26) => in_lines_26_port, in_lines(25) => 
                           in_lines_25_port, in_lines(24) => in_lines_24_port, 
                           in_lines(23) => in_lines_23_port, in_lines(22) => 
                           in_lines_22_port, in_lines(21) => in_lines_21_port, 
                           in_lines(20) => in_lines_20_port, in_lines(19) => 
                           in_lines_19_port, in_lines(18) => in_lines_18_port, 
                           in_lines(17) => in_lines_17_port, in_lines(16) => 
                           in_lines_16_port, in_lines(15) => in_lines_15_port, 
                           in_lines(14) => in_lines_14_port, in_lines(13) => 
                           in_lines_13_port, in_lines(12) => in_lines_12_port, 
                           in_lines(11) => in_lines_11_port, in_lines(10) => 
                           in_lines_10_port, in_lines(9) => in_lines_9_port, 
                           in_lines(8) => in_lines_8_port, in_lines(7) => 
                           in_lines_7_port, in_lines(6) => in_lines_6_port, 
                           in_lines(5) => in_lines_5_port, in_lines(4) => 
                           in_lines_4_port, in_lines(3) => in_lines_3_port, 
                           in_lines(2) => in_lines_2_port, in_lines(1) => 
                           in_lines_1_port, in_lines(0) => in_lines_0_port, 
                           out_lines(63) => out_lines_63_port, out_lines(62) =>
                           out_lines_62_port, out_lines(61) => 
                           out_lines_61_port, out_lines(60) => 
                           out_lines_60_port, out_lines(59) => 
                           out_lines_59_port, out_lines(58) => 
                           out_lines_58_port, out_lines(57) => 
                           out_lines_57_port, out_lines(56) => 
                           out_lines_56_port, out_lines(55) => 
                           out_lines_55_port, out_lines(54) => 
                           out_lines_54_port, out_lines(53) => 
                           out_lines_53_port, out_lines(52) => 
                           out_lines_52_port, out_lines(51) => 
                           out_lines_51_port, out_lines(50) => 
                           out_lines_50_port, out_lines(49) => 
                           out_lines_49_port, out_lines(48) => 
                           out_lines_48_port, out_lines(47) => 
                           out_lines_47_port, out_lines(46) => 
                           out_lines_46_port, out_lines(45) => 
                           out_lines_45_port, out_lines(44) => 
                           out_lines_44_port, out_lines(43) => 
                           out_lines_43_port, out_lines(42) => 
                           out_lines_42_port, out_lines(41) => 
                           out_lines_41_port, out_lines(40) => 
                           out_lines_40_port, out_lines(39) => 
                           out_lines_39_port, out_lines(38) => 
                           out_lines_38_port, out_lines(37) => 
                           out_lines_37_port, out_lines(36) => 
                           out_lines_36_port, out_lines(35) => 
                           out_lines_35_port, out_lines(34) => 
                           out_lines_34_port, out_lines(33) => 
                           out_lines_33_port, out_lines(32) => 
                           out_lines_32_port, out_lines(31) => 
                           out_lines_31_port, out_lines(30) => 
                           out_lines_30_port, out_lines(29) => 
                           out_lines_29_port, out_lines(28) => 
                           out_lines_28_port, out_lines(27) => 
                           out_lines_27_port, out_lines(26) => 
                           out_lines_26_port, out_lines(25) => 
                           out_lines_25_port, out_lines(24) => 
                           out_lines_24_port, out_lines(23) => 
                           out_lines_23_port, out_lines(22) => 
                           out_lines_22_port, out_lines(21) => 
                           out_lines_21_port, out_lines(20) => 
                           out_lines_20_port, out_lines(19) => 
                           out_lines_19_port, out_lines(18) => 
                           out_lines_18_port, out_lines(17) => 
                           out_lines_17_port, out_lines(16) => 
                           out_lines_16_port, out_lines(15) => 
                           out_lines_15_port, out_lines(14) => 
                           out_lines_14_port, out_lines(13) => 
                           out_lines_13_port, out_lines(12) => 
                           out_lines_12_port, out_lines(11) => 
                           out_lines_11_port, out_lines(10) => 
                           out_lines_10_port, out_lines(9) => out_lines_9_port,
                           out_lines(8) => out_lines_8_port, out_lines(7) => 
                           out_lines_7_port, out_lines(6) => out_lines_6_port, 
                           out_lines(5) => out_lines_5_port, out_lines(4) => 
                           out_lines_4_port, out_lines(3) => out_lines_3_port, 
                           out_lines(2) => out_lines_2_port, out_lines(1) => 
                           out_lines_1_port, out_lines(0) => out_lines_0_port);
   rm_U228 : no310 port map( A => a(1), B => a(2), C => a(0), Y => rm_n35);
   rm_U227 : iv110 port map( A => rm_n35, Y => rm_n17);
   rm_U226 : iv110 port map( A => d_in(0), Y => rm_n139);
   rm_U225 : no210 port map( A => rm_n17, B => rm_n139, Y => in_lines_0_port);
   rm_U224 : iv110 port map( A => a(0), Y => rm_n146);
   rm_U223 : no310 port map( A => a(1), B => a(2), C => rm_n146, Y => rm_n34);
   rm_U222 : iv110 port map( A => rm_n34, Y => rm_n16);
   rm_U221 : iv110 port map( A => d_in(2), Y => rm_n145);
   rm_U220 : no210 port map( A => rm_n16, B => rm_n145, Y => in_lines_10_port);
   rm_U219 : iv110 port map( A => d_in(3), Y => rm_n144);
   rm_U218 : no210 port map( A => rm_n16, B => rm_n144, Y => in_lines_11_port);
   rm_U217 : iv110 port map( A => d_in(4), Y => rm_n143);
   rm_U216 : no210 port map( A => rm_n16, B => rm_n143, Y => in_lines_12_port);
   rm_U215 : iv110 port map( A => d_in(5), Y => rm_n142);
   rm_U214 : no210 port map( A => rm_n16, B => rm_n142, Y => in_lines_13_port);
   rm_U213 : iv110 port map( A => d_in(6), Y => rm_n141);
   rm_U212 : no210 port map( A => rm_n16, B => rm_n141, Y => in_lines_14_port);
   rm_U211 : iv110 port map( A => d_in(7), Y => rm_n140);
   rm_U210 : no210 port map( A => rm_n16, B => rm_n140, Y => in_lines_15_port);
   rm_U209 : iv110 port map( A => a(1), Y => rm_n147);
   rm_U208 : no310 port map( A => a(0), B => a(2), C => rm_n147, Y => rm_n39);
   rm_U207 : iv110 port map( A => rm_n39, Y => rm_n15);
   rm_U206 : no210 port map( A => rm_n15, B => rm_n139, Y => in_lines_16_port);
   rm_U205 : iv110 port map( A => d_in(1), Y => rm_n138);
   rm_U204 : no210 port map( A => rm_n15, B => rm_n138, Y => in_lines_17_port);
   rm_U203 : no210 port map( A => rm_n15, B => rm_n145, Y => in_lines_18_port);
   rm_U202 : no210 port map( A => rm_n15, B => rm_n144, Y => in_lines_19_port);
   rm_U201 : no210 port map( A => rm_n17, B => rm_n138, Y => in_lines_1_port);
   rm_U200 : no210 port map( A => rm_n15, B => rm_n143, Y => in_lines_20_port);
   rm_U199 : no210 port map( A => rm_n15, B => rm_n142, Y => in_lines_21_port);
   rm_U198 : no210 port map( A => rm_n15, B => rm_n141, Y => in_lines_22_port);
   rm_U197 : no210 port map( A => rm_n15, B => rm_n140, Y => in_lines_23_port);
   rm_U196 : no310 port map( A => rm_n146, B => a(2), C => rm_n147, Y => rm_n38
                           );
   rm_U195 : iv110 port map( A => rm_n38, Y => rm_n14);
   rm_U194 : no210 port map( A => rm_n14, B => rm_n139, Y => in_lines_24_port);
   rm_U193 : no210 port map( A => rm_n14, B => rm_n138, Y => in_lines_25_port);
   rm_U192 : no210 port map( A => rm_n14, B => rm_n145, Y => in_lines_26_port);
   rm_U191 : no210 port map( A => rm_n14, B => rm_n144, Y => in_lines_27_port);
   rm_U190 : no210 port map( A => rm_n14, B => rm_n143, Y => in_lines_28_port);
   rm_U189 : no210 port map( A => rm_n14, B => rm_n142, Y => in_lines_29_port);
   rm_U188 : no210 port map( A => rm_n17, B => rm_n145, Y => in_lines_2_port);
   rm_U187 : no210 port map( A => rm_n14, B => rm_n141, Y => in_lines_30_port);
   rm_U186 : no210 port map( A => rm_n14, B => rm_n140, Y => in_lines_31_port);
   rm_U185 : na310 port map( A => rm_n146, B => rm_n147, C => a(2), Y => rm_n13
                           );
   rm_U184 : no210 port map( A => rm_n13, B => rm_n139, Y => in_lines_32_port);
   rm_U183 : no210 port map( A => rm_n13, B => rm_n138, Y => in_lines_33_port);
   rm_U182 : no210 port map( A => rm_n13, B => rm_n145, Y => in_lines_34_port);
   rm_U181 : no210 port map( A => rm_n13, B => rm_n144, Y => in_lines_35_port);
   rm_U180 : no210 port map( A => rm_n13, B => rm_n143, Y => in_lines_36_port);
   rm_U179 : no210 port map( A => rm_n13, B => rm_n142, Y => in_lines_37_port);
   rm_U178 : no210 port map( A => rm_n13, B => rm_n141, Y => in_lines_38_port);
   rm_U177 : no210 port map( A => rm_n13, B => rm_n140, Y => in_lines_39_port);
   rm_U176 : no210 port map( A => rm_n17, B => rm_n144, Y => in_lines_3_port);
   rm_U175 : na310 port map( A => a(0), B => rm_n147, C => a(2), Y => rm_n12);
   rm_U174 : no210 port map( A => rm_n12, B => rm_n139, Y => in_lines_40_port);
   rm_U173 : no210 port map( A => rm_n12, B => rm_n138, Y => in_lines_41_port);
   rm_U172 : no210 port map( A => rm_n12, B => rm_n145, Y => in_lines_42_port);
   rm_U171 : no210 port map( A => rm_n12, B => rm_n144, Y => in_lines_43_port);
   rm_U170 : no210 port map( A => rm_n12, B => rm_n143, Y => in_lines_44_port);
   rm_U169 : no210 port map( A => rm_n12, B => rm_n142, Y => in_lines_45_port);
   rm_U168 : no210 port map( A => rm_n12, B => rm_n141, Y => in_lines_46_port);
   rm_U167 : no210 port map( A => rm_n12, B => rm_n140, Y => in_lines_47_port);
   rm_U166 : na310 port map( A => a(1), B => rm_n146, C => a(2), Y => rm_n11);
   rm_U165 : no210 port map( A => rm_n11, B => rm_n139, Y => in_lines_48_port);
   rm_U164 : no210 port map( A => rm_n11, B => rm_n138, Y => in_lines_49_port);
   rm_U163 : no210 port map( A => rm_n17, B => rm_n143, Y => in_lines_4_port);
   rm_U162 : no210 port map( A => rm_n11, B => rm_n145, Y => in_lines_50_port);
   rm_U161 : no210 port map( A => rm_n11, B => rm_n144, Y => in_lines_51_port);
   rm_U160 : no210 port map( A => rm_n11, B => rm_n143, Y => in_lines_52_port);
   rm_U159 : no210 port map( A => rm_n11, B => rm_n142, Y => in_lines_53_port);
   rm_U158 : no210 port map( A => rm_n11, B => rm_n141, Y => in_lines_54_port);
   rm_U157 : no210 port map( A => rm_n11, B => rm_n140, Y => in_lines_55_port);
   rm_U156 : na310 port map( A => a(1), B => a(0), C => a(2), Y => rm_n9);
   rm_U155 : no210 port map( A => rm_n9, B => rm_n139, Y => in_lines_56_port);
   rm_U154 : no210 port map( A => rm_n9, B => rm_n138, Y => in_lines_57_port);
   rm_U153 : no210 port map( A => rm_n9, B => rm_n145, Y => in_lines_58_port);
   rm_U152 : no210 port map( A => rm_n9, B => rm_n144, Y => in_lines_59_port);
   rm_U151 : no210 port map( A => rm_n17, B => rm_n142, Y => in_lines_5_port);
   rm_U150 : no210 port map( A => rm_n9, B => rm_n143, Y => in_lines_60_port);
   rm_U149 : no210 port map( A => rm_n9, B => rm_n142, Y => in_lines_61_port);
   rm_U148 : no210 port map( A => rm_n9, B => rm_n141, Y => in_lines_62_port);
   rm_U147 : no210 port map( A => rm_n9, B => rm_n140, Y => in_lines_63_port);
   rm_U146 : no210 port map( A => rm_n17, B => rm_n141, Y => in_lines_6_port);
   rm_U145 : no210 port map( A => rm_n17, B => rm_n140, Y => in_lines_7_port);
   rm_U144 : no210 port map( A => rm_n16, B => rm_n139, Y => in_lines_8_port);
   rm_U143 : no210 port map( A => rm_n16, B => rm_n138, Y => in_lines_9_port);
   rm_U142 : na210 port map( A => out_lines_16_port, B => rm_n39, Y => rm_n136)
                           ;
   rm_U141 : na210 port map( A => out_lines_24_port, B => rm_n38, Y => rm_n137)
                           ;
   rm_U140 : na210 port map( A => rm_n136, B => rm_n137, Y => rm_n132);
   rm_U139 : na210 port map( A => out_lines_0_port, B => rm_n35, Y => rm_n134);
   rm_U138 : na210 port map( A => out_lines_8_port, B => rm_n34, Y => rm_n135);
   rm_U137 : na210 port map( A => rm_n134, B => rm_n135, Y => rm_n133);
   rm_U136 : no210 port map( A => rm_n132, B => rm_n133, Y => rm_n124);
   rm_U135 : iv110 port map( A => rm_n11, Y => rm_n29);
   rm_U134 : na210 port map( A => out_lines_48_port, B => rm_n29, Y => rm_n130)
                           ;
   rm_U133 : iv110 port map( A => rm_n9, Y => rm_n28);
   rm_U132 : na210 port map( A => out_lines_56_port, B => rm_n28, Y => rm_n131)
                           ;
   rm_U131 : na210 port map( A => rm_n130, B => rm_n131, Y => rm_n126);
   rm_U130 : iv110 port map( A => rm_n13, Y => rm_n25);
   rm_U129 : na210 port map( A => out_lines_32_port, B => rm_n25, Y => rm_n128)
                           ;
   rm_U128 : iv110 port map( A => rm_n12, Y => rm_n24);
   rm_U127 : na210 port map( A => out_lines_40_port, B => rm_n24, Y => rm_n129)
                           ;
   rm_U126 : na210 port map( A => rm_n128, B => rm_n129, Y => rm_n127);
   rm_U125 : no210 port map( A => rm_n126, B => rm_n127, Y => rm_n125);
   rm_U124 : na210 port map( A => rm_n124, B => rm_n125, Y => d_out(0));
   rm_U123 : na210 port map( A => out_lines_17_port, B => rm_n39, Y => rm_n122)
                           ;
   rm_U122 : na210 port map( A => out_lines_25_port, B => rm_n38, Y => rm_n123)
                           ;
   rm_U121 : na210 port map( A => rm_n122, B => rm_n123, Y => rm_n118);
   rm_U120 : na210 port map( A => out_lines_1_port, B => rm_n35, Y => rm_n120);
   rm_U119 : na210 port map( A => out_lines_9_port, B => rm_n34, Y => rm_n121);
   rm_U118 : na210 port map( A => rm_n120, B => rm_n121, Y => rm_n119);
   rm_U117 : no210 port map( A => rm_n118, B => rm_n119, Y => rm_n110);
   rm_U116 : na210 port map( A => out_lines_49_port, B => rm_n29, Y => rm_n116)
                           ;
   rm_U115 : na210 port map( A => out_lines_57_port, B => rm_n28, Y => rm_n117)
                           ;
   rm_U114 : na210 port map( A => rm_n116, B => rm_n117, Y => rm_n112);
   rm_U113 : na210 port map( A => out_lines_33_port, B => rm_n25, Y => rm_n114)
                           ;
   rm_U112 : na210 port map( A => out_lines_41_port, B => rm_n24, Y => rm_n115)
                           ;
   rm_U111 : na210 port map( A => rm_n114, B => rm_n115, Y => rm_n113);
   rm_U110 : no210 port map( A => rm_n112, B => rm_n113, Y => rm_n111);
   rm_U109 : na210 port map( A => rm_n110, B => rm_n111, Y => d_out(1));
   rm_U108 : na210 port map( A => out_lines_18_port, B => rm_n39, Y => rm_n108)
                           ;
   rm_U107 : na210 port map( A => out_lines_26_port, B => rm_n38, Y => rm_n109)
                           ;
   rm_U106 : na210 port map( A => rm_n108, B => rm_n109, Y => rm_n104);
   rm_U105 : na210 port map( A => out_lines_2_port, B => rm_n35, Y => rm_n106);
   rm_U104 : na210 port map( A => out_lines_10_port, B => rm_n34, Y => rm_n107)
                           ;
   rm_U103 : na210 port map( A => rm_n106, B => rm_n107, Y => rm_n105);
   rm_U102 : no210 port map( A => rm_n104, B => rm_n105, Y => rm_n96);
   rm_U101 : na210 port map( A => out_lines_50_port, B => rm_n29, Y => rm_n102)
                           ;
   rm_U100 : na210 port map( A => out_lines_58_port, B => rm_n28, Y => rm_n103)
                           ;
   rm_U99 : na210 port map( A => rm_n102, B => rm_n103, Y => rm_n98);
   rm_U98 : na210 port map( A => out_lines_34_port, B => rm_n25, Y => rm_n100);
   rm_U97 : na210 port map( A => out_lines_42_port, B => rm_n24, Y => rm_n101);
   rm_U96 : na210 port map( A => rm_n100, B => rm_n101, Y => rm_n99);
   rm_U95 : no210 port map( A => rm_n98, B => rm_n99, Y => rm_n97);
   rm_U94 : na210 port map( A => rm_n96, B => rm_n97, Y => d_out(2));
   rm_U93 : na210 port map( A => out_lines_19_port, B => rm_n39, Y => rm_n94);
   rm_U92 : na210 port map( A => out_lines_27_port, B => rm_n38, Y => rm_n95);
   rm_U91 : na210 port map( A => rm_n94, B => rm_n95, Y => rm_n90);
   rm_U90 : na210 port map( A => out_lines_3_port, B => rm_n35, Y => rm_n92);
   rm_U89 : na210 port map( A => out_lines_11_port, B => rm_n34, Y => rm_n93);
   rm_U88 : na210 port map( A => rm_n92, B => rm_n93, Y => rm_n91);
   rm_U87 : no210 port map( A => rm_n90, B => rm_n91, Y => rm_n82);
   rm_U86 : na210 port map( A => out_lines_51_port, B => rm_n29, Y => rm_n88);
   rm_U85 : na210 port map( A => out_lines_59_port, B => rm_n28, Y => rm_n89);
   rm_U84 : na210 port map( A => rm_n88, B => rm_n89, Y => rm_n84);
   rm_U83 : na210 port map( A => out_lines_35_port, B => rm_n25, Y => rm_n86);
   rm_U82 : na210 port map( A => out_lines_43_port, B => rm_n24, Y => rm_n87);
   rm_U81 : na210 port map( A => rm_n86, B => rm_n87, Y => rm_n85);
   rm_U80 : no210 port map( A => rm_n84, B => rm_n85, Y => rm_n83);
   rm_U79 : na210 port map( A => rm_n82, B => rm_n83, Y => d_out(3));
   rm_U78 : na210 port map( A => out_lines_20_port, B => rm_n39, Y => rm_n80);
   rm_U77 : na210 port map( A => out_lines_28_port, B => rm_n38, Y => rm_n81);
   rm_U76 : na210 port map( A => rm_n80, B => rm_n81, Y => rm_n76);
   rm_U75 : na210 port map( A => out_lines_4_port, B => rm_n35, Y => rm_n78);
   rm_U74 : na210 port map( A => out_lines_12_port, B => rm_n34, Y => rm_n79);
   rm_U73 : na210 port map( A => rm_n78, B => rm_n79, Y => rm_n77);
   rm_U72 : no210 port map( A => rm_n76, B => rm_n77, Y => rm_n68);
   rm_U71 : na210 port map( A => out_lines_52_port, B => rm_n29, Y => rm_n74);
   rm_U70 : na210 port map( A => out_lines_60_port, B => rm_n28, Y => rm_n75);
   rm_U69 : na210 port map( A => rm_n74, B => rm_n75, Y => rm_n70);
   rm_U68 : na210 port map( A => out_lines_36_port, B => rm_n25, Y => rm_n72);
   rm_U67 : na210 port map( A => out_lines_44_port, B => rm_n24, Y => rm_n73);
   rm_U66 : na210 port map( A => rm_n72, B => rm_n73, Y => rm_n71);
   rm_U65 : no210 port map( A => rm_n70, B => rm_n71, Y => rm_n69);
   rm_U64 : na210 port map( A => rm_n68, B => rm_n69, Y => d_out(4));
   rm_U63 : na210 port map( A => out_lines_21_port, B => rm_n39, Y => rm_n66);
   rm_U62 : na210 port map( A => out_lines_29_port, B => rm_n38, Y => rm_n67);
   rm_U61 : na210 port map( A => rm_n66, B => rm_n67, Y => rm_n62);
   rm_U60 : na210 port map( A => out_lines_5_port, B => rm_n35, Y => rm_n64);
   rm_U59 : na210 port map( A => out_lines_13_port, B => rm_n34, Y => rm_n65);
   rm_U58 : na210 port map( A => rm_n64, B => rm_n65, Y => rm_n63);
   rm_U57 : no210 port map( A => rm_n62, B => rm_n63, Y => rm_n54);
   rm_U56 : na210 port map( A => out_lines_53_port, B => rm_n29, Y => rm_n60);
   rm_U55 : na210 port map( A => out_lines_61_port, B => rm_n28, Y => rm_n61);
   rm_U54 : na210 port map( A => rm_n60, B => rm_n61, Y => rm_n56);
   rm_U53 : na210 port map( A => out_lines_37_port, B => rm_n25, Y => rm_n58);
   rm_U52 : na210 port map( A => out_lines_45_port, B => rm_n24, Y => rm_n59);
   rm_U51 : na210 port map( A => rm_n58, B => rm_n59, Y => rm_n57);
   rm_U50 : no210 port map( A => rm_n56, B => rm_n57, Y => rm_n55);
   rm_U49 : na210 port map( A => rm_n54, B => rm_n55, Y => d_out(5));
   rm_U48 : na210 port map( A => out_lines_22_port, B => rm_n39, Y => rm_n52);
   rm_U47 : na210 port map( A => out_lines_30_port, B => rm_n38, Y => rm_n53);
   rm_U46 : na210 port map( A => rm_n52, B => rm_n53, Y => rm_n48);
   rm_U45 : na210 port map( A => out_lines_6_port, B => rm_n35, Y => rm_n50);
   rm_U44 : na210 port map( A => out_lines_14_port, B => rm_n34, Y => rm_n51);
   rm_U43 : na210 port map( A => rm_n50, B => rm_n51, Y => rm_n49);
   rm_U42 : no210 port map( A => rm_n48, B => rm_n49, Y => rm_n40);
   rm_U41 : na210 port map( A => out_lines_54_port, B => rm_n29, Y => rm_n46);
   rm_U40 : na210 port map( A => out_lines_62_port, B => rm_n28, Y => rm_n47);
   rm_U39 : na210 port map( A => rm_n46, B => rm_n47, Y => rm_n42);
   rm_U38 : na210 port map( A => out_lines_38_port, B => rm_n25, Y => rm_n44);
   rm_U37 : na210 port map( A => out_lines_46_port, B => rm_n24, Y => rm_n45);
   rm_U36 : na210 port map( A => rm_n44, B => rm_n45, Y => rm_n43);
   rm_U35 : no210 port map( A => rm_n42, B => rm_n43, Y => rm_n41);
   rm_U34 : na210 port map( A => rm_n40, B => rm_n41, Y => d_out(6));
   rm_U33 : na210 port map( A => out_lines_23_port, B => rm_n39, Y => rm_n36);
   rm_U32 : na210 port map( A => out_lines_31_port, B => rm_n38, Y => rm_n37);
   rm_U31 : na210 port map( A => rm_n36, B => rm_n37, Y => rm_n30);
   rm_U30 : na210 port map( A => out_lines_7_port, B => rm_n35, Y => rm_n32);
   rm_U29 : na210 port map( A => out_lines_15_port, B => rm_n34, Y => rm_n33);
   rm_U28 : na210 port map( A => rm_n32, B => rm_n33, Y => rm_n31);
   rm_U27 : no210 port map( A => rm_n30, B => rm_n31, Y => rm_n18);
   rm_U26 : na210 port map( A => out_lines_55_port, B => rm_n29, Y => rm_n26);
   rm_U25 : na210 port map( A => out_lines_63_port, B => rm_n28, Y => rm_n27);
   rm_U24 : na210 port map( A => rm_n26, B => rm_n27, Y => rm_n20);
   rm_U23 : na210 port map( A => out_lines_39_port, B => rm_n25, Y => rm_n22);
   rm_U22 : na210 port map( A => out_lines_47_port, B => rm_n24, Y => rm_n23);
   rm_U21 : na210 port map( A => rm_n22, B => rm_n23, Y => rm_n21);
   rm_U20 : no210 port map( A => rm_n20, B => rm_n21, Y => rm_n19);
   rm_U19 : na210 port map( A => rm_n18, B => rm_n19, Y => d_out(7));
   rm_U18 : iv110 port map( A => write, Y => rm_n10);
   rm_U17 : no210 port map( A => rm_n10, B => rm_n17, Y => rm_n155);
   rm_U16 : no210 port map( A => rm_n10, B => rm_n16, Y => rm_n154);
   rm_U15 : no210 port map( A => rm_n10, B => rm_n15, Y => rm_n153);
   rm_U14 : no210 port map( A => rm_n10, B => rm_n14, Y => rm_n152);
   rm_U13 : no210 port map( A => rm_n10, B => rm_n13, Y => rm_n151);
   rm_U12 : no210 port map( A => rm_n10, B => rm_n12, Y => rm_n150);
   rm_U11 : no210 port map( A => rm_n10, B => rm_n11, Y => rm_n149);
   rm_U10 : no210 port map( A => rm_n9, B => rm_n10, Y => rm_n148);
   rm_U9 : buf40 port map( A => rm_n155, Y => write_out_0_port);
   rm_U8 : buf40 port map( A => rm_n154, Y => write_out_1_port);
   rm_U7 : buf40 port map( A => rm_n153, Y => write_out_2_port);
   rm_U6 : buf40 port map( A => rm_n152, Y => write_out_3_port);
   rm_U5 : buf40 port map( A => rm_n151, Y => write_out_4_port);
   rm_U4 : buf40 port map( A => rm_n150, Y => write_out_5_port);
   rm_U3 : buf40 port map( A => rm_n149, Y => write_out_6_port);
   rm_U2 : buf40 port map( A => rm_n148, Y => write_out_7_port);

end synthesised;



