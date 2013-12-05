configuration draw_pixel_tb_behaviour_SYN_cfg of draw_pixel_tb is
   for behaviour
      for all: draw_pixel use configuration work.draw_pixel_synthesised_cfg;
      end for;
   end for;
end draw_pixel_tb_behaviour_SYN_cfg;


