/// @description Draw the credits menu

if (draw_credits_menu)
{
	draw_set_alpha(0.3);
	draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
	draw_sprite(spr_pause_menu_bg, 0, display_get_gui_width() / 2, display_get_gui_height() / 2);
		
	var _mousex = device_mouse_x_to_gui(0);
	var _mousey = device_mouse_y_to_gui(0);
	
	var _xpos = display_get_gui_width() / 2;
	var _ypos = display_get_gui_height() / 2;
				
	draw_sprite(spr_credits_text, 0, _xpos, _ypos - 220);
	draw_sprite(spr_credits_content, 0, _xpos, _ypos + 20);
				
	var _button_width = sprite_get_width(spr_resume_button);
	var _button_height = sprite_get_height(spr_resume_button);
	
	// Return to menu button
	if (point_in_rectangle(_mousex, _mousey, _xpos - _button_width / 2,
												_ypos + 250 - _button_height / 2,
												_xpos + _button_width / 2,
												_ypos + 250 + _button_height / 2))
	{
		if (device_mouse_check_button(0, mb_left))
		{
			draw_sprite(spr_return_menu_button, 2, _xpos, _ypos + 250);

			if (mouse_check_button_pressed(mb_left))
			{
				audio_play_sound(snd_button_click, 1000, false);
				
				obj_play_button.visible = true;
				obj_sound_button.draw_sound_button = true;
				obj_quit_button.visible = true;
				obj_title.visible = true;

				draw_credits_button = true;
				draw_credits_menu = false;
			}
		}
		else 
		{
			draw_sprite(spr_return_menu_button, 1, _xpos, _ypos + 250);
		}
	}
	else
	{
		draw_sprite(spr_return_menu_button, 0, _xpos, _ypos + 250);
	}
}