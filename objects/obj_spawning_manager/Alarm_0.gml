/// @description Spawning obstacles trigger

randomize();

var _ypos = global.ground_level- 80;
var _gap = 128;
var _xpos1 = room_width;
var _xpos2 = room_width + _gap;
var _xpos3 = room_width + _gap * 2;

switch (global.current_zone)
{
	case ZONE.ONE:
		switch (choose(0, 1, 2, 3, 4, 5, 6)) 
		{
	
			case 0: // Three flowers on the ground
				instance_create_layer(_xpos1, _ypos - 30, "Instances", obj_magical_flower_blue);
				instance_create_layer(_xpos2, _ypos - 30, "Instances", obj_magical_flower_purple);
				instance_create_layer(_xpos3, _ypos - 30, "Instances", obj_magical_flower_pink);
				alarm[0] = irandom_range(global.game_fps, global.game_fps * 2);
				break;
		
			case 1: // One spike on the ground
				instance_create_layer(_xpos2, _ypos, "Instances", obj_spikes);
				alarm[0] = irandom_range(global.game_fps * 2, global.game_fps * 3);
				break;
		
			case 2: // Three flowers on a platform
				instance_create_layer(_xpos2, _ypos - 320, "Instances", obj_platform);
				instance_create_layer(_xpos1, _ypos - 380, "Instances", obj_magical_flower_blue);
				instance_create_layer(_xpos2, _ypos - 380, "Instances", obj_magical_flower_purple);
				instance_create_layer(_xpos3, _ypos - 380, "Instances", obj_magical_flower_pink);
				alarm[0] = irandom_range(global.game_fps * 2, global.game_fps * 3);
				break;
		
			case 3: // Three flowers below a platform with spike
				instance_create_layer(_xpos2, _ypos - 320, "Instances", obj_platform);
				instance_create_layer(_xpos2, _ypos - 210, "Instances", obj_spikes_down);
				instance_create_layer(_xpos1, _ypos - 30, "Instances", obj_magical_flower_blue);
				instance_create_layer(_xpos2, _ypos - 30, "Instances", obj_magical_flower_purple);
				instance_create_layer(_xpos3, _ypos - 30, "Instances", obj_magical_flower_pink);
				alarm[0] = irandom_range(global.game_fps, global.game_fps * 2);
				break;
				
			case 4: // One flower on a tall wall
				instance_create_layer(_xpos1, _ypos, "Instances", obj_large_obstacle);
				instance_create_layer(_xpos1, _ypos - 380, "Instances", choose(obj_magical_flower_blue, obj_magical_flower_purple, obj_magical_flower_pink));
				alarm[0] = irandom_range(global.game_fps * 2, global.game_fps * 3);
				break;
		
			case 5: // Generating bats
				instance_create_layer(_xpos1, irandom_range(450, 800), "Instances", obj_bat);
				alarm[0] = irandom_range(global.game_fps, global.game_fps * 2);
				break;
			
			case 6: // Generating slimes
				instance_create_layer(_xpos1, _ypos - 30, "Instances", obj_slime);
				alarm[0] = irandom_range(global.game_fps, global.game_fps * 2);
				break;
		}
		break;
	
	case ZONE.TWO:
		switch (choose(0, 1, 2, 3, 4, 5, 5, 6, 6, 7, 8, 8, 8, 9, 9, 9)) 
		{
	
			case 0: // Three flowers on the ground
				instance_create_layer(_xpos1, _ypos - 30, "Instances", obj_magical_flower_blue);
				instance_create_layer(_xpos2, _ypos - 30, "Instances", obj_magical_flower_purple);
				instance_create_layer(_xpos3, _ypos - 30, "Instances", obj_magical_flower_pink);
				alarm[0] = irandom_range(global.game_fps * 0.9, global.game_fps * 1.8);
				break;
		
			case 1: // One spike on the ground
				instance_create_layer(_xpos2, _ypos, "Instances", obj_spikes);
				alarm[0] = irandom_range(global.game_fps * 1.8, global.game_fps * 2.7);
				break;
		
			case 2: // Three flowers on a platform
				instance_create_layer(_xpos2, _ypos - 320, "Instances", obj_platform);
				instance_create_layer(_xpos1, _ypos - 380, "Instances", obj_magical_flower_blue);
				instance_create_layer(_xpos2, _ypos - 380, "Instances", obj_magical_flower_purple);
				instance_create_layer(_xpos3, _ypos - 380, "Instances", obj_magical_flower_pink);
				alarm[0] = irandom_range(global.game_fps * 1.8, global.game_fps * 2.7);
				break;
		
			case 3: // Three flowers below a platform with spike
				instance_create_layer(_xpos2, _ypos - 320, "Instances", obj_platform);
				instance_create_layer(_xpos2, _ypos - 210, "Instances", obj_spikes_down);
				instance_create_layer(_xpos1, _ypos - 30, "Instances", obj_magical_flower_blue);
				instance_create_layer(_xpos2, _ypos - 30, "Instances", obj_magical_flower_purple);
				instance_create_layer(_xpos3, _ypos - 30, "Instances", obj_magical_flower_pink);
				alarm[0] = irandom_range(global.game_fps * 0.9, global.game_fps * 1.8);
				break;
				
			case 4: // One flower on a tall wall
				instance_create_layer(_xpos1, _ypos, "Instances", obj_large_obstacle);
				instance_create_layer(_xpos1, _ypos - 380, "Instances", choose(obj_magical_flower_blue, obj_magical_flower_purple, obj_magical_flower_pink));
				alarm[0] = irandom_range(global.game_fps * 1.8, global.game_fps * 2.7);
				break;
		
			case 5: // One platform with alternating spikes and flowers
				instance_create_layer(_xpos2, _ypos - 320, "Instances", obj_platform_large_left);
				instance_create_layer(_xpos2, _ypos - 210, "Instances", obj_spikes_down);
				instance_create_layer(_xpos1, _ypos - 30, "Instances", obj_magical_flower_blue);
				instance_create_layer(_xpos2, _ypos - 30, "Instances", obj_magical_flower_purple);
				instance_create_layer(_xpos3, _ypos - 30, "Instances", obj_magical_flower_pink);
				instance_create_layer(_xpos2 + 390, _ypos - 320, "Instances", obj_platform_large_middle);
				instance_create_layer(_xpos1 + 390, _ypos - 100, "Instances", obj_magical_flower_blue);
				instance_create_layer(_xpos2 + 390, _ypos - 100, "Instances", obj_magical_flower_purple);
				instance_create_layer(_xpos3 + 390, _ypos - 100, "Instances", obj_magical_flower_pink);
				instance_create_layer(_xpos2 + 390 * 2, _ypos - 320, "Instances", obj_platform_large_middle);
				instance_create_layer(_xpos2 + 390 * 2, _ypos - 210, "Instances", obj_spikes_down);
				instance_create_layer(_xpos1 + 390 * 2, _ypos - 30, "Instances", obj_magical_flower_blue);
				instance_create_layer(_xpos2 + 390 * 2, _ypos - 30, "Instances", obj_magical_flower_purple);
				instance_create_layer(_xpos3 + 390 * 2, _ypos - 30, "Instances", obj_magical_flower_pink);
				instance_create_layer(_xpos2 + 390 * 3, _ypos - 320, "Instances", obj_platform_large_right);
				instance_create_layer(_xpos1 + 390 * 3, _ypos - 100, "Instances", obj_magical_flower_blue);
				instance_create_layer(_xpos2 + 390 * 3, _ypos - 100, "Instances", obj_magical_flower_purple);
				instance_create_layer(_xpos3 + 390 * 3, _ypos - 100, "Instances", obj_magical_flower_pink);
				instance_create_layer(_xpos2 + 390 * 4, _ypos -30, "Instances", obj_slime);
				alarm[0] = irandom_range(global.game_fps * 2.7, global.game_fps * 3.6);
				break;
		
			case 6: // Generating bats
				instance_create_layer(_xpos1, irandom_range(400, 800), "Instances", obj_bat);
				alarm[0] = irandom_range(global.game_fps * 0.9, global.game_fps * 1.8);
				break;
			
			case 7: // Generating slimes
				instance_create_layer(_xpos1, _ypos - 30, "Instances", obj_slime);
				alarm[0] = irandom_range(global.game_fps * 0.9, global.game_fps * 1.8);
				break;
			
			case 8: // A tall wall followed by spikes on a platform
				instance_create_layer(_xpos1, _ypos, "Instances", obj_large_obstacle);
				instance_create_layer(_xpos2 + 400, _ypos - 320, "Instances", obj_platform);
				instance_create_layer(_xpos2 + 400, _ypos - 320, "Instances", obj_spikes);
				instance_create_layer(_xpos1 + 400, _ypos - 30, "Instances", obj_magical_flower_blue);
				instance_create_layer(_xpos2 + 400, _ypos - 30, "Instances", obj_magical_flower_purple);
				instance_create_layer(_xpos3 + 400, _ypos - 30, "Instances", obj_magical_flower_pink);
				alarm[0] = irandom_range(global.game_fps * 1.8, global.game_fps * 2.7);
				break;
				
			case 9: // Two platforms with spikers and flowers
				instance_create_layer(_xpos2, _ypos - 320, "Instances", obj_platform_large_left);
				instance_create_layer(_xpos1, _ypos - 380, "Instances", obj_magical_flower_blue);
				instance_create_layer(_xpos2, _ypos - 380, "Instances", obj_magical_flower_purple);
				instance_create_layer(_xpos3, _ypos - 380, "Instances", obj_magical_flower_pink);
				instance_create_layer(_xpos2 + 390, _ypos - 320, "Instances", obj_platform_large_right);
				instance_create_layer(_xpos2 + 390, _ypos - 210, "Instances", obj_spikes_down);
				instance_create_layer(_xpos1 + 390, _ypos - 30, "Instances", obj_magical_flower_blue);
				instance_create_layer(_xpos2 + 390, _ypos - 30, "Instances", obj_magical_flower_purple);
				instance_create_layer(_xpos3 + 390, _ypos - 30, "Instances", obj_magical_flower_pink);
				instance_create_layer(_xpos2 + 390, _ypos - 410, "Instances", obj_bat);
				alarm[0] = irandom_range(global.game_fps * 2.25, global.game_fps * 3.15);
				break;
		}
		break;
		
	case ZONE.THREE:
		switch (choose(0, 1, 2, 3, 4, 5, 6, 6, 7, 8, 9, 10, 10, 10, 11, 11, 11))  
		{
	
			case 0: // Three flowers on the ground
				instance_create_layer(_xpos1, _ypos - 30, "Instances", obj_magical_flower_blue);
				instance_create_layer(_xpos2, _ypos - 30, "Instances", obj_magical_flower_purple);
				instance_create_layer(_xpos3, _ypos - 30, "Instances", obj_magical_flower_pink);
				alarm[0] = irandom_range(global.game_fps * 0.8, global.game_fps * 1.6);
				break;
		
			case 1: // One spike on the ground
				// instance_create_layer(_xpos2, _ypos - 320, "Instances", obj_spikes);
				// instance_create_layer(_xpos2, _ypos - 320, "Instances", obj_platform);
				instance_create_layer(_xpos2, _ypos, "Instances", obj_spikes);
				alarm[0] = irandom_range(global.game_fps * 1.6, global.game_fps * 2.4);
				break;
		
			case 2: // Three flowers on a platform
				instance_create_layer(_xpos2, _ypos - 300, "Instances", obj_platform);
				instance_create_layer(_xpos1, _ypos - 380, "Instances", obj_magical_flower_blue);
				instance_create_layer(_xpos2, _ypos - 380, "Instances", obj_magical_flower_purple);
				instance_create_layer(_xpos3, _ypos - 380, "Instances", obj_magical_flower_pink);
				alarm[0] = irandom_range(global.game_fps * 1.6, global.game_fps * 2.4);
				break;
		
			case 3: // Three flowers below a platform with spike
				instance_create_layer(_xpos2, _ypos - 320, "Instances", obj_platform);
				instance_create_layer(_xpos2, _ypos - 210, "Instances", obj_spikes_down);
				instance_create_layer(_xpos1, _ypos - 30, "Instances", obj_magical_flower_blue);
				instance_create_layer(_xpos2, _ypos - 30, "Instances", obj_magical_flower_purple);
				instance_create_layer(_xpos3, _ypos - 30, "Instances", obj_magical_flower_pink);
				alarm[0] = irandom_range(global.game_fps * 0.8, global.game_fps * 1.6);
				break;
				
			case 4: // One flower on a tall wall
				instance_create_layer(_xpos1, _ypos, "Instances", obj_large_obstacle);
				instance_create_layer(_xpos1, _ypos - 380, "Instances", choose(obj_magical_flower_blue, obj_magical_flower_purple, obj_magical_flower_pink));
				alarm[0] = irandom_range(global.game_fps * 0.8, global.game_fps * 1.6);
				break;
		
			case 5: // One platform with alternating spikes and flowers
				instance_create_layer(_xpos2, _ypos - 320, "Instances", obj_platform_large_left);
				instance_create_layer(_xpos2, _ypos - 210, "Instances", obj_spikes_down);
				instance_create_layer(_xpos1, _ypos - 30, "Instances", obj_magical_flower_blue);
				instance_create_layer(_xpos2, _ypos - 30, "Instances", obj_magical_flower_purple);
				instance_create_layer(_xpos3, _ypos - 30, "Instances", obj_magical_flower_pink);
				instance_create_layer(_xpos2 + 390, _ypos - 320, "Instances", obj_platform_large_middle);
				instance_create_layer(_xpos1 + 390, _ypos - 100, "Instances", obj_magical_flower_blue);
				instance_create_layer(_xpos2 + 390, _ypos - 100, "Instances", obj_magical_flower_purple);
				instance_create_layer(_xpos3 + 390, _ypos - 100, "Instances", obj_magical_flower_pink);
				instance_create_layer(_xpos2 + 390 * 2, _ypos - 320, "Instances", obj_platform_large_middle);
				instance_create_layer(_xpos2 + 390 * 2, _ypos - 210, "Instances", obj_spikes_down);
				instance_create_layer(_xpos1 + 390 * 2, _ypos - 30, "Instances", obj_magical_flower_blue);
				instance_create_layer(_xpos2 + 390 * 2, _ypos - 30, "Instances", obj_magical_flower_purple);
				instance_create_layer(_xpos3 + 390 * 2, _ypos - 30, "Instances", obj_magical_flower_pink);
				instance_create_layer(_xpos2 + 390 * 3, _ypos - 320, "Instances", obj_platform_large_right);
				instance_create_layer(_xpos1 + 390 * 3, _ypos - 100, "Instances", obj_magical_flower_blue);
				instance_create_layer(_xpos2 + 390 * 3, _ypos - 100, "Instances", obj_magical_flower_purple);
				instance_create_layer(_xpos3 + 390 * 3, _ypos - 100, "Instances", obj_magical_flower_pink);
				instance_create_layer(_xpos2 + 390 * 4, _ypos -30, "Instances", obj_slime);
				alarm[0] = irandom_range(global.game_fps * 2.4, global.game_fps * 3.2);
				break;
		
			case 6: // Generating bats
				instance_create_layer(_xpos1, irandom_range(400, 800), "Instances", obj_bat);
				alarm[0] = irandom_range(global.game_fps * 0.8, global.game_fps * 1.6);
				break;
			
			case 7: // Generating slimes
				instance_create_layer(_xpos1, _ypos - 30, "Instances", obj_slime);
				alarm[0] = irandom_range(global.game_fps * 0.8, global.game_fps * 1.6);
				break;
				
			case 8: // A tall wall followed by spikes on a platform
				instance_create_layer(_xpos1, _ypos, "Instances", obj_large_obstacle);
				instance_create_layer(_xpos2 + 450, _ypos - 320, "Instances", obj_platform);
				instance_create_layer(_xpos2 + 450, _ypos - 320, "Instances", obj_spikes);
				instance_create_layer(_xpos1 + 450, _ypos - 30, "Instances", obj_magical_flower_blue);
				instance_create_layer(_xpos2 + 450, _ypos - 30, "Instances", obj_magical_flower_purple);
				instance_create_layer(_xpos3 + 450, _ypos - 30, "Instances", obj_magical_flower_pink);
				alarm[0] = irandom_range(global.game_fps * 1.6, global.game_fps * 2.4);
				break;
				
			case 9: // Two platforms with spikers and flowers
				instance_create_layer(_xpos2, _ypos - 320, "Instances", obj_platform_large_left);
				instance_create_layer(_xpos1, _ypos - 380, "Instances", obj_magical_flower_blue);
				instance_create_layer(_xpos2, _ypos - 380, "Instances", obj_magical_flower_purple);
				instance_create_layer(_xpos3, _ypos - 380, "Instances", obj_magical_flower_pink);
				instance_create_layer(_xpos2 + 390, _ypos - 320, "Instances", obj_platform_large_right);
				instance_create_layer(_xpos2 + 390, _ypos - 210, "Instances", obj_spikes_down);
				instance_create_layer(_xpos1 + 390, _ypos - 30, "Instances", obj_magical_flower_blue);
				instance_create_layer(_xpos2 + 390, _ypos - 30, "Instances", obj_magical_flower_purple);
				instance_create_layer(_xpos3 + 390, _ypos - 30, "Instances", obj_magical_flower_pink);
				instance_create_layer(_xpos2 + 390, _ypos - 410, "Instances", obj_bat);
				alarm[0] = irandom_range(global.game_fps * 2, global.game_fps * 2.8);
				break;
			
			case 10: // One platforms and a wall with flowers 
				instance_create_layer(_xpos2, _ypos - 320, "Instances", obj_platform);
				instance_create_layer(_xpos1, _ypos - 380, "Instances", obj_magical_flower_blue);
				instance_create_layer(_xpos2, _ypos - 380, "Instances", obj_magical_flower_purple);
				instance_create_layer(_xpos3, _ypos - 380, "Instances", obj_magical_flower_pink);
				instance_create_layer(_xpos2 + 650, 0, "Instances", obj_large_obstacle_down);
				instance_create_layer(_xpos1 + 650, _ypos - 30, "Instances", obj_magical_flower_blue);
				instance_create_layer(_xpos2 + 650, _ypos - 30, "Instances", obj_magical_flower_purple);
				instance_create_layer(_xpos3 + 650, _ypos - 30, "Instances", obj_magical_flower_pink);
				alarm[0] = irandom_range(global.game_fps * 2, global.game_fps * 2.8);
				break;
				
			case 11: // Spikes on the gound and a wall followed by spikes under platform\
				instance_create_layer(_xpos2, _ypos, "Instances", obj_spikes);
				instance_create_layer(_xpos2, _ypos - 380, "Instances", choose(obj_magical_flower_blue, obj_magical_flower_pink, obj_magical_flower_purple));
				instance_create_layer(_xpos2 + 650, 0, "Instances", obj_large_obstacle_down);
				instance_create_layer(_xpos1 + 650, _ypos - 30, "Instances", obj_magical_flower_blue);
				instance_create_layer(_xpos2 + 650, _ypos - 30, "Instances", obj_magical_flower_pink);
				instance_create_layer(_xpos3 + 650, _ypos - 30, "Instances", obj_magical_flower_purple);
				instance_create_layer(_xpos2 + 1800, _ypos - 320, "Instances", obj_platform);
				instance_create_layer(_xpos1 + 1800, _ypos - 380, "Instances", obj_magical_flower_blue);
				instance_create_layer(_xpos2 + 1800, _ypos - 380, "Instances", obj_magical_flower_pink);
				instance_create_layer(_xpos3 + 1800, _ypos - 380, "Instances", obj_magical_flower_purple);
				instance_create_layer(_xpos2 + 1800, _ypos, "Instances", obj_spikes);
				alarm[0] = irandom_range(global.game_fps * 2.4, global.game_fps * 3.2);
				break;
		}
		break;
	
	case ZONE.BOSS:
		slide_transition(TRANS_MODE.GOTO, rm_boss);
}