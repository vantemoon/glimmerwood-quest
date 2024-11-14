/// @description Activate magnet

if (magnet_ready and !magnet_activated)
{
	magnet_activated = true;
	
	audio_play_sound(snd_magnet, 400, false);
	
	obj_player.num_flower -= 5;
	obj_player.magnet_activated = true;
	
	var _indicator = instance_create_layer(obj_player.x, obj_player.y, "UI", obj_flower_indicator);
	_indicator.owner = obj_player;
	_indicator.flower_change = FLOWER_CHANGE.MINUS_5;

	var _magnet = instance_create_layer(x, y, "Abilities_Bottom", obj_magnet);
	_magnet.owner = obj_player;
}