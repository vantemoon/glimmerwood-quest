/// @description Check upon player exiting the chunk

if (entered)
	alarm[0] = global.game_fps * 6;

if (exited)
{
	if ((num_collected == num_required) and (obj_player.curr_hp < obj_player.max_hp))
	{
		obj_player.curr_hp += 1;
		
		var _indicator = instance_create_layer(obj_player.x, obj_player.y, "UI", obj_heart_indicator);
		_indicator.owner = obj_player;
		_indicator.heart_change = HEART_CHANGE.PLUS_1;
	}
	
	num_collected = 0;
	entered = false;
	exited = false;
}