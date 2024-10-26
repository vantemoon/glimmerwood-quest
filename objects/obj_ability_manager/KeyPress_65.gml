/// @description Activate shield

if (obj_player.num_flower >= 5 and shield_ready)
{
	obj_player.num_flower -= 5;
	obj_player.shield_activated = true;
	shield_ready = false;
	
	var _shield = instance_create_layer(x, y, "Abilities", obj_shield);
	_shield.owner = obj_player;
	
	alarm[0] = shield_cooldown;
}
