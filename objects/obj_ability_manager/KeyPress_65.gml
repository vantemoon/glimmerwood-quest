/// @description Activate shield

if (shield_ready and !shield_activated)
{
	shield_activated = true;
	
	audio_play_sound(snd_shield, 400, false);
	
	obj_player.num_flower -= 5;
	obj_player.shield_activated = true;

	obj_flower_progress_bar.timer = 60;
	obj_flower_progress_bar.update_message = "-5";

	var _shield = instance_create_layer(x, y, "Abilities_Top", obj_shield);
	_shield.owner = obj_player;
}
