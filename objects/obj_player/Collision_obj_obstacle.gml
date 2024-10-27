/// @description Hit detection

if (!other.hit_once  and curr_state != PLAYER_STATE.SLASH)
{
	if (!shield_activated)
	{
		curr_hp -= 1;
		other.hit_once = true;
	}
	else
	{
		other.hit_once = true;
	}
}
