/// @description Activate slowdoen

if (timeslow_ready and !timeslow_activated)
{
	timeslow_activated = true;
	
	obj_player.num_flower -= 10;

	instance_create_layer(x, y, "Abilities", obj_timeslow);
}