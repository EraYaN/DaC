configuration draw_rect_tb_behaviour_syn_cfg of draw_rect_tb is
   for behaviour
      for all: draw_rect use configuration work.draw_rect_synthesised_cfg;
      end for;
   end for;
end draw_rect_tb_behaviour_syn_cfg;


