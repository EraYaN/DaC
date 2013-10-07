
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

architecture synthesised of ram is

   component rammux
      port( clk : in std_logic;  d_out_muxed : out std_logic_vector (7 downto 
            0);  d_out : in std_logic_vector (63 downto 0);  d_in_muxed : in 
            std_logic_vector (7 downto 0);  d_in : out std_logic_vector (63 
            downto 0);  sel : in std_logic_vector (2 downto 0);  write : in 
            std_logic;  write_out : out std_logic_vector (7 downto 0));
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
      out_lines_0_port : std_logic;

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
   rm : rammux port map( clk => clk, d_out_muxed(7) => d_out(7), d_out_muxed(6)
                           => d_out(6), d_out_muxed(5) => d_out(5), 
                           d_out_muxed(4) => d_out(4), d_out_muxed(3) => 
                           d_out(3), d_out_muxed(2) => d_out(2), d_out_muxed(1)
                           => d_out(1), d_out_muxed(0) => d_out(0), d_out(63) 
                           => out_lines_63_port, d_out(62) => out_lines_62_port
                           , d_out(61) => out_lines_61_port, d_out(60) => 
                           out_lines_60_port, d_out(59) => out_lines_59_port, 
                           d_out(58) => out_lines_58_port, d_out(57) => 
                           out_lines_57_port, d_out(56) => out_lines_56_port, 
                           d_out(55) => out_lines_55_port, d_out(54) => 
                           out_lines_54_port, d_out(53) => out_lines_53_port, 
                           d_out(52) => out_lines_52_port, d_out(51) => 
                           out_lines_51_port, d_out(50) => out_lines_50_port, 
                           d_out(49) => out_lines_49_port, d_out(48) => 
                           out_lines_48_port, d_out(47) => out_lines_47_port, 
                           d_out(46) => out_lines_46_port, d_out(45) => 
                           out_lines_45_port, d_out(44) => out_lines_44_port, 
                           d_out(43) => out_lines_43_port, d_out(42) => 
                           out_lines_42_port, d_out(41) => out_lines_41_port, 
                           d_out(40) => out_lines_40_port, d_out(39) => 
                           out_lines_39_port, d_out(38) => out_lines_38_port, 
                           d_out(37) => out_lines_37_port, d_out(36) => 
                           out_lines_36_port, d_out(35) => out_lines_35_port, 
                           d_out(34) => out_lines_34_port, d_out(33) => 
                           out_lines_33_port, d_out(32) => out_lines_32_port, 
                           d_out(31) => out_lines_31_port, d_out(30) => 
                           out_lines_30_port, d_out(29) => out_lines_29_port, 
                           d_out(28) => out_lines_28_port, d_out(27) => 
                           out_lines_27_port, d_out(26) => out_lines_26_port, 
                           d_out(25) => out_lines_25_port, d_out(24) => 
                           out_lines_24_port, d_out(23) => out_lines_23_port, 
                           d_out(22) => out_lines_22_port, d_out(21) => 
                           out_lines_21_port, d_out(20) => out_lines_20_port, 
                           d_out(19) => out_lines_19_port, d_out(18) => 
                           out_lines_18_port, d_out(17) => out_lines_17_port, 
                           d_out(16) => out_lines_16_port, d_out(15) => 
                           out_lines_15_port, d_out(14) => out_lines_14_port, 
                           d_out(13) => out_lines_13_port, d_out(12) => 
                           out_lines_12_port, d_out(11) => out_lines_11_port, 
                           d_out(10) => out_lines_10_port, d_out(9) => 
                           out_lines_9_port, d_out(8) => out_lines_8_port, 
                           d_out(7) => out_lines_7_port, d_out(6) => 
                           out_lines_6_port, d_out(5) => out_lines_5_port, 
                           d_out(4) => out_lines_4_port, d_out(3) => 
                           out_lines_3_port, d_out(2) => out_lines_2_port, 
                           d_out(1) => out_lines_1_port, d_out(0) => 
                           out_lines_0_port, d_in_muxed(7) => d_in(7), 
                           d_in_muxed(6) => d_in(6), d_in_muxed(5) => d_in(5), 
                           d_in_muxed(4) => d_in(4), d_in_muxed(3) => d_in(3), 
                           d_in_muxed(2) => d_in(2), d_in_muxed(1) => d_in(1), 
                           d_in_muxed(0) => d_in(0), d_in(63) => 
                           in_lines_63_port, d_in(62) => in_lines_62_port, 
                           d_in(61) => in_lines_61_port, d_in(60) => 
                           in_lines_60_port, d_in(59) => in_lines_59_port, 
                           d_in(58) => in_lines_58_port, d_in(57) => 
                           in_lines_57_port, d_in(56) => in_lines_56_port, 
                           d_in(55) => in_lines_55_port, d_in(54) => 
                           in_lines_54_port, d_in(53) => in_lines_53_port, 
                           d_in(52) => in_lines_52_port, d_in(51) => 
                           in_lines_51_port, d_in(50) => in_lines_50_port, 
                           d_in(49) => in_lines_49_port, d_in(48) => 
                           in_lines_48_port, d_in(47) => in_lines_47_port, 
                           d_in(46) => in_lines_46_port, d_in(45) => 
                           in_lines_45_port, d_in(44) => in_lines_44_port, 
                           d_in(43) => in_lines_43_port, d_in(42) => 
                           in_lines_42_port, d_in(41) => in_lines_41_port, 
                           d_in(40) => in_lines_40_port, d_in(39) => 
                           in_lines_39_port, d_in(38) => in_lines_38_port, 
                           d_in(37) => in_lines_37_port, d_in(36) => 
                           in_lines_36_port, d_in(35) => in_lines_35_port, 
                           d_in(34) => in_lines_34_port, d_in(33) => 
                           in_lines_33_port, d_in(32) => in_lines_32_port, 
                           d_in(31) => in_lines_31_port, d_in(30) => 
                           in_lines_30_port, d_in(29) => in_lines_29_port, 
                           d_in(28) => in_lines_28_port, d_in(27) => 
                           in_lines_27_port, d_in(26) => in_lines_26_port, 
                           d_in(25) => in_lines_25_port, d_in(24) => 
                           in_lines_24_port, d_in(23) => in_lines_23_port, 
                           d_in(22) => in_lines_22_port, d_in(21) => 
                           in_lines_21_port, d_in(20) => in_lines_20_port, 
                           d_in(19) => in_lines_19_port, d_in(18) => 
                           in_lines_18_port, d_in(17) => in_lines_17_port, 
                           d_in(16) => in_lines_16_port, d_in(15) => 
                           in_lines_15_port, d_in(14) => in_lines_14_port, 
                           d_in(13) => in_lines_13_port, d_in(12) => 
                           in_lines_12_port, d_in(11) => in_lines_11_port, 
                           d_in(10) => in_lines_10_port, d_in(9) => 
                           in_lines_9_port, d_in(8) => in_lines_8_port, d_in(7)
                           => in_lines_7_port, d_in(6) => in_lines_6_port, 
                           d_in(5) => in_lines_5_port, d_in(4) => 
                           in_lines_4_port, d_in(3) => in_lines_3_port, d_in(2)
                           => in_lines_2_port, d_in(1) => in_lines_1_port, 
                           d_in(0) => in_lines_0_port, sel(2) => a(2), sel(1) 
                           => a(1), sel(0) => a(0), write => write, 
                           write_out(7) => write_out_7_port, write_out(6) => 
                           write_out_6_port, write_out(5) => write_out_5_port, 
                           write_out(4) => write_out_4_port, write_out(3) => 
                           write_out_3_port, write_out(2) => write_out_2_port, 
                           write_out(1) => write_out_1_port, write_out(0) => 
                           write_out_0_port);

end synthesised;



