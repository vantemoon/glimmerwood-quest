/// @description Change the background according to current zone

switch (global.current_zone)
{
	case ZONE.ONE:
		// Default case, do nothing
		break;
		
	case ZONE.TWO:
		// TODO: add transition
		// TODO: change background to zone 2
		break;
	
	case ZONE.THREE:
		// TODO: add transition
		// TODO: change background to zone 3
		break;
	
	case ZONE.BOSS:
		// TODO: add transition
	
		var _layer1_id = layer_get_id("Backgrounds_1");
		var _bg1_id = layer_background_get_id(_layer1_id);
		if (layer_background_get_sprite(_bg1_id) != spr_background_b_1)
			layer_background_sprite(_bg1_id, spr_background_b_1);
		
		var _layer2_id = layer_get_id("Backgrounds_2");
		var _bg2_id = layer_background_get_id(_layer2_id);
		if (layer_background_get_sprite(_bg2_id) != spr_background_b_2)
			layer_background_sprite(_bg2_id, spr_background_b_2);
			
		var _layer3_id = layer_get_id("Backgrounds_3");
		var _bg3_id = layer_background_get_id(_layer3_id);
		if (layer_background_get_sprite(_bg3_id) != spr_background_b_3)
			layer_background_sprite(_bg3_id, spr_background_b_3);
			
		var _layer4_id = layer_get_id("Backgrounds_4");
		var _bg4_id = layer_background_get_id(_layer4_id);
		if (layer_background_get_sprite(_bg4_id) != spr_background_b_4)
			layer_background_sprite(_bg4_id, spr_background_b_4);
			
		var _layer5_id = layer_get_id("Backgrounds_5");
		var _bg5_id = layer_background_get_id(_layer5_id);
		if (layer_background_get_sprite(_bg5_id) != spr_background_b_5)
			layer_background_sprite(_bg5_id, spr_background_b_5);
			
		var _layer6_id = layer_get_id("Backgrounds_6");
		var _bg6_id = layer_background_get_id(_layer6_id);
		if (layer_background_get_sprite(_bg6_id) != spr_background_b_6)
			layer_background_sprite(_bg6_id, spr_background_b_6);
			
		var _layer7_id = layer_get_id("Backgrounds_7");
		var _bg7_id = layer_background_get_id(_layer7_id);
		if (layer_background_get_sprite(_bg7_id) != spr_background_b_7)
			layer_background_sprite(_bg7_id, spr_background_b_7);
			
		break;
}