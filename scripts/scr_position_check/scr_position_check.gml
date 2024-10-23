/// @description position_check() checks player's position on screen

function position_check()
{
	var _xpos = 290;
	var _ypos = 735;
	
	var _hsp = global.ground_speed * global.speed_modifier;
	if (x <= _xpos and !place_meeting(x + abs(_hsp), y, obj_tile))
		x = min(x + 5, _xpos);
	
	if (x < -70)
	{
		obj_player.curr_hp -= 1;
		
		// Respawn at original position
		x = 290;
		y = 820;
	}
}