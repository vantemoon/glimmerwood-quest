/// @description Move and destroy

hit_once = false;

switch (curr_state)
{
	case MONSTER_STATE.NORMAL:
		prev_state = MONSTER_STATE.NORMAL;
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
		if ((y + 2) < ymax)
		{
			y += 2;
		}
		
		else {
			switch (attack_stage_index)
			{
				case 0: // 2 seconds
					if (!timer_on)
					{
						timer_on = true;
						alarm[0] = 2 * global.game_fps;
					}
				
					// Move toward the player
					x += -8.625;
				
					break;
			
				case 1: // 2 seconds
					if (!timer_on)
					{
						timer_on = true;
						alarm[1] = 2 * global.game_fps;
					}
				
					// TODO: charge up the tail swing
				
					break;
			
				case 2: // 0.5 seconds
					if (!timer_on)
					{
						timer_on = true;
						alarm[2] = 0.5 * global.game_fps;
					}
				
					// Attack the player
					if (sprite_index != spr_dragon_tail_swing)
					{
						// Animation
						sprite_index = spr_dragon_tail_swing;
						image_speed = 2;
		
						ds_list_clear(hit_list);
					}

					// Use attack hitbox and check for hits
					var _prev_mask = mask_index;
					mask_index = spr_dragon_tail_swing;
					var _curr_hit_list = ds_list_create();
					var _hits = instance_place_list(x, y, obj_player, _curr_hit_list, true);
					if (_hits > 0)
					{
						for (var _hit = 0; _hit < _hits; _hit ++)
						{
							// If this instance has not yet been hit by the current slash
							var _hitid = ds_list_find_value(_curr_hit_list, _hit);
							if (ds_list_find_index(hit_list, _hitid) == -1)
							{
								ds_list_add(hit_list, _hitid);
								with (_hitid)
								{
									obj_player.curr_hp -= 1;
								}
							}
						}
					}
					ds_list_destroy(_curr_hit_list);
					mask_index = _prev_mask;
				
					break;
			
				case 3: // 1 second
					if (!timer_on)
					{
						timer_on = true;
						alarm[3] = 1 * global.game_fps;
					}
				
					sprite_index = spr_dragon_flying;
					image_speed = 1;
		
					break;
			
				case 4: // 2 seconds
					if (!timer_on)
					{
						timer_on = true;
						alarm[4] = 2 * global.game_fps;
					}
				
					// Move back to the original position
					x += 8.625;
				
					break;
			}
		}
		
		break;
		
	case MONSTER_STATE.HIT:
		// TODO: add visual feedback
		curr_state = prev_state;
		break;
	
	case MONSTER_STATE.DEAD:
		global.game_complete = true;
		// TODO: add death animation (if any)
		instance_destroy();
		break;
}