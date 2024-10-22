/// @description jump_check() checks if the player is jumping or falling

function jump_check_n()
{
	if (vsp >= 0)
		// Player starts falling
		obj_player.curr_state = PLAYER_STATE.FALL;
	else 
	{
		obj_player.curr_state = PLAYER_STATE.JUMP;
	}
}