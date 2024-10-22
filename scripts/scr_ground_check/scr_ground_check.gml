/// @description ground_check() checks if the player touches the ground

function ground_check_n()
{
	if (slide_key) 
	{
		//ducking = true;
		//jumping = false;
		//falling = true;
		//slashing = false;
		if (!place_meeting(x, y + 1, obj_tile))
		{
			// Player is not touching the ground
			show_debug_message("fall triggered");
			obj_player.curr_state = PLAYER_STATE.FALL;
		}
		else 
		{
			// Player is touching the ground
			show_debug_message("slide triggered");
			obj_player.curr_state = PLAYER_STATE.SLIDE;
		}
	}
		
	if (place_meeting(x, y + 1, obj_tile))
	{
		// Player is touching the ground
		// vsp = 0;
		//jumping = false;
		//falling = false;
		//if (place_meeting(x, y + 1, obj_tile))
		//	falling = false;
		
		if (!slide_key)
			//ducking = false;
			obj_player.curr_state = PLAYER_STATE.NORMAL;
		
		// Player wants to jump
		if ((jump_key or jump_key_alt) and !slide_key)
		{
			//jumping = true;
			show_debug_message("jump triggered");
			obj_player.curr_state = PLAYER_STATE.JUMP;
			// vsp = -jumpsp;
		}
	}
}