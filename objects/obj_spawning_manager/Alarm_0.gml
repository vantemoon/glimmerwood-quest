/// @description Spawning obstacles trigger

randomize();

var _ypos = global.ground_level- 80;
var _gap = 128;
var _xpos1 = room_width;
var _xpos2 = room_width + _gap;
var _xpos3 = room_width + 2 * _gap;

var _interval = game_get_speed(gamespeed_fps);

switch (global.current_zone)
{
	case ZONE.ONE:
		switch (choose(0, 0, 0, 1, 2, 2, 2, 3, 4, 4)) {
	
			case 0: // Three flowers on the ground
				instance_create_layer(_xpos1, _ypos - 30, "Instances", obj_magical_flower_blue);
				instance_create_layer(_xpos2, _ypos - 30, "Instances", obj_magical_flower_purple);
				instance_create_layer(_xpos3, _ypos - 30, "Instances", obj_magical_flower_pink);
				alarm[0] = irandom_range(_interval, _interval * 2);
				break;
		
			case 1: // One spike on platform
				instance_create_layer(_xpos2, _ypos - 300, "Instances", obj_spikes);
				instance_create_layer(_xpos2, _ypos - 300, "Instances", obj_platform);
				//instance_create_layer(_xpos1, _ypos - 380, "Instances", obj_magical_flower_blue);
				//instance_create_layer(_xpos2, _ypos - 380, "Instances", obj_magical_flower_purple);
				//instance_create_layer(_xpos3, _ypos - 380, "Instances", obj_magical_flower_pink);
				alarm[0] = irandom_range(_interval, _interval * 2);
				break;
		
			case 2: // Three flowers on a platform
				instance_create_layer(_xpos2, _ypos - 300, "Instances", obj_platform);
				instance_create_layer(_xpos1, _ypos - 380, "Instances", obj_magical_flower_blue);
				instance_create_layer(_xpos2, _ypos - 380, "Instances", obj_magical_flower_purple);
				instance_create_layer(_xpos3, _ypos - 380, "Instances", obj_magical_flower_pink);
				alarm[0] = irandom_range(_interval, _interval * 2);
				break;
		
			case 3:
				instance_create_layer(room_width + 520, _ypos, "Instances", choose(obj_small_obstacle, obj_large_obstacle, obj_large_obstacle));
				instance_create_layer(room_width + 584, _ypos, "Instances", choose(obj_small_obstacle, obj_large_obstacle));
				instance_create_layer(room_width + 648, _ypos, "Instances", choose(obj_small_obstacle, obj_small_obstacle, obj_large_obstacle));
				alarm[0] = irandom_range(_interval, _interval * 2);
				break;
		
			case 4: // Generating bats
				instance_create_layer(room_width + 520, irandom_range(400, 600), "Instances", obj_bat);
				alarm[0] = irandom_range(_interval, _interval * 2);
				break;

}
}