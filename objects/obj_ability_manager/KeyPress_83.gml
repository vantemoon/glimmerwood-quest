/// @description Activate slowdoen

if (obj_player.num_flower >= 10 and timeslow_ready)
{
	obj_player.num_flower -= 10;
	timeslow_ready = false;

	instance_create_layer(x, y, "Abilities", obj_timeslow);
	
	alarm[1] = timeslow_cooldown;
}