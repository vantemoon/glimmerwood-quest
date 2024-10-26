/// @description Activate missile

if (obj_player.num_flower >= 15 and missile_ready)
{
	obj_player.num_flower -= 15;
	missile_ready = false;
	
	var _missile = instance_create_layer(obj_player.x + 20, obj_player.y - 180, "Abilities", obj_missile);
	
	alarm[2] = missile_cooldown;
}
