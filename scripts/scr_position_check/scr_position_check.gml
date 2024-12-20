/// @description position_check() checks player's position on screen

function position_check()
{
	var _xpos = 290;
	var _ypos = 820;
	
	var _hsp = global.ground_speed * global.speed_modifier;
	if (x <= _xpos and !place_meeting(x + abs(_hsp), y, obj_tile))
		x = min(x + 5, _xpos);
	
	if (x < -70)
	{
		if (!obj_player.shield_activated)
		{
			curr_hp -= 1;
			
			var _indicator = instance_create_layer(obj_player.x, obj_player.y, "UI", obj_heart_indicator);
			_indicator.owner = obj_player;
			_indicator.heart_change = HEART_CHANGE.MINUS_1;
		}
		immune_frame = 2 * global.game_fps;
		
		// Respawn at original position
		x = _xpos;
		y = _ypos;
	}
}