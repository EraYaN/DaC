configuration ram_control_tb_behaviour_cfg of ram_control_tb is
   for behaviour
      for all: ramcontroller use configuration work.ramcontroller_behaviour_cfg;
      end for;
   end for;
end ram_control_tb_behaviour_cfg;


