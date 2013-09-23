configuration tb_behaviour_cfg_ext of tb is
   for behaviour
      for all: alu use configuration work.alu_extracted_cfg;
      end for;
   end for;
end tb_behaviour_cfg_ext;


