configuration gpu_structural_cfg of gpu is
   for structural
      for all: vgacontroller use configuration work.vgacontroller_behaviour_cfg;
      end for;
      for all: spi use configuration work.spi_logic_cfg;
      end for;
   end for;
end gpu_structural_cfg;


