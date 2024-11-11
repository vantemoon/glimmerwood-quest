/// @description Collect magical flowers

if (!other.hit_once)
{
	obj_player.num_flower += 1;
	other.hit_once = true;
}