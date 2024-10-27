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
		shield_activated = false;
		obj_shield.hit_once = true;
		other.hit_once = true;
	}
}
