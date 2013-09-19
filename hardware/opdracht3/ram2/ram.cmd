set vdd = h*~
set vss = l*~
set clk = (h*10 l*10)*30\
          h*~
set reset = l*10\
            h*80 l*~
set a_1_0_1 = l*180\
              h*80\
              l*80\
              h*80\
              l*180 h*~
set a_1_0_0 = l*140\
              (h*40 l*40)*3\
              h*40\
              l*140\
              h*40 l*~
set d_in_3_0_3 = l*100\
                 h*80\
                 l*40\
                 h*200\
                 l*100\
                 h*80 l*~
set d_in_3_0_2 = l*100\
                 h*120\
                 l*300 h*~
set d_in_3_0_1 = l*100\
                 h*40\
                 l*80\
                 h*200\
                 l*100\
                 h*40 l*~
set d_in_3_0_0 = l*100\
                 h*40\
                 l*40\
                 h*40\
                 l*300\
                 h*40\
                 l*40 h*~
set write = l*100\
            (h*20 l*20)*3\
            h*20\
            l*280\
            (h*20 l*20)*2\
            h*~
set read = l*260\
           (h*20 l*20)*3\
           h*20 l*~

option sigunit   = 1n
option outacc    = 100p
option level     = 3
option initialize random = on
option simperiod = 600

print \
      clk,\
      reset,\
      a_1_0_1,\
      a_1_0_0,\
      d_in_3_0_3,\
      d_in_3_0_2,\
      d_in_3_0_1,\
      d_in_3_0_0,\
      write,\
      read,\
      d_out_3_0_3,\
      d_out_3_0_2,\
      d_out_3_0_1,\
      d_out_3_0_0

plot \
      clk,\
      reset,\
      a_1_0_1,\
      a_1_0_0,\
      d_in_3_0_3,\
      d_in_3_0_2,\
      d_in_3_0_1,\
      d_in_3_0_0,\
      write,\
      read,\
      d_out_3_0_3,\
      d_out_3_0_2,\
      d_out_3_0_1,\
      d_out_3_0_0
/*
*%
tstep 0.1n
trise 0.5n
tfall 0.5n
*%
.options cptime = 1000
*%
*/


