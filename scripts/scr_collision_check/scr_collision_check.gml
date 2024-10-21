/// @description collision_check() detects collision

function collision_check()
{
	// Vertical collision
	if (place_meeting(x, y + vsp, obj_tile))
	{
		while (!place_meeting(x, y + sign(vsp), obj_tile))
		{
			y += sign(vsp);
		}
		vsp = 0;
	}
	
	y += vsp;
	
	// Horizontal collision
	var _hsp = global.ground_speed * global.speed_modifier;
	
	if (place_meeting(x + abs(_hsp), y, obj_tile))
		x += _hsp;
}