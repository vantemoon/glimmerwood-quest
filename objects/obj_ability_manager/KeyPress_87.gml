/// @description Activate slowdoen

if (obj_player.num_flower >= 10 and slowdown_ready)
{
	obj_player.num_flower -= 10;
	slowdown_ready = false;
	
	//var _shield = instance_create_layer(x, y, "Abilities", obj_shield);
	//_shield.owner = obj_player;
	instance_create_layer(x, y, "Abilities", obj_slowdown);
	
	alarm[1] = slowdown_cooldown;
}