/// @description Change the tiles according to current zone

switch (global.current_zone)
{
	case ZONE.ONE:
		obj_ground_tile.sprite_index = spr_ground_tile_1;
		object_set_sprite(obj_platform, spr_platform_1);
		object_set_sprite(obj_platform_left, spr_platform_left_1);
		object_set_sprite(obj_platform_middle, spr_platform_middle_1);
		object_set_sprite(obj_platform_right, spr_platform_right_1);
		object_set_sprite(obj_stump, spr_stump_1);
		
		break;
		
	case ZONE.TWO:
		// TODO: add transition
		// TODO: change tiles to zone 2
		break;
	
	case ZONE.THREE:
		// TODO: add transition
		// TODO: change tiles to zone 3
		break;
	
	case ZONE.BOSS:
		// TODO: add transition
		
		obj_ground_tile.sprite_index = spr_ground_tile_b;
		object_set_sprite(obj_platform, spr_platform_b);
		object_set_sprite(obj_platform_left, spr_platform_left_b);
		object_set_sprite(obj_platform_middle, spr_platform_middle_b);
		object_set_sprite(obj_platform_right, spr_platform_right_b);
		object_set_sprite(obj_stump, spr_stump_b);
			
		break;
}