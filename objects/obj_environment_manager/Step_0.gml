/// @description Change the tiles according to current zone

if (global.current_zone == ZONE.ONE)
{
	obj_ground_tile.sprite_index = spr_ground_tile_1;
	object_set_sprite(obj_platform, spr_platform_1);
	object_set_sprite(obj_platform_left, spr_platform_left_1);
	object_set_sprite(obj_platform_middle, spr_platform_middle_1);
	object_set_sprite(obj_platform_right, spr_platform_right_1);
	object_set_sprite(obj_stump, spr_stump_1);
	object_set_sprite(obj_bark_large, spr_bark_large_1);
	object_set_sprite(obj_bark_small, spr_bark_small_1);
}

else if (trans_start and !called_once)
{
	trans_start = false;
	called_once = true;
	
	switch (global.current_zone)
	{
		case ZONE.ONE:
			obj_ground_tile.sprite_index = spr_ground_tile_1;
			object_set_sprite(obj_platform, spr_platform_1);
			object_set_sprite(obj_platform_left, spr_platform_left_1);
			object_set_sprite(obj_platform_middle, spr_platform_middle_1);
			object_set_sprite(obj_platform_right, spr_platform_right_1);
			object_set_sprite(obj_stump, spr_stump_1);
			object_set_sprite(obj_bark_large, spr_bark_large_1);
			object_set_sprite(obj_bark_small, spr_bark_small_1);
		
			break;
		
		case ZONE.TWO:
			obj_ground_tile.sprite_index = spr_ground_tile_2;
			object_set_sprite(obj_platform, spr_platform_2);
			object_set_sprite(obj_platform_left, spr_platform_left_2);
			object_set_sprite(obj_platform_middle, spr_platform_middle_2);
			object_set_sprite(obj_platform_right, spr_platform_right_2);
			object_set_sprite(obj_stump, spr_stump_2);
			object_set_sprite(obj_bark_large, spr_bark_large_2);
			object_set_sprite(obj_bark_small, spr_bark_small_2);
			break;
	
		case ZONE.THREE:
			obj_ground_tile.sprite_index = spr_ground_tile_3;
			object_set_sprite(obj_platform, spr_platform_3);
			object_set_sprite(obj_platform_left, spr_platform_left_3);
			object_set_sprite(obj_platform_middle, spr_platform_middle_3);
			object_set_sprite(obj_platform_right, spr_platform_right_3);
			object_set_sprite(obj_stump, spr_stump_3);
			object_set_sprite(obj_bark_large, spr_bark_large_3);
			object_set_sprite(obj_bark_small, spr_bark_small_3);
			break;
	
		case ZONE.BOSS:
		
			if (!global.game_complete)
			{
				obj_ground_tile.sprite_index = spr_ground_tile_b;
				object_set_sprite(obj_platform, spr_platform_b);
				object_set_sprite(obj_platform_left, spr_platform_left_b);
				object_set_sprite(obj_platform_middle, spr_platform_middle_b);
				object_set_sprite(obj_platform_right, spr_platform_right_b);
				object_set_sprite(obj_stump, spr_stump_b);
				object_set_sprite(obj_bark_large, spr_bark_large_b);
				object_set_sprite(obj_bark_small, spr_bark_small_b);
			}
			else
			{
				obj_ground_tile.sprite_index = spr_ground_tile_pb;
			}
			
			break;
	}
}