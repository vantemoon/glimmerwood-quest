/// @description set_sprite() sets the current sprite/animation of the player

function set_sprite(){
	if (jumping or falling)
		sprite_index = spr_player;
	
	if (ducking)
	{
		sprite_index = spr_player; // TODO: change to ducking animation
		image_speed = 2;
	}
	
	if (!jumping and !falling and !ducking and !slashing)
	{
		sprite_index = spr_player_walking;
		image_speed = 2;
	}
}