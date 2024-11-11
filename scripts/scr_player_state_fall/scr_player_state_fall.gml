/// @description player_state_fall() runs when player is in the fall state

function player_state_fall()
{
	slashing = false;
	var _landed = false;
	
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
	
	//if (place_meeting(x, y + 10, obj_tile) and !_landed)
	//{
	//	audio_play_sound(snd_player_landing, 300, false);
	//	_landed = true;
	//}
		
	if (place_meeting(x, y + 1, obj_tile))
		curr_state = PLAYER_STATE.NORMAL;
}