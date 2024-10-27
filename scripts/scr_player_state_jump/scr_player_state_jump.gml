/// @description player_state_jump() runs when player is in the jump state

function player_state_jump()
{
	slashing = false;
	
	can_jump = 0;
	
	if (vsp >= 0)
		// Player starts falling
		obj_player.curr_state = PLAYER_STATE.FALL;
	
	if (slash_key)
	{
		prev_state = PLAYER_STATE.JUMP;
		curr_state = PLAYER_STATE.SLASH;
	}
	
	// Animation
	sprite_index = spr_player_jumping;
	image_speed = 2;
	if (image_index >= image_number - 1)
	{
		image_index = image_number - 1;
	}
}