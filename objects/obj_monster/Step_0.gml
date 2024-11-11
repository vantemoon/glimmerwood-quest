/// @description Move and destroy

x += global.ground_speed * global.speed_modifier - 5;

if (x <= -300)
	instance_destroy();

if (curr_state == MONSTER_STATE.DEAD)
{
	audio_play_sound(snd_monster_damage, 300, false);
	
	obj_player.num_flower += global.monster_worth;
	
	obj_flower_progress_bar.timer = 60;
	obj_flower_progress_bar.update_message = "+" + string(global.monster_worth);
	// TODO: add death animation (if any)
	instance_destroy();
}