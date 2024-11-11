/// @description Play BGM

if ((room == rm_game) and !obj_pause_menu.paused)
{
	if (obj_transition_zones.in_transition and !bgm_fade)
	{		
		audio_group_set_gain(audiogroup_bgm, bgm_volume * 0.5, 1500);
		bgm_fade = true;
	}

	else if (!obj_transition_zones.in_transition and bgm_fade)
	{	
		audio_group_set_gain(audiogroup_bgm, bgm_volume, 1500);
		bgm_fade = false;
	}
}
else
{
	audio_group_set_gain(audiogroup_bgm, bgm_volume, 0);
	audio_group_set_gain(audiogroup_sfx, sound_effect_volume, 0);
}

if (room == rm_menu)
{
	if (bgm_playing != snd_main_menu_bgm)
		change_track = true;
	bgm = snd_main_menu_bgm;
}

if (room = rm_game)
{
	switch (global.current_zone)
	{
		case ZONE.ONE:
		case ZONE.TWO:
		case ZONE.THREE:
			if (bgm_playing != snd_game_bgm)
				change_track = true;
			bgm = snd_game_bgm;
			
			break;
			
		case ZONE.BOSS:
			if (!global.game_complete and global.zone_b_transition_done)
			{
				if (bgm_playing != snd_boss_bgm)
					change_track = true;
				bgm = snd_boss_bgm;
			}
			else if (global.game_complete)
			{
				if (bgm_playing != snd_ending_bgm)
					change_track = true;
				bgm = snd_ending_bgm;
			}
			
			break;
	}
}

if (change_track)
{
	switch (bgm)
	{
		case undefined:
			if (bgm_playing != undefined) 
			{
				audio_stop_sound(bgm_id);
				bgm_playing = undefined;
			}
			break;
	
		default:
			 switch(bgm_playing) 
			 {
				case undefined:
					bgm_id = audio_play_sound(bgm, 0, true);
			        break;

			    default:
			        audio_stop_sound(bgm_id);
			        bgm_id = audio_play_sound(bgm, 0, true);
			        break;
			 }
			 bgm_playing = bgm;
	}
	change_track = false;
}