/// @description Activate missile

if (missile_ready)
{
	obj_player.num_flower -= 15;
	
	obj_flower_progress_bar.timer = 60;
	obj_flower_progress_bar.update_message = "-15";
	
	var _missile = instance_create_layer(obj_player.x + 20, obj_player.y - 180, "Abilities", obj_missile);
}
