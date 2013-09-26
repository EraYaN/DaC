set vdd = h*~
set vss = l*~
set clk = (h*10 l*10)*30\
          h*~
set a_2_0_2 = l*~
set a_2_0_1 = l*40\
              h*120\
              l*80\
              h*80\
              l*40\
              h*120\
              l*80 h*~
set a_2_0_0 = l*20\
              h*20\
              l*20\
              h*100\
              (l*40 h*40)*2\
              l*20\
              h*20\
              l*20\
              h*100\
              l*40\
              h*40\
              l*40 h*~
set d_in_7_0_7 = l*20\
                 h*40\
                 l*280\
                 h*40 l*~
set d_in_7_0_6 = l*20\
                 h*300\
                 l*20 h*~
set d_in_7_0_5 = h*20\
                 l*20\
                 h*20\
                 l*260\
                 h*20\
                 l*20\
                 h*20 l*~
set d_in_7_0_4 = h*20\
                 l*20\
                 h*300\
                 l*20 h*~
set d_in_7_0_3 = h*40\
                 l*280\
                 h*40 l*~
set d_in_7_0_2 = h*20\
                 l*300\
                 h*20 l*~
set d_in_7_0_1 = h*~
set d_in_7_0_0 = h*20\
                 l*20\
                 h*300\
                 l*20 h*~
set write = h*~

option sigunit   = 1n
option outacc    = 100p
option level     = 3
option initialize random = on
option simperiod = 600

print \
      clk,\
      a_2_0_2,\
      a_2_0_1,\
      a_2_0_0,\
      d_in_7_0_7,\
      d_in_7_0_6,\
      d_in_7_0_5,\
      d_in_7_0_4,\
      d_in_7_0_3,\
      d_in_7_0_2,\
      d_in_7_0_1,\
      d_in_7_0_0,\
      write,\
      d_out_7_0_7,\
      d_out_7_0_6,\
      d_out_7_0_5,\
      d_out_7_0_4,\
      d_out_7_0_3,\
      d_out_7_0_2,\
      d_out_7_0_1,\
      d_out_7_0_0

plot \
      clk,\
      a_2_0_2,\
      a_2_0_1,\
      a_2_0_0,\
      d_in_7_0_7,\
      d_in_7_0_6,\
      d_in_7_0_5,\
      d_in_7_0_4,\
      d_in_7_0_3,\
      d_in_7_0_2,\
      d_in_7_0_1,\
      d_in_7_0_0,\
      write,\
      d_out_7_0_7,\
      d_out_7_0_6,\
      d_out_7_0_5,\
      d_out_7_0_4,\
      d_out_7_0_3,\
      d_out_7_0_2,\
      d_out_7_0_1,\
      d_out_7_0_0
/*
*%
tstep 0.1n
trise 0.5n
tfall 0.5n
*%
.options cptime = 1000
*%
*/


