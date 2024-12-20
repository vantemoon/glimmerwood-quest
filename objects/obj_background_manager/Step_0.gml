/// @description Change the background according to current zone

switch (global.current_zone)
{
	case ZONE.ONE:
		// Default case, do nothing
		break;
		
	case ZONE.TWO:
		if (trans_start)
		{
			
			var _layer1_id = layer_get_id("Backgrounds_1");
			var _layer2_id = layer_get_id("Backgrounds_2");
			var _layer3_id = layer_get_id("Backgrounds_3");
			var _layer4_id = layer_get_id("Backgrounds_4");
			var _layer5_id = layer_get_id("Backgrounds_5");
			var _layer6_id = layer_get_id("Backgrounds_6");
			var _layer7_id = layer_get_id("Backgrounds_7");
		
			var _bg1_id = layer_background_get_id(_layer1_id);
			var _bg2_id = layer_background_get_id(_layer2_id);
			var _bg3_id = layer_background_get_id(_layer3_id);
			var _bg4_id = layer_background_get_id(_layer4_id);
			var _bg5_id = layer_background_get_id(_layer5_id);
			var _bg6_id = layer_background_get_id(_layer6_id);
			var _bg7_id = layer_background_get_id(_layer7_id);
			
			trans_done = (layer_background_get_sprite(_bg1_id) == spr_background_2_1);
		
			if (layer_background_get_alpha(_bg1_id) > 0.01 and !trans_done)
			{
				var _new_alpha = layer_background_get_alpha(_bg1_id) - 0.02;
				
				layer_background_alpha(_bg1_id, _new_alpha);
				layer_background_alpha(_bg2_id, _new_alpha);
				layer_background_alpha(_bg3_id, _new_alpha);
				layer_background_alpha(_bg4_id, _new_alpha);
				layer_background_alpha(_bg5_id, _new_alpha);
				layer_background_alpha(_bg6_id, _new_alpha);
				layer_background_alpha(_bg7_id, _new_alpha);
			
			}
		
			if (layer_background_get_alpha(_bg1_id) < 0.01)
			{
				if (layer_background_get_sprite(_bg1_id) != spr_background_2_1)
					layer_background_sprite(_bg1_id, spr_background_2_1);
				if (layer_background_get_sprite(_bg2_id) != spr_background_2_2)
					layer_background_sprite(_bg2_id, spr_background_2_2);
				if (layer_background_get_sprite(_bg3_id) != spr_background_2_3)
					layer_background_sprite(_bg3_id, spr_background_2_3);
				if (layer_background_get_sprite(_bg4_id) != spr_background_2_4)
					layer_background_sprite(_bg4_id, spr_background_2_4);
				if (layer_background_get_sprite(_bg5_id) != spr_background_2_5)
					layer_background_sprite(_bg5_id, spr_background_2_5);
				if (layer_background_get_sprite(_bg6_id) != spr_background_2_6)
					layer_background_sprite(_bg6_id, spr_background_2_6);
				if (layer_background_get_sprite(_bg7_id) != spr_background_2_7)
					layer_background_sprite(_bg7_id, spr_background_2_7);
					
				trans_done = true;
			
				layer_background_alpha(_bg1_id, 0.01);
				layer_background_alpha(_bg2_id, 0.01);
				layer_background_alpha(_bg3_id, 0.01);
				layer_background_alpha(_bg4_id, 0.01);
				layer_background_alpha(_bg5_id, 0.01);
				layer_background_alpha(_bg6_id, 0.01);
				layer_background_alpha(_bg7_id, 0.01);
			}
		
			if (layer_background_get_alpha(_bg1_id) > 0 and trans_done)
			{
				var _new_alpha = layer_background_get_alpha(_bg1_id) + 0.01;
			
				if ((_new_alpha >= 0.1) and !obj_environment_manager.called_once)
				{
					obj_environment_manager.trans_start = true;
				}
				
				layer_background_alpha(_bg1_id, _new_alpha);
				layer_background_alpha(_bg2_id, _new_alpha);
				layer_background_alpha(_bg3_id, _new_alpha);
				layer_background_alpha(_bg4_id, _new_alpha);
				layer_background_alpha(_bg5_id, _new_alpha);
				layer_background_alpha(_bg6_id, _new_alpha);
				layer_background_alpha(_bg7_id, _new_alpha);
			}
			
			trans_start = !(trans_done and (layer_background_get_alpha(_bg1_id) == 1));
		}
		
		break;
	
	case ZONE.THREE:
		if (trans_start)
		{
			
			var _layer1_id = layer_get_id("Backgrounds_1");
			var _layer2_id = layer_get_id("Backgrounds_2");
			var _layer3_id = layer_get_id("Backgrounds_3");
			var _layer4_id = layer_get_id("Backgrounds_4");
			var _layer5_id = layer_get_id("Backgrounds_5");
			var _layer6_id = layer_get_id("Backgrounds_6");
			var _layer7_id = layer_get_id("Backgrounds_7");
		
			var _bg1_id = layer_background_get_id(_layer1_id);
			var _bg2_id = layer_background_get_id(_layer2_id);
			var _bg3_id = layer_background_get_id(_layer3_id);
			var _bg4_id = layer_background_get_id(_layer4_id);
			var _bg5_id = layer_background_get_id(_layer5_id);
			var _bg6_id = layer_background_get_id(_layer6_id);
			var _bg7_id = layer_background_get_id(_layer7_id);
			
			trans_done = (layer_background_get_sprite(_bg1_id) == spr_background_3_1);
		
			if (layer_background_get_alpha(_bg1_id) > 0.01 and !trans_done)
			{
				var _new_alpha = layer_background_get_alpha(_bg1_id) - 0.02;
				
				layer_background_alpha(_bg1_id, _new_alpha);
				layer_background_alpha(_bg2_id, _new_alpha);
				layer_background_alpha(_bg3_id, _new_alpha);
				layer_background_alpha(_bg4_id, _new_alpha);
				layer_background_alpha(_bg5_id, _new_alpha);
				layer_background_alpha(_bg6_id, _new_alpha);
				layer_background_alpha(_bg7_id, _new_alpha);
			
			}
		
			if (layer_background_get_alpha(_bg1_id) < 0.01)
			{
				if (layer_background_get_sprite(_bg1_id) != spr_background_3_1)
					layer_background_sprite(_bg1_id, spr_background_3_1);
				if (layer_background_get_sprite(_bg2_id) != spr_background_3_2)
					layer_background_sprite(_bg2_id, spr_background_3_2);
				if (layer_background_get_sprite(_bg3_id) != spr_background_3_3)
					layer_background_sprite(_bg3_id, spr_background_3_3);
				if (layer_background_get_sprite(_bg4_id) != spr_background_3_4)
					layer_background_sprite(_bg4_id, spr_background_3_4);
				if (layer_background_get_sprite(_bg5_id) != spr_background_3_5)
					layer_background_sprite(_bg5_id, spr_background_3_5);
				if (layer_background_get_sprite(_bg6_id) != spr_background_3_6)
					layer_background_sprite(_bg6_id, spr_background_3_6);
				if (layer_background_get_sprite(_bg7_id) != spr_background_3_7)
					layer_background_sprite(_bg7_id, spr_background_3_7);
					
				trans_done = true;
			
				layer_background_alpha(_bg1_id, 0.01);
				layer_background_alpha(_bg2_id, 0.01);
				layer_background_alpha(_bg3_id, 0.01);
				layer_background_alpha(_bg4_id, 0.01);
				layer_background_alpha(_bg5_id, 0.01);
				layer_background_alpha(_bg6_id, 0.01);
				layer_background_alpha(_bg7_id, 0.01);
			}
		
			if (layer_background_get_alpha(_bg1_id) > 0 and trans_done)
			{
				var _new_alpha = layer_background_get_alpha(_bg1_id) + 0.01;
			
				if ((_new_alpha >= 0.1) and !obj_environment_manager.called_once)
				{
					obj_environment_manager.trans_start = true;
				}
				
				layer_background_alpha(_bg1_id, _new_alpha);
				layer_background_alpha(_bg2_id, _new_alpha);
				layer_background_alpha(_bg3_id, _new_alpha);
				layer_background_alpha(_bg4_id, _new_alpha);
				layer_background_alpha(_bg5_id, _new_alpha);
				layer_background_alpha(_bg6_id, _new_alpha);
				layer_background_alpha(_bg7_id, _new_alpha);
			}
			
			trans_start = !(trans_done and (layer_background_get_alpha(_bg1_id) == 1));
		}
		
		break;
	
	case ZONE.BOSS:
		if (trans_start and !global.game_complete)
		{
			
			var _layer1_id = layer_get_id("Backgrounds_1");
			var _layer2_id = layer_get_id("Backgrounds_2");
			var _layer3_id = layer_get_id("Backgrounds_3");
			var _layer4_id = layer_get_id("Backgrounds_4");
			var _layer5_id = layer_get_id("Backgrounds_5");
			var _layer6_id = layer_get_id("Backgrounds_6");
			var _layer7_id = layer_get_id("Backgrounds_7");
		
			var _bg1_id = layer_background_get_id(_layer1_id);
			var _bg2_id = layer_background_get_id(_layer2_id);
			var _bg3_id = layer_background_get_id(_layer3_id);
			var _bg4_id = layer_background_get_id(_layer4_id);
			var _bg5_id = layer_background_get_id(_layer5_id);
			var _bg6_id = layer_background_get_id(_layer6_id);
			var _bg7_id = layer_background_get_id(_layer7_id);
			
			trans_done = (layer_background_get_sprite(_bg1_id) == spr_background_b_1);
		
			if (layer_background_get_alpha(_bg1_id) > 0.01 and !trans_done)
			{
				var _new_alpha = layer_background_get_alpha(_bg1_id) - 0.02;
				
				layer_background_alpha(_bg1_id, _new_alpha);
				layer_background_alpha(_bg2_id, _new_alpha);
				layer_background_alpha(_bg3_id, _new_alpha);
				layer_background_alpha(_bg4_id, _new_alpha);
				layer_background_alpha(_bg5_id, _new_alpha);
				layer_background_alpha(_bg6_id, _new_alpha);
				layer_background_alpha(_bg7_id, _new_alpha);
			
			}
		
			if (layer_background_get_alpha(_bg1_id) < 0.01)
			{
				if (layer_background_get_sprite(_bg1_id) != spr_background_b_1)
					layer_background_sprite(_bg1_id, spr_background_b_1);
				if (layer_background_get_sprite(_bg2_id) != spr_background_b_2)
					layer_background_sprite(_bg2_id, spr_background_b_2);
				if (layer_background_get_sprite(_bg3_id) != spr_background_b_3)
					layer_background_sprite(_bg3_id, spr_background_b_3);
				if (layer_background_get_sprite(_bg4_id) != spr_background_b_4)
					layer_background_sprite(_bg4_id, spr_background_b_4);
				if (layer_background_get_sprite(_bg5_id) != spr_background_b_5)
					layer_background_sprite(_bg5_id, spr_background_b_5);
				if (layer_background_get_sprite(_bg6_id) != spr_background_b_6)
					layer_background_sprite(_bg6_id, spr_background_b_6);
				if (layer_background_get_sprite(_bg7_id) != spr_background_b_7)
					layer_background_sprite(_bg7_id, spr_background_b_7);
					
				trans_done = true;
			
				layer_background_alpha(_bg1_id, 0.01);
				layer_background_alpha(_bg2_id, 0.01);
				layer_background_alpha(_bg3_id, 0.01);
				layer_background_alpha(_bg4_id, 0.01);
				layer_background_alpha(_bg5_id, 0.01);
				layer_background_alpha(_bg6_id, 0.01);
				layer_background_alpha(_bg7_id, 0.01);
			}
		
			if (layer_background_get_alpha(_bg1_id) > 0 and trans_done)
			{
				var _new_alpha = layer_background_get_alpha(_bg1_id) + 0.01;
			
				if ((_new_alpha >= 0.1) and !obj_environment_manager.called_once)
				{
					obj_environment_manager.trans_start = true;
				}
				
				layer_background_alpha(_bg1_id, _new_alpha);
				layer_background_alpha(_bg2_id, _new_alpha);
				layer_background_alpha(_bg3_id, _new_alpha);
				layer_background_alpha(_bg4_id, _new_alpha);
				layer_background_alpha(_bg5_id, _new_alpha);
				layer_background_alpha(_bg6_id, _new_alpha);
				layer_background_alpha(_bg7_id, _new_alpha);
			}
			
			trans_start = !(trans_done and (layer_background_get_alpha(_bg1_id) == 1));
		}
		
		else if (trans_start and global.game_complete)
		{
						var _layer1_id = layer_get_id("Backgrounds_1");
			var _layer2_id = layer_get_id("Backgrounds_2");
			var _layer3_id = layer_get_id("Backgrounds_3");
			var _layer4_id = layer_get_id("Backgrounds_4");
			var _layer5_id = layer_get_id("Backgrounds_5");
			var _layer6_id = layer_get_id("Backgrounds_6");
			var _layer7_id = layer_get_id("Backgrounds_7");
		
			var _bg1_id = layer_background_get_id(_layer1_id);
			var _bg2_id = layer_background_get_id(_layer2_id);
			var _bg3_id = layer_background_get_id(_layer3_id);
			var _bg4_id = layer_background_get_id(_layer4_id);
			var _bg5_id = layer_background_get_id(_layer5_id);
			var _bg6_id = layer_background_get_id(_layer6_id);
			var _bg7_id = layer_background_get_id(_layer7_id);
			
			trans_done = (layer_background_get_sprite(_bg1_id) == spr_background_pb_1);
		
			if (layer_background_get_alpha(_bg1_id) > 0.01 and !trans_done)
			{
				var _new_alpha = layer_background_get_alpha(_bg1_id) - 0.02;
				
				layer_background_alpha(_bg1_id, _new_alpha);
				layer_background_alpha(_bg2_id, _new_alpha);
				layer_background_alpha(_bg3_id, _new_alpha);
				layer_background_alpha(_bg4_id, _new_alpha);
				layer_background_alpha(_bg5_id, _new_alpha);
				layer_background_alpha(_bg6_id, _new_alpha);
				layer_background_alpha(_bg7_id, _new_alpha);
			
			}
		
			if (layer_background_get_alpha(_bg1_id) < 0.01)
			{
				if (layer_background_get_sprite(_bg1_id) != spr_background_pb_1)
					layer_background_sprite(_bg1_id, spr_background_pb_1);
				if (layer_background_get_sprite(_bg2_id) != spr_background_pb_2)
					layer_background_sprite(_bg2_id, spr_background_pb_2);
				if (layer_background_get_sprite(_bg3_id) != spr_background_pb_3)
					layer_background_sprite(_bg3_id, spr_background_pb_3);
				if (layer_background_get_sprite(_bg4_id) != spr_background_pb_4)
					layer_background_sprite(_bg4_id, spr_background_pb_4);
				if (layer_background_get_sprite(_bg5_id) != spr_background_pb_5)
					layer_background_sprite(_bg5_id, spr_background_pb_5);
				if (layer_background_get_sprite(_bg6_id) != spr_background_pb_6)
					layer_background_sprite(_bg6_id, spr_background_pb_6);
				if (layer_background_get_sprite(_bg7_id) != spr_background_pb_7)
					layer_background_sprite(_bg7_id, spr_background_pb_7);
					
				trans_done = true;
			
				layer_background_alpha(_bg1_id, 0.01);
				layer_background_alpha(_bg2_id, 0.01);
				layer_background_alpha(_bg3_id, 0.01);
				layer_background_alpha(_bg4_id, 0.01);
				layer_background_alpha(_bg5_id, 0.01);
				layer_background_alpha(_bg6_id, 0.01);
				layer_background_alpha(_bg7_id, 0.01);
			}
		
			if (layer_background_get_alpha(_bg1_id) > 0 and trans_done)
			{
				var _new_alpha = layer_background_get_alpha(_bg1_id) + 0.01;
			
				if ((_new_alpha >= 0.1) and !obj_environment_manager.called_once)
				{
					obj_environment_manager.trans_start = true;
				}
				
				layer_background_alpha(_bg1_id, _new_alpha);
				layer_background_alpha(_bg2_id, _new_alpha);
				layer_background_alpha(_bg3_id, _new_alpha);
				layer_background_alpha(_bg4_id, _new_alpha);
				layer_background_alpha(_bg5_id, _new_alpha);
				layer_background_alpha(_bg6_id, _new_alpha);
				layer_background_alpha(_bg7_id, _new_alpha);
			}
			
			trans_start = !(trans_done and (layer_background_get_alpha(_bg1_id) == 1));
		}
		
		break;
}