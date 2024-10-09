/// @description Move to next room

with (obj_player) 
{
	if (has_control) 
	{
		obj_player.has_control = false;
		slide_transition(TRANS_MODE.GOTO, other.target);
	}
}
