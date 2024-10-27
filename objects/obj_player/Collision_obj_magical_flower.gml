/// @description Collect magical flowers

if (!other.hit_once and curr_state != PLAYER_STATE.SLASH)
{
	num_flower += 1;
	other.hit_once = true;
}