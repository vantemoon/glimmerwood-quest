/// @description move_and_collide() detects collision

function player_movement()
{
	// Apply gravity
	vsp += grv;
	
	if (slide_key)
	{
		if (!place_meeting(x, y + 1, obj_tile))
		{
			// Player is not touching the ground
			curr_state = PLAYER_STATE.FALL;
		}
		else 
		{
			// Player is touching the ground
			curr_state = PLAYER_STATE.SLIDE;
		}
	}
	
	if (place_meeting(x, y + 1, obj_tile))
	{
		// Player is touching the ground
		if (!slide_key and !slashing)
			curr_state = PLAYER_STATE.NORMAL;
		
		// Player wants to jump
		if ((jump_key or jump_key_alt) and !slide_key)
		{
			if (vsp < termsp)
				vsp = -jumpsp;
			curr_state = PLAYER_STATE.JUMP;
		}
	}

	if (slash_key)
		curr_state = PLAYER_STATE.SLASH;
		
	// Vertical collision
	if (place_meeting(x, y + vsp, obj_tile))
	{
		while (!place_meeting(x, y + sign(vsp), obj_tile))
		{
			y += sign(vsp);
		}
		vsp = 0;
	}
	
	// Update vertical position
	y += vsp;
	
	// Horizontal collision
	var _hsp = global.ground_speed * global.speed_modifier;
	
	if (place_meeting(x + abs(_hsp), y - 10, obj_tile))
	{
		// Update horizontal position
		x += _hsp;
	}
	else if (x < 290)
	{
		x = min(x + 5, 290);
	}
}