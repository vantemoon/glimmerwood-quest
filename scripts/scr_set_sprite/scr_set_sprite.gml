/// @description set_sprite() sets the current sprite/animation of the player

function set_sprite_n()
{
	if (jumping)
	{
		sprite_index = spr_player_jumping;
		image_speed = 2;
		if (image_index >= image_number - 1)
		{
			image_index = image_number - 1;
		}
	}
	
	if (falling and !ducking)
	{
		sprite_index = spr_player_falling;
		image_speed = 2;
		if (image_index >= image_number -1)
		{
			image_index = image_number - 1;
		}
	}
	
	if (falling and ducking)
	{
		sprite_index = spr_player_sliding;
		image_speed = 2;
		if (image_index >= image_number -1)
		{
			image_index = image_number - 1;
		}
	}
	
	if (ducking and place_meeting(x, y + 1, obj_tile))
	{
		sprite_index = spr_player_sliding;
		image_speed = 2;
		if (image_index >= image_number -1)
		{
			image_index = image_number - 1;
		}
	}
	
	if (duck_up_key)
	{
		show_debug_message("getting up");
		sprite_index = spr_player_sliding_up;
		image_speed = 2;
	}
	
	if (slashing)
	{
		// sprite_index = spr_player; // TODO: change to slashing animation
		// image_speed = 2;
		
		// TODO: change back to normal animation after slashing ends
	}
	
	else if (!jumping and !falling and !ducking and !duck_up_key and !slashing)
	{
		sprite_index = spr_player_walking;
		image_speed = 2;
	}
}