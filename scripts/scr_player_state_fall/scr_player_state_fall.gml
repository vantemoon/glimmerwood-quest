/// @description player_state_fall() runs when player is in the fall state

function player_state_fall()
{
	if (slide_key)
	{
		vsp += grv * 4;
	}
	
	// Animation
	sprite_index = spr_player_falling;
	image_speed = 2;
	if (image_index >= image_number -1)
	{
		image_index = image_number - 1;
	}
	
	if (slash_key and !slide_key)
	{
		prev_state = PLAYER_STATE.FALL;
		curr_state = PLAYER_STATE.SLASH;
	}
}