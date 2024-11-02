/// @description Check upon player exiting the chunk

if (entered)
	alarm[0] = global.game_fps * 6;

if (exited)
{
	show_debug_message("exited");
	if (num_collected == num_required)
	{
		obj_player.curr_hp += 1;
		show_debug_message("restore 1 hp");
	}
	
	num_collected = 0;
	entered = false;
	exited = false;
}

show_debug_message(string(num_collected));