/// @description player_state_normal() runs when the player is in the free state

function player_state_normal()
{
	slashing = false;
	
	if (slash_key)
	{
		prev_state = PLAYER_STATE.NORMAL;
		curr_state = PLAYER_STATE.SLASH;
	}
		
	// Animation
	sprite_index = spr_player_running;
	image_speed = 2;
}