/// @description Control menu

// Item ease in
menu_x += (menu_x_target - menu_x) / menu_speed;


// Keyboard controls
if (menu_control)
{
	if (keyboard_check_pressed(vk_up))
	{
		menu_cursor ++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	
	if (keyboard_check_pressed(vk_down))
	{
		menu_cursor --;
		if (menu_cursor < 0) menu_cursor = menu_items - 1;
	}
	
	if (keyboard_check_pressed(vk_enter))
	{
		menu_x_target = gui_width + 500;
		menu_committed = menu_cursor;
		// ScreenShake(4, 30);
		menu_control = false;
	}
}

if (menu_x > gui_width + 200) and (menu_committed != -1)
{
	switch (menu_committed)
	{
		case 2: default: slide_transition(TRANS_MODE.NEXT); break;
		// case 1:
		case 0: game_end(); break;
	}
}
