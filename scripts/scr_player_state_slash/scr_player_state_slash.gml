/// @description player_state_slash() runs when player is in the slash state

function player_state_slash()
{
	// Start of attack
	slashing = true;
	if (sprite_index != spr_player_slashing)
	{
		audio_play_sound(snd_player_attacking, 400, false);
		
		// Animation
		sprite_index = spr_player_slashing;
		image_speed = 2;
		
		ds_list_clear(hit_list);
	}

	// Use attack hitbox and check for hits
	var _prev_mask = mask_index;
	mask_index = spr_player_slashing_hb;
	var _curr_hit_list = ds_list_create();
	var _hits = instance_place_list(x, y, obj_monster, _curr_hit_list, true);
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
					monster_hit(1);
				}
			}
		}
	}
	ds_list_destroy(_curr_hit_list);
	mask_index = _prev_mask;
	
	// End of attack
	if (image_index > image_number - 1)
	{
		slashing = false;
		if (prev_state == PLAYER_STATE.SLIDE)
		{
			if (slide_key)
			{
				curr_state = prev_state;
			}
			else
			{
				curr_state = PLAYER_STATE.NORMAL;
			}
		}
		else if (prev_state == PLAYER_STATE.FALL)
		{
			if (place_meeting(x, y + 1, obj_tile))
			{
				curr_state = PLAYER_STATE.NORMAL;
			}
			else
			{
				curr_state = prev_state;
			}
		}
		else
		{
			curr_state = prev_state;
		}
	}
}