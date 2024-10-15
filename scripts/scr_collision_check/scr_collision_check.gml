/// @description collision_check() detects collision

function collision_check(){
	if (place_meeting(x, y + vsp, obj_tile_ground))
	{
		while (!place_meeting(x, y + sign(vsp), obj_tile_ground))
		{
			y += sign(vsp);
		}
		
		vsp = 0;
	}
	
	y += vsp;
}