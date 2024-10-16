/// @description Spawning obstacles trigger

randomize();

var _ypos = global.ground_level - 80;

switch (choose(0, 0, 1, 2, 2, 3, 4, 4, 4)) {
	
	case 0: // Generating magical flowers on the ground
		instance_create_layer(room_width + 520, _ypos, "Instances", obj_magical_flower_blue);
		instance_create_layer(room_width + 584, _ypos, "Instances", obj_magical_flower_purple);
		instance_create_layer(room_width + 648, _ypos, "Instances", obj_magical_flower_pink);
		alarm[0] = irandom_range(game_get_speed(gamespeed_fps) * 1, game_get_speed(gamespeed_fps) * 2);
		break;
		
	case 1:
		instance_create_layer(room_width + 520, _ypos, "Instances", choose(obj_small_obstacle, obj_small_obstacle, obj_large_obstacle));
		instance_create_layer(room_width + 584, _ypos, "Instances", choose(obj_small_obstacle, obj_large_obstacle));
		instance_create_layer(room_width + 648, _ypos, "Instances", choose(obj_small_obstacle, obj_small_obstacle, obj_large_obstacle));
		alarm[0] = irandom_range(game_get_speed(gamespeed_fps), game_get_speed(gamespeed_fps) * 1.5);
		break;
		
	case 2:
		instance_create_layer(room_width + 520, _ypos, "Instances", choose(obj_small_obstacle, obj_large_obstacle));
		instance_create_layer(room_width + 584, _ypos, "Instances", choose(obj_small_obstacle, obj_small_obstacle, obj_large_obstacle));
		alarm[0] = irandom_range(game_get_speed(gamespeed_fps), game_get_speed(gamespeed_fps) * 2);
		break;
		
	case 3:
		instance_create_layer(room_width + 520, _ypos, "Instances", choose(obj_small_obstacle, obj_large_obstacle, obj_large_obstacle));
		instance_create_layer(room_width + 584, _ypos, "Instances", choose(obj_small_obstacle, obj_large_obstacle));
		instance_create_layer(room_width + 648, _ypos, "Instances", choose(obj_small_obstacle, obj_small_obstacle, obj_large_obstacle));
		alarm[0] = irandom_range(game_get_speed(gamespeed_fps), game_get_speed(gamespeed_fps) * 2.5);
		break;
		
	case 4: // Generating bats
		instance_create_layer(room_width + 520, irandom_range(400, 600), "Instances", obj_bat);
		alarm[0] = irandom_range(game_get_speed(gamespeed_fps) * 1.5, game_get_speed(gamespeed_fps) * 2);
		break;

}