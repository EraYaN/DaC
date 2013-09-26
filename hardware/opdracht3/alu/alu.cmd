set vdd = h*~
set vss = l*~
set clk = (h*50 l*50)*40\
          h*~
set input_a_7_0_7 = h*~
set input_a_7_0_6 = h*~
set input_a_7_0_5 = h*~
set input_a_7_0_4 = h*~
set input_a_7_0_3 = l*~
set input_a_7_0_2 = l*~
set input_a_7_0_1 = l*~
set input_a_7_0_0 = l*~
set input_b_7_0_7 = h*~
set input_b_7_0_6 = l*~
set input_b_7_0_5 = h*~
set input_b_7_0_4 = l*~
set input_b_7_0_3 = h*~
set input_b_7_0_2 = l*~
set input_b_7_0_1 = h*~
set input_b_7_0_0 = l*~
set reset = h*100 l*~
set op_3_0_3 = l*1600 h*~
set op_3_0_2 = l*800\
               h*800\
               l*800 h*~
set op_3_0_1 = (l*400 h*400)*3\
               l*400 h*~
set op_3_0_0 = (l*200 h*200)*7\
               l*200 h*~

option sigunit   = 1n
option outacc    = 100p
option level     = 3
option initialize random = on
option simperiod = 4000

print \
      clk,\
      input_a_7_0_7,\
      input_a_7_0_6,\
      input_a_7_0_5,\
      input_a_7_0_4,\
      input_a_7_0_3,\
      input_a_7_0_2,\
      input_a_7_0_1,\
      input_a_7_0_0,\
      input_b_7_0_7,\
      input_b_7_0_6,\
      input_b_7_0_5,\
      input_b_7_0_4,\
      input_b_7_0_3,\
      input_b_7_0_2,\
      input_b_7_0_1,\
      input_b_7_0_0,\
      reset,\
      op_3_0_3,\
      op_3_0_2,\
      op_3_0_1,\
      op_3_0_0,\
      output_r_7_0_7,\
      output_r_7_0_6,\
      output_r_7_0_5,\
      output_r_7_0_4,\
      output_r_7_0_3,\
      output_r_7_0_2,\
      output_r_7_0_1,\
      output_r_7_0_0,\
      status_d_3_0_3,\
      status_d_3_0_2,\
      status_d_3_0_1,\
      status_d_3_0_0

plot \
      clk,\
      input_a_7_0_7,\
      input_a_7_0_6,\
      input_a_7_0_5,\
      input_a_7_0_4,\
      input_a_7_0_3,\
      input_a_7_0_2,\
      input_a_7_0_1,\
      input_a_7_0_0,\
      input_b_7_0_7,\
      input_b_7_0_6,\
      input_b_7_0_5,\
      input_b_7_0_4,\
      input_b_7_0_3,\
      input_b_7_0_2,\
      input_b_7_0_1,\
      input_b_7_0_0,\
      reset,\
      op_3_0_3,\
      op_3_0_2,\
      op_3_0_1,\
      op_3_0_0,\
      output_r_7_0_7,\
      output_r_7_0_6,\
      output_r_7_0_5,\
      output_r_7_0_4,\
      output_r_7_0_3,\
      output_r_7_0_2,\
      output_r_7_0_1,\
      output_r_7_0_0,\
      status_d_3_0_3,\
      status_d_3_0_2,\
      status_d_3_0_1,\
      status_d_3_0_0
/*
*%
tstep 0.1n
trise 0.5n
tfall 0.5n
*%
.options cptime = 1000
*%
*/


