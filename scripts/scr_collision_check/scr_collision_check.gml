/// @description collision_check() detects collision

function collision_check(){
	if (place_meeting(x, y + vsp, obj_tile))
	{
		while (!place_meeting(x, y + sign(vsp), obj_tile))
		{
			y += sign(vsp);
		}
		
		while (place_meeting(x + global.ground_speed * global.speed_modifier, y, obj_slope_left))
		{
			y --;
		}
		
		while (place_meeting(x + global.ground_speed * global.speed_modifier, y, obj_slope_right))
		{
			y ++;
		}
		
		vsp = 0;
	}
	
	y += vsp;
}