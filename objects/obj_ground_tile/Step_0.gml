/// @description Generate new ground tiles

if (moving)
	x += global.ground_speed * global.speed_modifier - 5;

move_wrap(true, false, sprite_get_width(spr_ground_tile_1));