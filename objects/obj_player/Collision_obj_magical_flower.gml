/// @description Collect magical flowers

if (!other.hit_once)
{
	audio_play_sound(snd_collect_flower, 1000, false);
	
	num_flower += 1;
	other.hit_once = true;
}