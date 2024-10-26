/// @description player_state_slide() runs when player is in the slide state

function player_state_slide()
{
	// Animation 
	sprite_index = spr_player_sliding;
	image_speed = 2;
	if (image_index >= image_number -1)
	{
		image_index = image_number - 1;
	}
	
	if (!slide_key)
		curr_state = PLAYER_STATE.NORMAL;
}