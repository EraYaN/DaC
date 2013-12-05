configuration ram_control_tb_behaviour_syn_cfg of ram_control_tb is
   for behaviour
      for all: ramcontroller use configuration work.ramcontroller_synthesised_cfg;
      end for;
   end for;
end ram_control_tb_behaviour_syn_cfg;


