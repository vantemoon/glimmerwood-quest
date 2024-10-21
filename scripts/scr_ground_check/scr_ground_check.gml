/// @description ground_check() checks if the player touches the ground

function ground_check()
{
	if (duck_key) 
	{
		ducking = true;
		jumping = false;
		falling = true;
		slashing = false;
	}
		
	if (place_meeting(x, y + 1, obj_tile))
	{
		vsp = 0;
		jumping = false;
		if (place_meeting(x, y + 5, obj_tile))
			falling = false;
		
		if (!duck_key)
			ducking = false;
		
		// Player wants to jump
		if ((jump_key or jump_key_alt) and !duck_key)
		{
			jumping = true;
			vsp = -jumpsp;
		}
	}
	else
	{
		// Player is not touching the ground
		if (ducking)
		{
			vsp += grv * 4;
		}
		else
		{
			if (vsp <= termsp) 
				vsp += grv;
		}		
		//if (vsp > 0) 
		//	falling = true;
	}
}