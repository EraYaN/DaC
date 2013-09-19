configuration pwm_gen_tb_behaviour_cfg of pwm_gen_tb is
   for behaviour
      for all: pwm_gen use configuration work.pwm_gen_behaviour_cfg;
      end for;
   end for;
end pwm_gen_tb_behaviour_cfg;


