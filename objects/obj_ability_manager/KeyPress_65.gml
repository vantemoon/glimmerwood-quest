/// @description Activate shield

if (shield_ready and !shield_activated and obj_player.has_control)
{
	shield_activated = true;
	
	audio_play_sound(snd_shield, 400, false);
	
	obj_player.num_flower -= 5;
	obj_player.shield_activated = true;

	var _indicator = instance_create_layer(obj_player.x, obj_player.y, "UI", obj_flower_indicator);
	_indicator.owner = obj_player;
	_indicator.flower_change = FLOWER_CHANGE.MINUS_5;

	var _shield = instance_create_layer(x, y, "Abilities_Top", obj_shield);
	_shield.owner = obj_player;
}
