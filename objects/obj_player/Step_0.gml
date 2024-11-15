/// @description Movement control

if (!sound_playing)
{
	global.running_sound = audio_play_sound(snd_player_running, 300, true);
	sound_playing = true;
}

if (has_control)
	detect_key();
	
player_movement();

switch (curr_state)
{
	case PLAYER_STATE.NORMAL:
		player_state_normal();
		break;
	
	case PLAYER_STATE.JUMP:
		player_state_jump();
		break;
		
	case PLAYER_STATE.FALL:
		player_state_fall();
		break;
		
	case PLAYER_STATE.SLIDE:
		player_state_slide();
		break;
		
	case PLAYER_STATE.SLASH:
		player_state_slash();
		break;
}

immune_check();
position_check();
health_check();
character_flash();