/// @description Hit detection

if (!hit_once and !other.hit_once and !slashing)
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
