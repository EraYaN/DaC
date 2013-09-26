configuration rambank_tb_behaviour_cfg of rambank_tb is
   for behaviour
      for all: rambank use configuration work.rambank_behaviour_cfg;
      end for;
   end for;
end rambank_tb_behaviour_cfg;


