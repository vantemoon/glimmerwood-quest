/// @description Hit detection

if (!other.hit_once  and curr_state != PLAYER_STATE.SLASH)
{
	if (!shield_activated)
	{
		flash_alpha = 1;
		curr_hp -= 1;
		other.hit_once = true;
	}
	else
	{
		other.hit_once = true;
	}
}
