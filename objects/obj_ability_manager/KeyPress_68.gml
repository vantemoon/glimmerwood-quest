/// @description Activate missile

if (missile_ready and obj_player.has_control)
{
	obj_player.num_flower -= 15;
	
	audio_play_sound(snd_missile, 400, false);
	
	var _indicator = instance_create_layer(obj_player.x, obj_player.y, "UI", obj_flower_indicator);
	_indicator.owner = obj_player;
	_indicator.flower_change = FLOWER_CHANGE.MINUS_15;
	
	var _missile = instance_create_layer(obj_player.x + 20, obj_player.y - 180, "Abilities_Top", obj_missile);
}
