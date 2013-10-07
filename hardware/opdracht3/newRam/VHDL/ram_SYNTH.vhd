
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

architecture synthesised of ram is

   component rammux
      port( clk : in std_logic;  sel : in std_logic_vector (2 downto 0);  write
            : in std_logic;  write_out, drive_out : out std_logic_vector (7 
            downto 0));
   end component;
   
   component rambank
      port( clk : in std_logic;  write, drive : in std_logic_vector (7 downto 
            0);  in_lines : in std_logic_vector (63 downto 0);  out_lines : out
            std_logic_vector (63 downto 0));
   end component;
   
   signal write_out_7_port, write_out_6_port, write_out_5_port, 
      write_out_4_port, write_out_3_port, write_out_2_port, write_out_1_port, 
      write_out_0_port, drive_out_7_port, drive_out_6_port, drive_out_5_port, 
      drive_out_4_port, drive_out_3_port, drive_out_2_port, drive_out_1_port, 
      drive_out_0_port, n_1000, n_1001, n_1002, n_1003, n_1004, n_1005, n_1006,
      n_1007, n_1008, n_1009, n_1010, n_1011, n_1012, n_1013, n_1014, n_1015, 
      n_1016, n_1017, n_1018, n_1019, n_1020, n_1021, n_1022, n_1023, n_1024, 
      n_1025, n_1026, n_1027, n_1028, n_1029, n_1030, n_1031, n_1032, n_1033, 
      n_1034, n_1035, n_1036, n_1037, n_1038, n_1039, n_1040, n_1041, n_1042, 
      n_1043, n_1044, n_1045, n_1046, n_1047, n_1048, n_1049, n_1050, n_1051, 
      n_1052, n_1053, n_1054, n_1055 : std_logic;

begin
   
   rb : rambank port map( clk => clk, write(7) => write_out_7_port, write(6) =>
                           write_out_6_port, write(5) => write_out_5_port, 
                           write(4) => write_out_4_port, write(3) => 
                           write_out_3_port, write(2) => write_out_2_port, 
                           write(1) => write_out_1_port, write(0) => 
                           write_out_0_port, drive(7) => drive_out_7_port, 
                           drive(6) => drive_out_6_port, drive(5) => 
                           drive_out_5_port, drive(4) => drive_out_4_port, 
                           drive(3) => drive_out_3_port, drive(2) => 
                           drive_out_2_port, drive(1) => drive_out_1_port, 
                           drive(0) => drive_out_0_port, in_lines(63) => 
                           d_in(7), in_lines(62) => d_in(6), in_lines(61) => 
                           d_in(5), in_lines(60) => d_in(4), in_lines(59) => 
                           d_in(3), in_lines(58) => d_in(2), in_lines(57) => 
                           d_in(1), in_lines(56) => d_in(0), in_lines(55) => 
                           d_in(7), in_lines(54) => d_in(6), in_lines(53) => 
                           d_in(5), in_lines(52) => d_in(4), in_lines(51) => 
                           d_in(3), in_lines(50) => d_in(2), in_lines(49) => 
                           d_in(1), in_lines(48) => d_in(0), in_lines(47) => 
                           d_in(7), in_lines(46) => d_in(6), in_lines(45) => 
                           d_in(5), in_lines(44) => d_in(4), in_lines(43) => 
                           d_in(3), in_lines(42) => d_in(2), in_lines(41) => 
                           d_in(1), in_lines(40) => d_in(0), in_lines(39) => 
                           d_in(7), in_lines(38) => d_in(6), in_lines(37) => 
                           d_in(5), in_lines(36) => d_in(4), in_lines(35) => 
                           d_in(3), in_lines(34) => d_in(2), in_lines(33) => 
                           d_in(1), in_lines(32) => d_in(0), in_lines(31) => 
                           d_in(7), in_lines(30) => d_in(6), in_lines(29) => 
                           d_in(5), in_lines(28) => d_in(4), in_lines(27) => 
                           d_in(3), in_lines(26) => d_in(2), in_lines(25) => 
                           d_in(1), in_lines(24) => d_in(0), in_lines(23) => 
                           d_in(7), in_lines(22) => d_in(6), in_lines(21) => 
                           d_in(5), in_lines(20) => d_in(4), in_lines(19) => 
                           d_in(3), in_lines(18) => d_in(2), in_lines(17) => 
                           d_in(1), in_lines(16) => d_in(0), in_lines(15) => 
                           d_in(7), in_lines(14) => d_in(6), in_lines(13) => 
                           d_in(5), in_lines(12) => d_in(4), in_lines(11) => 
                           d_in(3), in_lines(10) => d_in(2), in_lines(9) => 
                           d_in(1), in_lines(8) => d_in(0), in_lines(7) => 
                           d_in(7), in_lines(6) => d_in(6), in_lines(5) => 
                           d_in(5), in_lines(4) => d_in(4), in_lines(3) => 
                           d_in(3), in_lines(2) => d_in(2), in_lines(1) => 
                           d_in(1), in_lines(0) => d_in(0), out_lines(63) => 
                           d_out(7), out_lines(62) => d_out(6), out_lines(61) 
                           => d_out(5), out_lines(60) => d_out(4), 
                           out_lines(59) => d_out(3), out_lines(58) => d_out(2)
                           , out_lines(57) => d_out(1), out_lines(56) => 
                           d_out(0), out_lines(55) => n_1000, out_lines(54) => 
                           n_1001, out_lines(53) => n_1002, out_lines(52) => 
                           n_1003, out_lines(51) => n_1004, out_lines(50) => 
                           n_1005, out_lines(49) => n_1006, out_lines(48) => 
                           n_1007, out_lines(47) => n_1008, out_lines(46) => 
                           n_1009, out_lines(45) => n_1010, out_lines(44) => 
                           n_1011, out_lines(43) => n_1012, out_lines(42) => 
                           n_1013, out_lines(41) => n_1014, out_lines(40) => 
                           n_1015, out_lines(39) => n_1016, out_lines(38) => 
                           n_1017, out_lines(37) => n_1018, out_lines(36) => 
                           n_1019, out_lines(35) => n_1020, out_lines(34) => 
                           n_1021, out_lines(33) => n_1022, out_lines(32) => 
                           n_1023, out_lines(31) => n_1024, out_lines(30) => 
                           n_1025, out_lines(29) => n_1026, out_lines(28) => 
                           n_1027, out_lines(27) => n_1028, out_lines(26) => 
                           n_1029, out_lines(25) => n_1030, out_lines(24) => 
                           n_1031, out_lines(23) => n_1032, out_lines(22) => 
                           n_1033, out_lines(21) => n_1034, out_lines(20) => 
                           n_1035, out_lines(19) => n_1036, out_lines(18) => 
                           n_1037, out_lines(17) => n_1038, out_lines(16) => 
                           n_1039, out_lines(15) => n_1040, out_lines(14) => 
                           n_1041, out_lines(13) => n_1042, out_lines(12) => 
                           n_1043, out_lines(11) => n_1044, out_lines(10) => 
                           n_1045, out_lines(9) => n_1046, out_lines(8) => 
                           n_1047, out_lines(7) => n_1048, out_lines(6) => 
                           n_1049, out_lines(5) => n_1050, out_lines(4) => 
                           n_1051, out_lines(3) => n_1052, out_lines(2) => 
                           n_1053, out_lines(1) => n_1054, out_lines(0) => 
                           n_1055);
   rm : rammux port map( clk => clk, sel(2) => addr(2), sel(1) => addr(1), 
                           sel(0) => addr(0), write => write, write_out(7) => 
                           write_out_7_port, write_out(6) => write_out_6_port, 
                           write_out(5) => write_out_5_port, write_out(4) => 
                           write_out_4_port, write_out(3) => write_out_3_port, 
                           write_out(2) => write_out_2_port, write_out(1) => 
                           write_out_1_port, write_out(0) => write_out_0_port, 
                           drive_out(7) => drive_out_7_port, drive_out(6) => 
                           drive_out_6_port, drive_out(5) => drive_out_5_port, 
                           drive_out(4) => drive_out_4_port, drive_out(3) => 
                           drive_out_3_port, drive_out(2) => drive_out_2_port, 
                           drive_out(1) => drive_out_1_port, drive_out(0) => 
                           drive_out_0_port);

end synthesised;



