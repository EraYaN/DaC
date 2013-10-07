configuration tb_behaviour_cfg_syn of tb is
   for behaviour
      for all: alu use configuration work.alu_synthesised_cfg;
      end for;
   end for;
end tb_behaviour_cfg_syn;


