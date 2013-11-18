-- Generated by: xvhdl 2.49 31-Jul-2008
-- Date: 26-Sep-13 11:37:13
-- Path: /home/khogenhout/GitHub/DaC/hardware/opdracht3/alu3/test

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
LIBRARY CellsLib;
USE CellsLib.CellsLib_DECL_PACK.all;

-- user directives added from .sls2vhdl


ARCHITECTURE extracted OF Alu IS

  SIGNAL U3_U4_Z_0: STD_LOGIC;
  SIGNAL U3_U2_Z_7: STD_LOGIC;
  SIGNAL n413: STD_LOGIC;
  SIGNAL N_143: STD_LOGIC;
  SIGNAL r73_n42: STD_LOGIC;
  SIGNAL r73_n40: STD_LOGIC;
  SIGNAL n399: STD_LOGIC;
  SIGNAL n417: STD_LOGIC;
  SIGNAL n438: STD_LOGIC;
  SIGNAL n266: STD_LOGIC;
  SIGNAL r73_n46: STD_LOGIC;
  SIGNAL n267: STD_LOGIC;
  SIGNAL n427: STD_LOGIC;
  SIGNAL n276: STD_LOGIC;
  SIGNAL U3_U2_Z_2: STD_LOGIC;
  SIGNAL U3_U3_Z_0: STD_LOGIC;
  SIGNAL r73_n18: STD_LOGIC;
  SIGNAL n449: STD_LOGIC;
  SIGNAL n416: STD_LOGIC;
  SIGNAL n303: STD_LOGIC;
  SIGNAL r73_n19: STD_LOGIC;
  SIGNAL n286: STD_LOGIC;
  SIGNAL r73_n45: STD_LOGIC;
  SIGNAL r73_n51: STD_LOGIC;
  SIGNAL r73_n39: STD_LOGIC;
  SIGNAL n450: STD_LOGIC;
  SIGNAL n412: STD_LOGIC;
  SIGNAL r73_n43: STD_LOGIC;
  SIGNAL r73_n41: STD_LOGIC;
  SIGNAL n398: STD_LOGIC;
  SIGNAL n275: STD_LOGIC;
  SIGNAL r73_n48: STD_LOGIC;
  SIGNAL r73_n47: STD_LOGIC;
  SIGNAL r73_n44: STD_LOGIC;
  SIGNAL n299: STD_LOGIC;
  SIGNAL r73_n22: STD_LOGIC;
  SIGNAL n287: STD_LOGIC;
  SIGNAL U3_U1_Z_5: STD_LOGIC;
  SIGNAL n316: STD_LOGIC;
  SIGNAL n419: STD_LOGIC;
  SIGNAL n420: STD_LOGIC;
  SIGNAL r73_n53: STD_LOGIC;
  SIGNAL r73_n52: STD_LOGIC;
  SIGNAL N_142: STD_LOGIC;
  SIGNAL n302: STD_LOGIC;
  SIGNAL n282: STD_LOGIC;
  SIGNAL n304: STD_LOGIC;
  SIGNAL n415: STD_LOGIC;
  SIGNAL n451: STD_LOGIC;
  SIGNAL r73_n54: STD_LOGIC;
  SIGNAL n225: STD_LOGIC;
  SIGNAL n278: STD_LOGIC;
  SIGNAL r73_n21: STD_LOGIC;
  SIGNAL r73_n55: STD_LOGIC;
  SIGNAL r73_n57: STD_LOGIC;
  SIGNAL n310: STD_LOGIC;
  SIGNAL n269: STD_LOGIC;
  SIGNAL n265: STD_LOGIC;
  SIGNAL r73_n56: STD_LOGIC;
  SIGNAL n309: STD_LOGIC;
  SIGNAL n270: STD_LOGIC;
  SIGNAL n337: STD_LOGIC;
  SIGNAL n414: STD_LOGIC;
  SIGNAL n271: STD_LOGIC;
  SIGNAL n268: STD_LOGIC;
  SIGNAL n301: STD_LOGIC;
  SIGNAL n432: STD_LOGIC;
  SIGNAL n300: STD_LOGIC;
  SIGNAL U3_U2_Z_0: STD_LOGIC;
  SIGNAL n400: STD_LOGIC;
  SIGNAL n312: STD_LOGIC;
  SIGNAL r73_n29: STD_LOGIC;
  SIGNAL N_138: STD_LOGIC;
  SIGNAL r73_n26: STD_LOGIC;
  SIGNAL r73_n20: STD_LOGIC;
  SIGNAL n294: STD_LOGIC;
  SIGNAL n274: STD_LOGIC;
  SIGNAL r73_n23: STD_LOGIC;
  SIGNAL n314: STD_LOGIC;
  SIGNAL n306: STD_LOGIC;
  SIGNAL n311: STD_LOGIC;
  SIGNAL n354: STD_LOGIC;
  SIGNAL r73_n50: STD_LOGIC;
  SIGNAL n377: STD_LOGIC;
  SIGNAL n378: STD_LOGIC;
  SIGNAL r73_n28: STD_LOGIC;
  SIGNAL n396: STD_LOGIC;
  SIGNAL n295: STD_LOGIC;
  SIGNAL n319: STD_LOGIC;
  SIGNAL n421: STD_LOGIC;
  SIGNAL n318: STD_LOGIC;
  SIGNAL U3_U2_Z_5: STD_LOGIC;
  SIGNAL n315: STD_LOGIC;
  SIGNAL n322: STD_LOGIC;
  SIGNAL n307: STD_LOGIC;
  SIGNAL n308: STD_LOGIC;
  SIGNAL n440: STD_LOGIC;
  SIGNAL n437: STD_LOGIC;
  SIGNAL N_139: STD_LOGIC;
  SIGNAL U3_U1_Z_4: STD_LOGIC;
  SIGNAL r73_n25: STD_LOGIC;
  SIGNAL n446: STD_LOGIC;
  SIGNAL r73_n24: STD_LOGIC;
  SIGNAL U3_U1_Z_1: STD_LOGIC;
  SIGNAL n422: STD_LOGIC;
  SIGNAL n434: STD_LOGIC;
  SIGNAL n321: STD_LOGIC;
  SIGNAL n381: STD_LOGIC;
  SIGNAL n376: STD_LOGIC;
  SIGNAL n439: STD_LOGIC;
  SIGNAL n355: STD_LOGIC;
  SIGNAL n423: STD_LOGIC;
  SIGNAL U3_U2_Z_4: STD_LOGIC;
  SIGNAL n424: STD_LOGIC;
  SIGNAL n293: STD_LOGIC;
  SIGNAL n320: STD_LOGIC;
  SIGNAL n375: STD_LOGIC;
  SIGNAL n317: STD_LOGIC;
  SIGNAL n433: STD_LOGIC;
  SIGNAL n397: STD_LOGIC;
  SIGNAL n408: STD_LOGIC;
  SIGNAL n405: STD_LOGIC;
  SIGNAL n272: STD_LOGIC;
  SIGNAL n387: STD_LOGIC;
  SIGNAL n373: STD_LOGIC;
  SIGNAL N_146: STD_LOGIC;
  SIGNAL n353: STD_LOGIC;
  SIGNAL r73_n49: STD_LOGIC;
  SIGNAL n335: STD_LOGIC;
  SIGNAL n410: STD_LOGIC;
  SIGNAL n409: STD_LOGIC;
  SIGNAL n313: STD_LOGIC;
  SIGNAL n334: STD_LOGIC;
  SIGNAL n447: STD_LOGIC;
  SIGNAL n336: STD_LOGIC;
  SIGNAL r73_n37: STD_LOGIC;
  SIGNAL n407: STD_LOGIC;
  SIGNAL n328: STD_LOGIC;
  SIGNAL U3_U1_Z_0: STD_LOGIC;
  SIGNAL r73_n38: STD_LOGIC;
  SIGNAL n350: STD_LOGIC;
  SIGNAL n329: STD_LOGIC;
  SIGNAL n404: STD_LOGIC;
  SIGNAL n369: STD_LOGIC;
  SIGNAL n332: STD_LOGIC;
  SIGNAL n325: STD_LOGIC;
  SIGNAL n333: STD_LOGIC;
  SIGNAL n384: STD_LOGIC;
  SIGNAL n327: STD_LOGIC;
  SIGNAL n326: STD_LOGIC;
  SIGNAL n290: STD_LOGIC;
  SIGNAL n426: STD_LOGIC;
  SIGNAL n291: STD_LOGIC;
  SIGNAL n380: STD_LOGIC;
  SIGNAL n288: STD_LOGIC;
  SIGNAL n280: STD_LOGIC;
  SIGNAL n330: STD_LOGIC;
  SIGNAL n356: STD_LOGIC;
  SIGNAL n279: STD_LOGIC;
  SIGNAL n379: STD_LOGIC;
  SIGNAL n277: STD_LOGIC;
  SIGNAL n444: STD_LOGIC;
  SIGNAL U3_U1_Z_2: STD_LOGIC;
  SIGNAL n443: STD_LOGIC;
  SIGNAL n401: STD_LOGIC;
  SIGNAL n406: STD_LOGIC;
  SIGNAL n411: STD_LOGIC;
  SIGNAL n402: STD_LOGIC;
  SIGNAL n428: STD_LOGIC;
  SIGNAL n431: STD_LOGIC;
  SIGNAL n340: STD_LOGIC;
  SIGNAL n285: STD_LOGIC;
  SIGNAL n445: STD_LOGIC;
  SIGNAL n292: STD_LOGIC;
  SIGNAL n284: STD_LOGIC;
  SIGNAL n298: STD_LOGIC;
  SIGNAL n263: STD_LOGIC;
  SIGNAL n425: STD_LOGIC;
  SIGNAL n283: STD_LOGIC;
  SIGNAL n385: STD_LOGIC;
  SIGNAL n351: STD_LOGIC;
  SIGNAL n383: STD_LOGIC;
  SIGNAL n352: STD_LOGIC;
  SIGNAL n403: STD_LOGIC;
  SIGNAL n382: STD_LOGIC;
  SIGNAL n374: STD_LOGIC;
  SIGNAL n281: STD_LOGIC;
  SIGNAL n348: STD_LOGIC;
  SIGNAL n368: STD_LOGIC;
  SIGNAL n363: STD_LOGIC;
  SIGNAL U3_U2_Z_6: STD_LOGIC;
  SIGNAL n418: STD_LOGIC;
  SIGNAL n448: STD_LOGIC;
  SIGNAL n367: STD_LOGIC;
  SIGNAL n347: STD_LOGIC;
  SIGNAL N_140: STD_LOGIC;
  SIGNAL r73_n5: STD_LOGIC;
  SIGNAL n366: STD_LOGIC;
  SIGNAL n262: STD_LOGIC;
  SIGNAL n358: STD_LOGIC;
  SIGNAL U3_U2_Z_3: STD_LOGIC;
  SIGNAL n305: STD_LOGIC;
  SIGNAL N_145: STD_LOGIC;
  SIGNAL r73_n27: STD_LOGIC;
  SIGNAL n386: STD_LOGIC;
  SIGNAL n371: STD_LOGIC;
  SIGNAL n389: STD_LOGIC;
  SIGNAL n357: STD_LOGIC;
  SIGNAL r73_n7: STD_LOGIC;
  SIGNAL n390: STD_LOGIC;
  SIGNAL n391: STD_LOGIC;
  SIGNAL n393: STD_LOGIC;
  SIGNAL r73_n2: STD_LOGIC;
  SIGNAL n388: STD_LOGIC;
  SIGNAL n364: STD_LOGIC;
  SIGNAL n394: STD_LOGIC;
  SIGNAL r73_n1: STD_LOGIC;
  SIGNAL n365: STD_LOGIC;
  SIGNAL n395: STD_LOGIC;
  SIGNAL n392: STD_LOGIC;
  SIGNAL n296: STD_LOGIC;
  SIGNAL n297: STD_LOGIC;
  SIGNAL n289: STD_LOGIC;
  SIGNAL r73_n16: STD_LOGIC;
  SIGNAL n338: STD_LOGIC;
  SIGNAL r73_n17: STD_LOGIC;
  SIGNAL n339: STD_LOGIC;
  SIGNAL n324: STD_LOGIC;
  SIGNAL n372: STD_LOGIC;
  SIGNAL n264: STD_LOGIC;
  SIGNAL n429: STD_LOGIC;
  SIGNAL n370: STD_LOGIC;
  SIGNAL n360: STD_LOGIC;
  SIGNAL n430: STD_LOGIC;
  SIGNAL U3_U2_Z_1: STD_LOGIC;
  SIGNAL n361: STD_LOGIC;
  SIGNAL N_144: STD_LOGIC;
  SIGNAL n362: STD_LOGIC;
  SIGNAL n359: STD_LOGIC;
  SIGNAL r73_n14: STD_LOGIC;
  SIGNAL n435: STD_LOGIC;
  SIGNAL n436: STD_LOGIC;
  SIGNAL r73_n15: STD_LOGIC;
  SIGNAL n273: STD_LOGIC;
  SIGNAL r73_n12: STD_LOGIC;
  SIGNAL r73_n13: STD_LOGIC;
  SIGNAL n349: STD_LOGIC;
  SIGNAL n341: STD_LOGIC;
  SIGNAL r73_n11: STD_LOGIC;
  SIGNAL n342: STD_LOGIC;
  SIGNAL U3_U1_Z_6: STD_LOGIC;
  SIGNAL r73_n31: STD_LOGIC;
  SIGNAL N_141: STD_LOGIC;
  SIGNAL r73_n4: STD_LOGIC;
  SIGNAL r73_n3: STD_LOGIC;
  SIGNAL r73_n30: STD_LOGIC;
  SIGNAL r73_n8: STD_LOGIC;
  SIGNAL r73_n36: STD_LOGIC;
  SIGNAL U3_U1_Z_7: STD_LOGIC;
  SIGNAL r73_n35: STD_LOGIC;
  SIGNAL r73_n9: STD_LOGIC;
  SIGNAL r73_n34: STD_LOGIC;
  SIGNAL r73_n10: STD_LOGIC;
  SIGNAL n344: STD_LOGIC;
  SIGNAL n441: STD_LOGIC;
  SIGNAL r73_n6: STD_LOGIC;
  SIGNAL n442: STD_LOGIC;
  SIGNAL n331: STD_LOGIC;
  SIGNAL n346: STD_LOGIC;
  SIGNAL n323: STD_LOGIC;
  SIGNAL n343: STD_LOGIC;
  SIGNAL n345: STD_LOGIC;
  SIGNAL U3_U1_Z_3: STD_LOGIC;
  SIGNAL r73_n33: STD_LOGIC;
  SIGNAL r73_n32: STD_LOGIC;

  SIGNAL output_r_int: STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL status_d_int: STD_LOGIC_VECTOR(3 DOWNTO 0);

  SIGNAL vss: STD_LOGIC;
BEGIN
  vss <= '0';

  output_r <= output_r_int;
  status_d <= status_d_int;

  status_d_int(2) <= status_d_int(3);
  status_d_int(1) <= status_d_int(3);
  status_d_int(3) <= vss;

  r73_U41: ex210 PORT MAP (U3_U1_Z_3, r73_n34, r73_n36);
  r73_U39: ex210 PORT MAP (r73_n36, r73_n35, N_141);
  r73_U9: ex210 PORT MAP (U3_U1_Z_7, r73_n6, r73_n8);
  r73_U17: ex210 PORT MAP (r73_n13, U3_U1_Z_6, r73_n15);
  r73_U15: ex210 PORT MAP (r73_n15, r73_n14, N_144);
  r73_U7: ex210 PORT MAP (r73_n8, r73_n7, N_145);
  r73_U40: ex210 PORT MAP (n262, U3_U2_Z_3, r73_n35);
  r73_U16: ex210 PORT MAP (n262, U3_U2_Z_6, r73_n14);
  r73_U56: ex210 PORT MAP (n262, U3_U2_Z_1, r73_n49);
  r73_U1: ex210 PORT MAP (r73_n1, n262, N_146);
  r73_U32: ex210 PORT MAP (n262, U3_U2_Z_4, r73_n28);
  r73_U55: ex210 PORT MAP (r73_n50, r73_n49, N_139);
  r73_U33: ex210 PORT MAP (r73_n27, U3_U1_Z_4, r73_n29);
  r73_U65: ex210 PORT MAP (n262, U3_U2_Z_0, r73_n56);
  r73_U63: ex210 PORT MAP (r73_n55, r73_n57, N_138);
  r73_U64: ex210 PORT MAP (U3_U1_Z_0, r73_n56, r73_n57);
  r73_U24: ex210 PORT MAP (n262, U3_U2_Z_5, r73_n21);
  r73_U31: ex210 PORT MAP (r73_n29, r73_n28, N_142);
  r73_U57: ex210 PORT MAP (U3_U1_Z_1, r73_n48, r73_n50);
  r73_U49: ex210 PORT MAP (r73_n41, U3_U1_Z_2, r73_n43);
  r73_U25: ex210 PORT MAP (U3_U1_Z_5, r73_n20, r73_n22);
  r73_U66: ex210 PORT MAP (n262, U3_U3_Z_0, r73_n55);
  r73_U23: ex210 PORT MAP (r73_n22, r73_n21, N_143);
  r73_U8: ex210 PORT MAP (n262, U3_U2_Z_7, r73_n7);
  r73_U48: ex210 PORT MAP (n262, U3_U2_Z_2, r73_n42);
  r73_U47: ex210 PORT MAP (r73_n43, r73_n42, N_140);
  r73_U38: na210 PORT MAP (r73_n35, r73_n34, r73_n30);
  r73_U3: na210 PORT MAP (U3_U1_Z_7, r73_n4, r73_n3);
  U455: na210 PORT MAP (n441, n442, U3_U1_Z_3);
  r73_U11: na210 PORT MAP (U3_U1_Z_6, r73_n11, r73_n10);
  r73_U35: na210 PORT MAP (U3_U1_Z_3, r73_n32, r73_n31);
  r73_U10: na210 PORT MAP (r73_n9, r73_n10, r73_n6);
  U457: na210 PORT MAP (n264, input_b(3), n441);
  U437: na210 PORT MAP (n429, n430, U3_U2_Z_1);
  U334: na210 PORT MAP (N_141, n273, n349);
  r73_U18: na210 PORT MAP (r73_n16, r73_n17, r73_n13);
  r73_U14: na210 PORT MAP (r73_n14, r73_n13, r73_n9);
  U446: na210 PORT MAP (n435, n436, U3_U1_Z_6);
  r73_U2: na210 PORT MAP (r73_n2, r73_n3, r73_n1);
  U283: na210 PORT MAP (n296, n297, n289);
  r73_U34: na210 PORT MAP (r73_n30, r73_n31, r73_n27);
  U284: na210 PORT MAP (N_144, n273, n297);
  U351: na210 PORT MAP (n364, n365, n360);
  r73_U6: na210 PORT MAP (r73_n7, r73_n6, r73_n2);
  U333: na210 PORT MAP (n348, n349, n344);
  U438: na210 PORT MAP (input_b(1), n418, n430);
  U447: na210 PORT MAP (input_a(6), n418, n436);
  U465: na210 PORT MAP (input_a(0), n418, n448);
  U352: na210 PORT MAP (N_140, n273, n365);
  U353: na210 PORT MAP (input_b(3), n298, n364);
  U463: na210 PORT MAP (n264, input_b(1), n445);
  U387: na210 PORT MAP (n298, input_b(1), n395);
  U439: na210 PORT MAP (n264, input_a(1), n429);
  U433: na210 PORT MAP (n264, input_a(3), n425);
  U442: na210 PORT MAP (n411, input_a(0), n431);
  U435: na210 PORT MAP (input_b(2), n418, n428);
  U285: na210 PORT MAP (n298, input_b(7), n296);
  U432: na210 PORT MAP (input_b(3), n418, n426);
  U456: na210 PORT MAP (input_a(3), n418, n442);
  U373: na210 PORT MAP (input_b(2), n298, n380);
  U458: na210 PORT MAP (n443, n444, U3_U1_Z_2);
  U460: na210 PORT MAP (n411, input_b(2), n443);
  U464: na210 PORT MAP (n447, n448, U3_U1_Z_0);
  U316: na210 PORT MAP (n332, n333, n327);
  r73_U42: na210 PORT MAP (r73_n37, r73_n38, r73_n34);
  U431: na210 PORT MAP (n425, n426, U3_U2_Z_3);
  U479: na210 PORT MAP (op(1), op(0), n407);
  U445: na210 PORT MAP (n264, input_b(7), n433);
  U418: na210 PORT MAP (n405, n404, n397);
  U428: na210 PORT MAP (n423, n424, U3_U2_Z_4);
  U429: na210 PORT MAP (input_b(4), n418, n424);
  U318: na210 PORT MAP (input_b(5), n298, n332);
  U335: na210 PORT MAP (input_b(4), n298, n348);
  r73_U27: na210 PORT MAP (U3_U1_Z_4, r73_n25, r73_n24);
  U461: na210 PORT MAP (n445, n446, U3_U1_Z_1);
  U453: na210 PORT MAP (input_a(4), n418, n440);
  U451: na210 PORT MAP (n264, input_b(5), n437);
  U426: na210 PORT MAP (input_b(5), n418, n422);
  U443: na210 PORT MAP (n433, n434, U3_U1_Z_7);
  U476: na210 PORT MAP (n411, input_b(0), n447);
  U430: na210 PORT MAP (n411, input_a(4), n423);
  U454: na210 PORT MAP (n411, input_b(4), n439);
  U371: na210 PORT MAP (n380, n381, n376);
  U372: na210 PORT MAP (N_139, n273, n381);
  U452: na210 PORT MAP (n439, n440, U3_U1_Z_4);
  U425: na210 PORT MAP (n421, n422, U3_U2_Z_5);
  U301: na210 PORT MAP (n298, input_b(6), n315);
  U448: na210 PORT MAP (n411, input_b(6), n435);
  U389: na210 PORT MAP (n273, N_138, n394);
  r73_U26: na210 PORT MAP (r73_n23, r73_n24, r73_n20);
  r73_U30: na210 PORT MAP (r73_n28, r73_n27, r73_n23);
  U298: na210 PORT MAP (input_a(6), n295, n314);
  U269: na210 PORT MAP (n272, input_b(6), n271);
  U416: na210 PORT MAP (input_a(7), n274, n414);
  U440: na210 PORT MAP (n431, n432, U3_U2_Z_0);
  U270: na210 PORT MAP (n273, N_145, n270);
  U203: na210 PORT MAP (n451, N_146, n225);
  U441: na210 PORT MAP (input_b(0), n418, n432);
  U462: na210 PORT MAP (input_a(1), n418, n446);
  U414: na210 PORT MAP (input_b(7), n272, n415);
  r73_U59: na210 PORT MAP (U3_U1_Z_0, r73_n53, r73_n52);
  U473: na210 PORT MAP (n396, n410, n400);
  U427: na210 PORT MAP (n264, input_a(5), n421);
  U299: na210 PORT MAP (n315, n316, n310);
  U391: na210 PORT MAP (n295, input_a(1), n393);
  U423: na210 PORT MAP (input_b(6), n418, n420);
  U363: na210 PORT MAP (n274, input_a(1), n372);
  U424: na210 PORT MAP (n411, input_a(6), n419);
  U422: na210 PORT MAP (n419, n420, U3_U2_Z_6);
  r73_U58: na210 PORT MAP (r73_n51, r73_n52, r73_n48);
  r73_U54: na210 PORT MAP (r73_n49, r73_n48, r73_n44);
  U469: na210 PORT MAP (n405, n396, n450);
  U271: na210 PORT MAP (n274, input_a(6), n269);
  r73_U22: na210 PORT MAP (r73_n21, r73_n20, r73_n16);
  r73_U43: na210 PORT MAP (U3_U1_Z_2, r73_n39, r73_n38);
  U317: na210 PORT MAP (N_142, n273, n333);
  U459: na210 PORT MAP (input_a(2), n418, n444);
  r73_U62: na210 PORT MAP (r73_n56, r73_n55, r73_n51);
  r73_U50: na210 PORT MAP (r73_n44, r73_n45, r73_n41);
  U444: na210 PORT MAP (input_a(7), n418, n434);
  U421: na210 PORT MAP (n264, input_a(7), n416);
  U466: na210 PORT MAP (n398, n449, n418);
  U434: na210 PORT MAP (n427, n428, U3_U2_Z_2);
  r73_U51: na210 PORT MAP (U3_U1_Z_1, r73_n46, r73_n45);
  U450: na210 PORT MAP (input_a(5), n418, n438);
  U436: na210 PORT MAP (n411, input_a(2), n427);
  U420: na210 PORT MAP (input_b(7), n418, n417);
  U449: na210 PORT MAP (n437, n438, U3_U1_Z_5);
  r73_U19: na210 PORT MAP (U3_U1_Z_5, r73_n18, r73_n17);
  r73_U46: na210 PORT MAP (r73_n42, r73_n41, r73_n37);
  U282: na210 PORT MAP (input_a(7), n295, n294);
  U419: na210 PORT MAP (n416, n417, U3_U2_Z_7);
  U390: na210 PORT MAP (n398, n399, n273);
  U300: na210 PORT MAP (N_143, n273, n316);
  r73_U12: iv110 PORT MAP (r73_n12, r73_n11);
  r73_U36: iv110 PORT MAP (r73_n33, r73_n32);
  U362: iv110 PORT MAP (n372, n370);
  U382: iv110 PORT MAP (input_a(0), n388);
  U385: iv110 PORT MAP (n392, n391);
  U348: iv110 PORT MAP (input_b(1), n363);
  r73_U4: iv110 PORT MAP (r73_n5, r73_n4);
  U355: iv110 PORT MAP (input_b(2), n347);
  U350: iv110 PORT MAP (input_a(3), n340);
  U337: iv110 PORT MAP (input_b(3), n330);
  U474: iv110 PORT MAP (op(0), n410);
  U367: iv110 PORT MAP (n272, n292);
  U478: iv110 PORT MAP (op(2), n404);
  U394: iv110 PORT MAP (input_b(0), n379);
  U303: iv110 PORT MAP (input_b(5), n293);
  U332: iv110 PORT MAP (input_a(4), n323);
  U320: iv110 PORT MAP (input_b(4), n313);
  U475: iv110 PORT MAP (op(1), n396);
  U398: iv110 PORT MAP (n284, n281);
  U370: iv110 PORT MAP (n295, n331);
  r73_U28: iv110 PORT MAP (r73_n26, r73_n25);
  U281: iv110 PORT MAP (n294, n290);
  U297: iv110 PORT MAP (n314, n311);
  U403: iv110 PORT MAP (n285, n277);
  U369: iv110 PORT MAP (input_a(2), n356);
  U383: iv110 PORT MAP (n274, n305);
  U470: iv110 PORT MAP (op(3), n405);
  U471: iv110 PORT MAP (n451, n398);
  U315: iv110 PORT MAP (input_a(5), n306);
  r73_U60: iv110 PORT MAP (r73_n54, r73_n53);
  r73_U20: iv110 PORT MAP (r73_n19, r73_n18);
  r73_U52: iv110 PORT MAP (r73_n47, r73_n46);
  U467: iv110 PORT MAP (n412, n449);
  r73_U44: iv110 PORT MAP (r73_n40, r73_n39);
  U267: iv110 PORT MAP (n268, n267);
  U412: iv110 PORT MAP (status_d_int(0), n413);
  U409: iv110 PORT MAP (n399, U3_U4_Z_0);
  U328: na310 PORT MAP (n341, n342, n343, output_r_int(3));
  U386: na310 PORT MAP (n393, n394, n395, n392);
  U384: na310 PORT MAP (n389, n390, n391, output_r_int(0));
  U345: na310 PORT MAP (n357, n358, n359, output_r_int(2));
  U311: na310 PORT MAP (n324, n325, n326, output_r_int(4));
  U407: na310 PORT MAP (op(3), op(2), n409, n284);
  U364: na310 PORT MAP (n373, n374, n375, output_r_int(1));
  U405: na310 PORT MAP (op(3), op(1), n408, n285);
  U294: na310 PORT MAP (n307, n308, n309, output_r_int(5));
  U268: na310 PORT MAP (n269, n270, n271, n268);
  U413: na310 PORT MAP (n414, n415, n225, status_d_int(0));
  U278: na310 PORT MAP (n286, n287, n288, output_r_int(6));
  U266: na310 PORT MAP (n265, n266, n267, output_r_int(7));
  U329: no310 PORT MAP (n344, n345, n346, n343);
  U346: no310 PORT MAP (n360, n361, n362, n359);
  U279: no310 PORT MAP (n289, n290, n291, n288);
  U312: no310 PORT MAP (n327, n328, n329, n326);
  U477: no310 PORT MAP (n407, op(3), n404, n411);
  U265: no310 PORT MAP (n407, op(3), n404, n264);
  U397: no310 PORT MAP (n404, op(0), n405, n283);
  U264: no310 PORT MAP (n407, op(2), n405, n263);
  U402: no310 PORT MAP (n407, op(2), n405, n279);
  U388: no310 PORT MAP (n396, op(0), n397, n298);
  U365: no310 PORT MAP (n376, n377, n378, n375);
  U417: no310 PORT MAP (n410, op(1), n397, n274);
  U295: no310 PORT MAP (n310, n311, n312, n309);
  U472: no310 PORT MAP (n404, op(3), n400, n451);
  U468: no310 PORT MAP (n404, n410, n450, n412);
  U331: no210 PORT MAP (n331, n323, n345);
  r73_U13: no210 PORT MAP (r73_n13, r73_n14, r73_n12);
  U325: no210 PORT MAP (n338, n339, n324);
  r73_U37: no210 PORT MAP (r73_n34, r73_n35, r73_n33);
  U381: no210 PORT MAP (n305, n388, n386);
  U360: no210 PORT MAP (n370, n371, n357);
  U356: no210 PORT MAP (n281, n368, n367);
  r73_U5: no210 PORT MAP (r73_n6, r73_n7, r73_n5);
  U338: no210 PORT MAP (n281, n352, n351);
  U349: no210 PORT MAP (n331, n340, n361);
  U377: no210 PORT MAP (n281, n385, n382);
  U330: no210 PORT MAP (n292, n347, n346);
  U395: no210 PORT MAP (n281, n403, n402);
  U347: no210 PORT MAP (n292, n363, n362);
  U327: no210 PORT MAP (n305, n340, n338);
  U399: no210 PORT MAP (n277, n406, n401);
  U358: no210 PORT MAP (n277, n369, n366);
  U375: no210 PORT MAP (n277, n384, n383);
  U408: no210 PORT MAP (op(1), n410, n409);
  U379: no210 PORT MAP (n386, n387, n373);
  U280: no210 PORT MAP (n292, n293, n291);
  U321: no210 PORT MAP (n281, n336, n335);
  U406: no210 PORT MAP (op(2), op(0), n408);
  U415: no210 PORT MAP (n397, n407, n272);
  U306: no210 PORT MAP (n277, n320, n317);
  U310: no210 PORT MAP (n305, n323, n321);
  U304: no210 PORT MAP (n281, n319, n318);
  U342: no210 PORT MAP (n354, n355, n341);
  U308: no210 PORT MAP (n321, n322, n307);
  U366: no210 PORT MAP (n292, n379, n378);
  U313: no210 PORT MAP (n292, n330, n329);
  r73_U29: no210 PORT MAP (r73_n27, r73_n28, r73_n26);
  U314: no210 PORT MAP (n331, n306, n328);
  U368: no210 PORT MAP (n331, n356, n377);
  U392: no210 PORT MAP (n400, n397, n295);
  U401: no210 PORT MAP (n405, n400, n280);
  U344: no210 PORT MAP (n305, n356, n354);
  U287: no210 PORT MAP (n277, n301, n300);
  U296: no210 PORT MAP (n292, n313, n312);
  r73_U61: no210 PORT MAP (r73_n55, r73_n56, r73_n54);
  U323: no210 PORT MAP (n277, n337, n334);
  r73_U53: no210 PORT MAP (r73_n48, r73_n49, r73_n47);
  U275: no210 PORT MAP (n281, n282, n275);
  U289: no210 PORT MAP (n281, n302, n299);
  U293: no210 PORT MAP (n305, n306, n303);
  U291: no210 PORT MAP (n303, n304, n286);
  r73_U21: no210 PORT MAP (r73_n20, r73_n21, r73_n19);
  U273: no210 PORT MAP (n277, n278, n276);
  U340: no210 PORT MAP (n277, n353, n350);
  U411: no210 PORT MAP (n413, n398, U3_U3_Z_0);
  U410: no210 PORT MAP (n411, n412, n399);
  r73_U45: no210 PORT MAP (r73_n41, r73_n42, r73_n40);
  U354: mu111 PORT MAP (n366, n367, n347, n358);
  U374: mu111 PORT MAP (n382, n383, input_b(1), n374);
  U404: mu111 PORT MAP (n284, n285, input_a(0), n389);
  U396: mu111 PORT MAP (n283, n263, input_a(0), n403);
  U339: mu111 PORT MAP (n263, n283, n340, n352);
  U400: mu111 PORT MAP (n279, n280, input_a(0), n406);
  U361: mu111 PORT MAP (n277, n281, n356, n371);
  U326: mu111 PORT MAP (n277, n281, n323, n339);
  U393: mu111 PORT MAP (n401, n402, n379, n390);
  U336: mu111 PORT MAP (n350, n351, n330, n342);
  U359: mu111 PORT MAP (n280, n279, n356, n369);
  U322: mu111 PORT MAP (n263, n283, n323, n336);
  U378: mu111 PORT MAP (n283, n279, input_a(1), n385);
  U357: mu111 PORT MAP (n263, n283, n356, n368);
  U319: mu111 PORT MAP (n334, n335, n313, n325);
  U341: mu111 PORT MAP (n280, n279, n340, n353);
  U376: mu111 PORT MAP (n263, n280, input_a(1), n384);
  U343: mu111 PORT MAP (n277, n281, n340, n355);
  U302: mu111 PORT MAP (n317, n318, n293, n308);
  U380: mu111 PORT MAP (n281, n277, input_a(1), n387);
  U305: mu111 PORT MAP (n263, n283, n306, n319);
  U277: mu111 PORT MAP (n284, n285, input_a(7), n265);
  U324: mu111 PORT MAP (n280, n279, n323, n337);
  U307: mu111 PORT MAP (n280, n279, n306, n320);
  U288: mu111 PORT MAP (n263, n280, input_a(6), n301);
  U274: mu111 PORT MAP (n263, n280, input_a(7), n278);
  U276: mu111 PORT MAP (n283, n279, input_a(7), n282);
  U292: mu111 PORT MAP (n281, n277, input_a(6), n304);
  U290: mu111 PORT MAP (n283, n279, input_a(6), n302);
  U286: mu111 PORT MAP (n299, n300, input_b(6), n287);
  U309: mu111 PORT MAP (n277, n281, n306, n322);
  U272: mu111 PORT MAP (n275, n276, input_b(7), n266);
  U263: buf40 PORT MAP (U3_U4_Z_0, n262);

END extracted;


