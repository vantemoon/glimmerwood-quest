/// @description Move and destroy

if (!sound_playing)
{
	audio_play_sound(snd_dragon_flapping_wings, 200, true);
	sound_playing = true;
}

switch (curr_state)
{
	case MONSTER_STATE.NORMAL:
		prev_state = MONSTER_STATE.NORMAL;
		
		sprite_index = spr_dragon_flying;
		image_speed = 1;
		
		y += vsp;

		if (going_down)
		{
			vsp = abs(vsp);
			going_down = (y + vsp) < ymax;
		}
		else
		{
			vsp = -abs(vsp);
			going_down = (y + vsp) <= ymin;
		}
		
		break;
	
	case MONSTER_STATE.ATTACK:
		prev_state = MONSTER_STATE.ATTACK;
		if ((y + 2) < ymax - 45)
		{
			y += 2;
		}
		
		else {
			switch (attack_stage_index)
			{
				case 0: // 1.25 seconds
					tail_swing = false;
					
					if (!timer_on)
					{
						timer_on = true;
						alarm[0] = 1.25 * global.game_fps;
					}
				
					// Move toward the player
					x += -8.5;
				
					break;
			
				case 1: // 2.5 seconds
					if (!tail_swing)
					{
						audio_play_sound(snd_dragon_tail_swing, 1000, false);
						tail_swing = true;
					}
					
					if (!timer_on)
					{
						timer_on = true;
						alarm[1] = 2.5 * global.game_fps;
					}
				
					// Attack the player
					if (sprite_index != spr_dragon_tail_swing)
					{
						// Animation
						sprite_index = spr_dragon_tail_swing;
						image_index = 1;
						image_speed = 1;
		
						ds_list_clear(hit_list);
					}

					// Use attack hitbox and check for hits
					var _prev_mask = mask_index;
					mask_index = spr_dragon_tail_swing_hb;
					var _curr_hit_list = ds_list_create();
					var _hits = instance_place_list(x, y, obj_player, _curr_hit_list, true);
					if ((_hits > 0) and !hit_once)
					{
						if (obj_player.immune_frame <= 0 and !obj_player.shield_activated and obj_player.curr_hp > 0)
					 	{
					 		obj_player.curr_hp -= 1;
					 		hit_once = true;
					 	}
					}
					ds_list_destroy(_curr_hit_list);
					mask_index = _prev_mask;
				
					break;
			
				case 2: // 1.25 second
					if (!timer_on)
					{
						timer_on = true;
						alarm[2] = 1.25 * global.game_fps;
					}
				
					// Move back to the original position
					x += 8.5;
				
					break;
			}
		}
		
		break;
		
	case MONSTER_STATE.HIT:
		audio_play_sound(snd_dragon_taking_damage, 200, false);
		curr_state = prev_state;
		break;
	
	case MONSTER_STATE.DEAD:
		global.game_complete = true;
		audio_play_sound(snd_dragon_death, 200, false);
		instance_destroy();
		break;
}