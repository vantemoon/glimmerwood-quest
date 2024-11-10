/// @description Draw the sound menu

if (draw_sound_menu)
{
	draw_set_alpha(0.3);
	draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
	draw_sprite(spr_pause_menu_bg, 0, display_get_gui_width() / 2, display_get_gui_height() / 2);
		
	var _mousex = device_mouse_x_to_gui(0);
	var _mousey = device_mouse_y_to_gui(0);
	
	var _xpos = display_get_gui_width() / 2;
	var _ypos = display_get_gui_height() / 2;
				
	draw_sprite(spr_sound_text, 0, _xpos, _ypos - 220);
				
	var _button_width = sprite_get_width(spr_resume_button);
	var _button_height = sprite_get_height(spr_resume_button);
				
	var _slider_width = sprite_get_width(spr_slider_bar);
	var _slider_button_rad = 36;
				
	draw_sprite(spr_sound_effect_icon, 0, _xpos - 300, _ypos - 50);
	draw_sprite(spr_bgm_icon, 0, _xpos - 300, _ypos + 50);
				
	if (!mouse_check_button(mb_left))
	{
		bgm_selected = false;
		sound_effect_selected = false;
	}
				
	// BGM slider
	draw_sprite(spr_slider_bar, 0, _xpos - 250, _ypos - 50);
	var _bgm_percentage = obj_sound_manager.bgm_volume;
				
	if (!bgm_selected)
	{
		draw_sprite_ext(spr_slider_bar, 1, _xpos - 250, _ypos - 50, _bgm_percentage, 1, 0, c_white, 1);
		draw_sprite(spr_slider_button, 0, _xpos - 250 + _slider_width * _bgm_percentage, _ypos - 50);
	}
				
	if (mouse_check_button_pressed(mb_left))
	{
		var _buttonx = _xpos - 250 + _slider_width * _bgm_percentage;
		var _buttony = _ypos - 50;
		if (point_in_circle(_mousex, _mousey, _buttonx, _buttony, _slider_button_rad))
			bgm_selected = true;
	}
				
	if (bgm_selected)
	{
		bgm_value = clamp((_mousex - (_xpos - 250)) / _slider_width, 
							slider_min_value, 
							slider_max_value);
		_bgm_percentage = bgm_value / slider_max_value;
					
		draw_sprite_ext(spr_slider_bar, 1, _xpos - 250, _ypos - 50, _bgm_percentage, 1, 0, c_white, 1);
		draw_sprite(spr_slider_button, 0, _xpos - 250 + _slider_width * _bgm_percentage, _ypos - 50);
					
		obj_sound_manager.bgm_volume = bgm_value;
					
	}
				
	// Sound effect slider
	draw_sprite(spr_slider_bar, 0, _xpos - 250, _ypos + 50);
	var _sound_effect_percentage = obj_sound_manager.sound_effect_volume;
				
	if (!sound_effect_selected)
	{
		draw_sprite_ext(spr_slider_bar, 1, _xpos - 250, _ypos + 50, _sound_effect_percentage, 1, 0, c_white, 1);
		draw_sprite(spr_slider_button, 0, _xpos - 250 + _slider_width * _sound_effect_percentage, _ypos + 50);
	}
				
	if (mouse_check_button_pressed(mb_left))
	{
		var _buttonx = _xpos - 250 + _slider_width * _sound_effect_percentage;
		var _buttony = _ypos + 50;
		if (point_in_circle(_mousex, _mousey, _buttonx, _buttony, _slider_button_rad))
			sound_effect_selected = true;
	}
				
	if (sound_effect_selected)
	{
		sound_effect_value = clamp((_mousex - (_xpos - 250)) / _slider_width, 
									slider_min_value, 
									slider_max_value);
		_sound_effect_percentage = sound_effect_value / slider_max_value;
					
		draw_sprite_ext(spr_slider_bar, 1, _xpos - 250, _ypos + 50, _sound_effect_percentage, 1, 0, c_white, 1);
		draw_sprite(spr_slider_button, 0, _xpos - 250 + _slider_width * _sound_effect_percentage, _ypos + 50);
					
		obj_sound_manager.sound_effect_volume = sound_effect_value;
					
	}
				
	// Return to menu button
	if (point_in_rectangle(_mousex, _mousey, _xpos - _button_width / 2,
												_ypos + 200 - _button_height / 2,
												_xpos + _button_width / 2,
												_ypos + 200 + _button_height / 2))
	{
		if (device_mouse_check_button(0, mb_left))
		{
			draw_sprite(spr_return_menu_button, 2, _xpos, _ypos + 200);
			if (mouse_check_button_pressed(mb_left))
			{
				obj_play_button.visible = true;
				obj_quit_button.visible = true;
				obj_title.visible = true;

				draw_sound_button = true;
				draw_sound_menu = false;
			}
		}
		else 
		{
			draw_sprite(spr_return_menu_button, 1, _xpos, _ypos + 200);
		}
	}
	else
	{
		draw_sprite(spr_return_menu_button, 0, _xpos, _ypos + 200);
	}
}