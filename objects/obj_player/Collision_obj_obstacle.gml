/// @description Hit detection

if (!other.hit_once and 
    curr_state != PLAYER_STATE.SLASH and 
	immune_frame <= 0 and curr_hp > 0 and 
	!global.game_complete)
{
	if ((object_get_parent(other.object_index) == obj_monster) and other.curr_state == MONSTER_STATE.DEAD)
	{
		// Do nothing
	}
	else if (!shield_activated)
	{
		audio_play_sound(snd_player_damage, 400, false);
		
		flash_alpha = 1;
		curr_hp -= 1;
		other.hit_once = true;
		
		var _indicator = instance_create_layer(obj_player.x, obj_player.y, "UI", obj_heart_indicator);
		_indicator.owner = obj_player;
		_indicator.heart_change = HEART_CHANGE.MINUS_1;
	}
	else
	{
		other.hit_once = true;
	}
}
