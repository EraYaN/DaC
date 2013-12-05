configuration draw_pixel_tb_behaviour_cfg of draw_pixel_tb is
   for behaviour
      for all: draw_pixel use configuration work.draw_pixel_behaviour_cfg;
      end for;
   end for;
end draw_pixel_tb_behaviour_cfg;


