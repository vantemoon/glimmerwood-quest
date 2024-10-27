/// @description Activate shield

if (shield_ready and !shield_activated)
{
	shield_activated = true;
	
	obj_player.num_flower -= 5;
	obj_player.shield_activated = true;
	
	var _shield = instance_create_layer(x, y, "Abilities", obj_shield);
	_shield.owner = obj_player;
}
