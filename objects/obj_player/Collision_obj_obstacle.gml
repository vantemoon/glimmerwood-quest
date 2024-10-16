/// @description Hit detection

if (!hit_once and !other.hit_once)
{
	curr_hp -= 1;
	hit_once = true;
	other.hit_once = true;
}
