set vdd = h*~
set vss = l*~
set clk = (h*50 l*50)*3000000\
          h*~
set reset = h*2000 l*~
set enabled = l*4000 h*~
set width_15_0_15 = l*120000000\
                    h*60000000 l*~
set width_15_0_14 = l*120000000\
                    h*60000000\
                    l*60000000 h*~
set width_15_0_13 = l*120000000\
                    h*60000000\
                    l*60000000 h*~
set width_15_0_12 = l*60000000\
                    h*120000000 l*~
set width_15_0_11 = l*60000000\
                    h*120000000 l*~
set width_15_0_10 = l*120000000\
                    h*60000000 l*~
set width_15_0_9 = l*60000000\
                   h*120000000 l*~
set width_15_0_8 = l*60000000\
                   h*120000000\
                   l*60000000 h*~
set width_15_0_7 = l*120000000\
                   h*60000000\
                   l*60000000 h*~
set width_15_0_6 = l*60000000\
                   h*120000000 l*~
set width_15_0_5 = l*120000000\
                   h*60000000\
                   l*60000000 h*~
set width_15_0_4 = l*60000000\
                   h*120000000 l*~
set width_15_0_3 = l*60000000\
                   h*120000000\
                   l*60000000 h*~
set width_15_0_2 = l*120000000\
                   h*60000000 l*~
set width_15_0_1 = l*120000000\
                   h*60000000 l*~
set width_15_0_0 = l*120000000\
                   h*60000000 l*~

option sigunit   = 1n
option outacc    = 100p
option level     = 3
option initialize random = on
option simperiod = 300000000

print \
      clk,\
      reset,\
      enabled,\
      width_15_0_15,\
      width_15_0_14,\
      width_15_0_13,\
      width_15_0_12,\
      width_15_0_11,\
      width_15_0_10,\
      width_15_0_9,\
      width_15_0_8,\
      width_15_0_7,\
      width_15_0_6,\
      width_15_0_5,\
      width_15_0_4,\
      width_15_0_3,\
      width_15_0_2,\
      width_15_0_1,\
      width_15_0_0,\
      pulse

plot \
      clk,\
      reset,\
      enabled,\
      width_15_0_15,\
      width_15_0_14,\
      width_15_0_13,\
      width_15_0_12,\
      width_15_0_11,\
      width_15_0_10,\
      width_15_0_9,\
      width_15_0_8,\
      width_15_0_7,\
      width_15_0_6,\
      width_15_0_5,\
      width_15_0_4,\
      width_15_0_3,\
      width_15_0_2,\
      width_15_0_1,\
      width_15_0_0,\
      pulse
/*
*%
tstep 0.1n
trise 0.5n
tfall 0.5n
*%
.options cptime = 1000
*%
*/


