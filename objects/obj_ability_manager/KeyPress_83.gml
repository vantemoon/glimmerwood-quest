/// @description Activate magnet

if (magnet_ready and !magnet_activated)
{
	magnet_activated = true;
	
	audio_play_sound(snd_magnet, 400, false);
	
	obj_player.num_flower -= 5;
	obj_player.magnet_activated = true;
	
	obj_flower_progress_bar.timer = 60;
	obj_flower_progress_bar.update_message = "-5";

	var _magnet = instance_create_layer(x, y, "Abilities_Bottom", obj_magnet);
	_magnet.owner = obj_player;
}