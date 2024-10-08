/// @description Move to next room

with (obj_player) 
{
	if (has_control) 
	{
		has_control = false;
		slide_trnasition(TRANS_MODE.GOTO, other.target);
	}
}
