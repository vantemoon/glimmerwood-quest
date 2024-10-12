/// @description Obstacle Spawner
var _y_pos = global.ground_level - 80;

switch (choose(0, 0, 1, 2, 2, 3, 4, 4, 4)) {
	
	case 0:
		instance_create_layer(room_width + 520, _y_pos, "Instances", choose(obj_small_obstacle, obj_large_obstacle));
		alarm[0] = irandom_range(game_get_speed(gamespeed_fps) * 2, game_get_speed(gamespeed_fps) * 4);
		break;
		
	case 1:
		instance_create_layer(room_width + 520, _y_pos, "Instances", choose(obj_small_obstacle, obj_small_obstacle, obj_large_obstacle));
		instance_create_layer(room_width + 780, _y_pos, "Instances", choose(obj_small_obstacle, obj_large_obstacle));
		instance_create_layer(room_width + 1040, _y_pos, "Instances", choose(obj_small_obstacle, obj_small_obstacle, obj_large_obstacle));
		alarm[0] = irandom_range(game_get_speed(gamespeed_fps), game_get_speed(gamespeed_fps) * 3);
		break;
		
	case 2:
		instance_create_layer(room_width + 520, _y_pos, "Instances", choose(obj_small_obstacle, obj_large_obstacle));
		instance_create_layer(room_width + 584, _y_pos, "Instances", choose(obj_small_obstacle, obj_small_obstacle, obj_large_obstacle));
		alarm[0] = irandom_range(game_get_speed(gamespeed_fps), game_get_speed(gamespeed_fps) * 4);
		break;
		
	case 3:
		instance_create_layer(room_width + 520, _y_pos, "Instances", choose(obj_small_obstacle, obj_large_obstacle, obj_large_obstacle));
		instance_create_layer(room_width + 584, _y_pos, "Instances", choose(obj_small_obstacle, obj_large_obstacle));
		instance_create_layer(room_width + 648, _y_pos, "Instances", choose(obj_small_obstacle, obj_small_obstacle, obj_large_obstacle));
		alarm[0] = irandom_range(game_get_speed(gamespeed_fps), game_get_speed(gamespeed_fps) * 5);
		break;
		
	case 4:
		instance_create_layer(room_width + 520, irandom_range(400, 600), "Instances", obj_flying_obstacle);
		alarm[0] = irandom_range(game_get_speed(gamespeed_fps) * 3, game_get_speed(gamespeed_fps) * 4);
		break;

}