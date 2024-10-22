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
	
	//if (!sliding) 
	//{
	//	show_debug_message("key released");
	//	sprite_index = spr_player_sliding_up;
	//	image_speed = 2;
	//}
}