/// @description Change the background according to current zone

switch (global.current_zone)
{
	case ZONE.ONE:
		// Default case, do nothing
		break;
		
	case ZONE.TWO:
		// TODO: add transition
		// TODO: change background to zone 2
		if (trans_start)
		{
			trans_start = false;
			trans_done = false;
		}
		trans_done = true;
		
		break;
	
	case ZONE.THREE:
		// TODO: add transition
		// TODO: change background to zone 3
		if (trans_start)
		{
			trans_start = false;
			trans_done = false;
		}
		trans_done = true;
		
		break;
	
	case ZONE.BOSS:
	
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

		
		if (trans_start)
		{
			trans_start = false;
			trans_done = false;
		}
		
		if (layer_background_get_alpha(_bg1_id) > 0 and !trans_done)
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
		
		if (layer_background_get_alpha(_bg1_id) == 0)
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
			
			if ((_new_alpha == 0.1) and !obj_environment_manager.called_once)
			{
				obj_environment_manager.trans_start = true;
				obj_environment_manager.called_once = true;
			}
				
			layer_background_alpha(_bg1_id, _new_alpha);
			layer_background_alpha(_bg2_id, _new_alpha);
			layer_background_alpha(_bg3_id, _new_alpha);
			layer_background_alpha(_bg4_id, _new_alpha);
			layer_background_alpha(_bg5_id, _new_alpha);
			layer_background_alpha(_bg6_id, _new_alpha);
			layer_background_alpha(_bg7_id, _new_alpha);
		}
			
		break;
}