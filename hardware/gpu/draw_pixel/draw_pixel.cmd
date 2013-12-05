set vdd = h*~
set vss = l*~
set clk = (h*10 l*10)*10\
          h*~
set reset = h*40 l*~
set enable = l*60\
             h*40\
             l*20\
             h*40 l*~
set x_7_0_7 = l*60 h*~
set x_7_0_6 = l*120 h*~
set x_7_0_5 = l*60 h*~
set x_7_0_4 = l*~
set x_7_0_3 = l*60\
              h*60 l*~
set x_7_0_2 = l*120 h*~
set x_7_0_1 = l*60 h*~
set x_7_0_0 = l*120 h*~
set y_6_0_6 = l*60 h*~
set y_6_0_5 = l*120 h*~
set y_6_0_4 = l*60 h*~
set y_6_0_3 = l*120 h*~
set y_6_0_2 = l*60\
              h*60 l*~
set y_6_0_1 = l*60\
              h*60 l*~
set y_6_0_0 = l*60\
              h*60 l*~
set color_3_0_3 = h*~
set color_3_0_2 = l*~
set color_3_0_1 = h*~
set color_3_0_0 = h*~
set asb = l*~
set draw_can_access = l*40 h*~

option sigunit   = 1n
option outacc    = 100p
option level     = 3
option initialize random = on
option simperiod = 200

print \
      clk,\
      reset,\
      enable,\
      x_7_0_7,\
      x_7_0_6,\
      x_7_0_5,\
      x_7_0_4,\
      x_7_0_3,\
      x_7_0_2,\
      x_7_0_1,\
      x_7_0_0,\
      y_6_0_6,\
      y_6_0_5,\
      y_6_0_4,\
      y_6_0_3,\
      y_6_0_2,\
      y_6_0_1,\
      y_6_0_0,\
      color_3_0_3,\
      color_3_0_2,\
      color_3_0_1,\
      color_3_0_0,\
      asb,\
      done,\
      ramaddr_15_0_15,\
      ramaddr_15_0_14,\
      ramaddr_15_0_13,\
      ramaddr_15_0_12,\
      ramaddr_15_0_11,\
      ramaddr_15_0_10,\
      ramaddr_15_0_9,\
      ramaddr_15_0_8,\
      ramaddr_15_0_7,\
      ramaddr_15_0_6,\
      ramaddr_15_0_5,\
      ramaddr_15_0_4,\
      ramaddr_15_0_3,\
      ramaddr_15_0_2,\
      ramaddr_15_0_1,\
      ramaddr_15_0_0,\
      ramdata_3_0_3,\
      ramdata_3_0_2,\
      ramdata_3_0_1,\
      ramdata_3_0_0,\
      draw_write,\
      draw_can_access

plot \
      clk,\
      reset,\
      enable,\
      x_7_0_7,\
      x_7_0_6,\
      x_7_0_5,\
      x_7_0_4,\
      x_7_0_3,\
      x_7_0_2,\
      x_7_0_1,\
      x_7_0_0,\
      y_6_0_6,\
      y_6_0_5,\
      y_6_0_4,\
      y_6_0_3,\
      y_6_0_2,\
      y_6_0_1,\
      y_6_0_0,\
      color_3_0_3,\
      color_3_0_2,\
      color_3_0_1,\
      color_3_0_0,\
      asb,\
      done,\
      ramaddr_15_0_15,\
      ramaddr_15_0_14,\
      ramaddr_15_0_13,\
      ramaddr_15_0_12,\
      ramaddr_15_0_11,\
      ramaddr_15_0_10,\
      ramaddr_15_0_9,\
      ramaddr_15_0_8,\
      ramaddr_15_0_7,\
      ramaddr_15_0_6,\
      ramaddr_15_0_5,\
      ramaddr_15_0_4,\
      ramaddr_15_0_3,\
      ramaddr_15_0_2,\
      ramaddr_15_0_1,\
      ramaddr_15_0_0,\
      ramdata_3_0_3,\
      ramdata_3_0_2,\
      ramdata_3_0_1,\
      ramdata_3_0_0,\
      draw_write,\
      draw_can_access
/*
*%
tstep 0.1n
trise 0.5n
tfall 0.5n
*%
.options cptime = 1000
*%
*/


