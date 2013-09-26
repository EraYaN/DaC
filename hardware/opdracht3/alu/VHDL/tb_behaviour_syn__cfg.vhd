configuration tb_behaviour_syn_cfg of tb is
   for behaviour
      for all: alu use configuration work.alu_behaviour_cfg;
      end for;
   end for;
end tb_behaviour_syn__cfg;


