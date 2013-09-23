configuration tb_behaviour_cfg of tb is
   for behaviour
      for all: alu use configuration work.alu_behaviour_cfg;
      end for;
   end for;
end tb_behaviour_cfg;


