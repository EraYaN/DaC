set vdd = h*~
set vss = l*~
set clk = (h*100 l*100)*40000\
          h*~
set reset = h*200 l*~
set enabled = l*400 h*~
set width_9_0_9 = l*2000000\
                  h*4000000 l*~
set width_9_0_8 = l*4000000 h*~
set width_9_0_7 = l*4000000\
                  h*2000000 l*~
set width_9_0_6 = l*4000000\
                  h*2000000 l*~
set width_9_0_5 = l*4000000\
                  h*2000000 l*~
set width_9_0_4 = l*4000000\
                  h*2000000 l*~
set width_9_0_3 = l*4000000\
                  h*2000000 l*~
set width_9_0_2 = l*4000000\
                  h*2000000 l*~
set width_9_0_1 = l*4000000\
                  h*2000000 l*~
set width_9_0_0 = l*4000000\
                  h*2000000 l*~

option sigunit   = 1n
option outacc    = 100p
option level     = 3
option initialize random = on
option simperiod = 8000000

print \
      clk,\
      reset,\
      enabled,\
      width_9_0_9,\
      width_9_0_8,\
      width_9_0_7,\
      width_9_0_6,\
      width_9_0_5,\
      width_9_0_4,\
      width_9_0_3,\
      width_9_0_2,\
      width_9_0_1,\
      width_9_0_0,\
      pulse

plot \
      clk,\
      reset,\
      enabled,\
      width_9_0_9,\
      width_9_0_8,\
      width_9_0_7,\
      width_9_0_6,\
      width_9_0_5,\
      width_9_0_4,\
      width_9_0_3,\
      width_9_0_2,\
      width_9_0_1,\
      width_9_0_0,\
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


