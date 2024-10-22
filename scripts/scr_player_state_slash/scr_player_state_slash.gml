/// @description player_state_slash() runs when player is in the slash state

function player_state_slash()
{
	// Start of attack
	slashing = true;
	if (sprite_index != spr_player_slashing)
	{
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
			show_debug_message("hit: " + string(_hitid));
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
	
	if (image_index > image_number - 1)
	{
		slashing = false;
		curr_state = prev_state;
	}
}