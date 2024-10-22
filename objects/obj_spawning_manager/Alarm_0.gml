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
		switch (choose(0, 1, 2, 3, 4, 5, 6)) 
		{
	
			case 0: // Three flowers on the ground
				instance_create_layer(_xpos1, _ypos - 30, "Instances", obj_magical_flower_blue);
				instance_create_layer(_xpos2, _ypos - 30, "Instances", obj_magical_flower_purple);
				instance_create_layer(_xpos3, _ypos - 30, "Instances", obj_magical_flower_pink);
				alarm[0] = irandom_range(_interval, _interval * 2);
				break;
		
			case 1: // One spike on platform
				instance_create_layer(_xpos2, _ypos - 300, "Instances", obj_spikes);
				instance_create_layer(_xpos2, _ypos - 300, "Instances", obj_platform);
				alarm[0] = irandom_range(_interval, _interval * 2);
				break;
		
			case 2: // Three flowers on a platform
				instance_create_layer(_xpos2, _ypos - 300, "Instances", obj_platform);
				instance_create_layer(_xpos1, _ypos - 380, "Instances", obj_magical_flower_blue);
				instance_create_layer(_xpos2, _ypos - 380, "Instances", obj_magical_flower_purple);
				instance_create_layer(_xpos3, _ypos - 380, "Instances", obj_magical_flower_pink);
				alarm[0] = irandom_range(_interval * 2, _interval * 3);
				break;
		
			case 3: // Three flowers below a platform with spike
				instance_create_layer(_xpos2, _ypos - 320, "Instances", obj_platform);
				instance_create_layer(_xpos2, _ypos - 210, "Instances", obj_spikes_down);
				instance_create_layer(_xpos1, _ypos - 30, "Instances", obj_magical_flower_blue);
				instance_create_layer(_xpos2, _ypos - 30, "Instances", obj_magical_flower_purple);
				instance_create_layer(_xpos3, _ypos - 30, "Instances", obj_magical_flower_pink);
				alarm[0] = irandom_range(_interval, _interval * 2);
				break;
				
			case 4: // One flower on a tall wall
				instance_create_layer(_xpos1, _ypos, "Instances", obj_large_obstacle);
				instance_create_layer(_xpos1, _ypos - 380, "Instances", choose(obj_magical_flower_blue, obj_magical_flower_purple, obj_magical_flower_pink));
				alarm[0] = irandom_range(_interval, _interval * 2);
				break;
		
			case 5: // Generating bats
				instance_create_layer(_xpos1, irandom_range(400, 800), "Instances", obj_bat);
				alarm[0] = irandom_range(_interval, _interval * 2);
				break;
			
			case 6: // Generating slimes
				instance_create_layer(_xpos1, _ypos - 35, "Instances", obj_slime);
				alarm[0] = irandom_range(_interval, _interval * 2);
				break;
		}
}