/// @description set_sprite() sets the current sprite/animation of the player

function set_sprite()
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
	
	if (falling)
	{
		sprite_index = spr_player_falling;
		image_speed = 2;
		if (image_index >= image_number -1)
		{
			image_index = image_number - 1;
		}
	}
	
	if (ducking)
	{
		sprite_index = spr_player; // TODO: change to ducking animation
		image_speed = 2;
	}
	
	
	if (slashing)
	{
		// sprite_index = spr_player; // TODO: change to slashing animation
		// image_speed = 2;
		
		// TODO: change back to normal animation after slashing ends
	}
	
	else if (!jumping and !falling and !ducking and !slashing)
	{
		sprite_index = spr_player_walking;
		image_speed = 2;
	}
}