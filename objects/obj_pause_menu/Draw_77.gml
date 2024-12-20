/// @description Draw the pause menu

// Draw the pause menu if game is paused
if (paused)
{
	surface_set_target(application_surface);
	if (surface_exists(paused_surf))
	{
		draw_surface(paused_surf, 0, 0);
	    draw_set_alpha(0.3);
	    draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
	    draw_set_alpha(1);
	    draw_sprite(spr_pause_menu_bg, 0, display_get_gui_width() / 2, display_get_gui_height() / 2);
		
		var _mousex = device_mouse_x_to_gui(0);
		var _mousey = device_mouse_y_to_gui(0);
		
		switch (curr_state)
		{
			case PAUSE_MENU_STATE.PAUSED:
				
				var _xpos = display_get_gui_width() / 2;
				var _ypos = display_get_gui_height() / 2;
				
				draw_sprite(spr_paused_text, 0, _xpos, _ypos - 220);

				var _button_width = sprite_get_width(spr_resume_button);
				var _button_height = sprite_get_height(spr_resume_button);
				
				// Restart button
				if (point_in_rectangle(_mousex, _mousey, _xpos - _button_width / 2,
														 _ypos - 100 - _button_height / 2,
														 _xpos + _button_width / 2,
														 _ypos - 100 + _button_height / 2))
				{
					if (device_mouse_check_button(0, mb_left))
					{
						draw_sprite(spr_resume_button, 2, _xpos, _ypos - 100);
						instance_activate_object(obj_transition);
						if (mouse_check_button_pressed(mb_left))
						{
							audio_play_sound(snd_button_click, 1000, false);
							slide_transition(TRANS_MODE.GOTO, rm_restart);
						}
						break;
					}
					else 
					{
						draw_sprite(spr_resume_button, 1, _xpos, _ypos - 100);
					}
				}
				else
				{
					draw_sprite(spr_resume_button, 0, _xpos, _ypos - 100);
				}
				
				// Sound button
				if (point_in_rectangle(_mousex, _mousey, _xpos - _button_width / 2,
														 _ypos - 5 - _button_height / 2,
														 _xpos + _button_width / 2,
														 _ypos - 5 + _button_height / 2))
				{
					if (device_mouse_check_button(0, mb_left))
					{
						draw_sprite(spr_sound_button, 2, _xpos, _ypos - 5);
						if (mouse_check_button_pressed(mb_left))
						{
							audio_play_sound(snd_button_click, 1000, false);
							curr_state = PAUSE_MENU_STATE.SOUND;
						}
						break;
					}
					else 
					{
						draw_sprite(spr_sound_button, 1, _xpos, _ypos - 5);
					}
				}
				else
				{
					draw_sprite(spr_sound_button, 0, _xpos, _ypos - 5);
				}
				
				// Help button
				if (point_in_rectangle(_mousex, _mousey, _xpos - _button_width / 2,
														 _ypos + 90 - _button_height / 2,
														 _xpos + _button_width / 2,
														 _ypos + 90 + _button_height / 2))
				{
					if (device_mouse_check_button(0, mb_left))
					{
						draw_sprite(spr_help_button, 2, _xpos, _ypos + 90);
						if (mouse_check_button_pressed(mb_left))
						{
							curr_state = PAUSE_MENU_STATE.HELP;
							audio_play_sound(snd_button_click, 1000, false);
						}
						break;
					}
					else 
					{
						draw_sprite(spr_help_button, 1, _xpos, _ypos + 90);
					}
				}
				else
				{
					draw_sprite(spr_help_button, 0, _xpos, _ypos + 90);
				}
				
				// Return to home button
				if (point_in_rectangle(_mousex, _mousey, _xpos - _button_width / 2,
														 _ypos + 185 - _button_height / 2,
														 _xpos + _button_width / 2,
														 _ypos + 185 + _button_height / 2))
				{
					if (device_mouse_check_button(0, mb_left))
					{
						draw_sprite(spr_return_home_button, 2, _xpos, _ypos + 185);
						instance_activate_object(obj_transition);
						if (mouse_check_button_pressed(mb_left))
						{
							slide_transition(TRANS_MODE.RESTART);
							audio_play_sound(snd_button_click, 1000, false);
						}
						break;
					}
					else 
					{
						draw_sprite(spr_return_home_button, 1, _xpos, _ypos + 185);
					}
				}
				else
				{
					draw_sprite(spr_return_home_button, 0, _xpos, _ypos + 185);
				}
				
				draw_sprite(spr_esc_instruction, 0, _xpos, _ypos + 280);
					
				break;
				
			case PAUSE_MENU_STATE.SOUND:
				_xpos = display_get_gui_width() / 2;
				_ypos = display_get_gui_height() / 2;
				
				draw_sprite(spr_sound_text, 0, _xpos, _ypos - 220);
				
				_button_width = sprite_get_width(spr_resume_button);
				_button_height = sprite_get_height(spr_resume_button);
				
				var _slider_width = sprite_get_width(spr_slider_bar);
				var _slider_button_rad = 36;
				
				draw_sprite(spr_bgm_icon, 0, _xpos - 300, _ypos - 50);
				draw_sprite(spr_sound_effect_icon, 0, _xpos - 300, _ypos + 50);
				
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
					{
						bgm_selected = true;
					}
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
					{
						sound_effect_selected = true;
					}
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
							curr_state = PAUSE_MENU_STATE.PAUSED;
							audio_play_sound(snd_button_click, 1000, false);
						}
						break;
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
				
				break;
				
			case PAUSE_MENU_STATE.HELP:
				_xpos = display_get_gui_width() / 2 - 250;
				_ypos = display_get_gui_height() / 2 + 75;
				
				draw_sprite(spr_help_text, 0, _xpos + 250, _ypos - 295);
				
				_button_width = sprite_get_width(spr_resume_button);
				_button_height = sprite_get_height(spr_resume_button);
				
				// Key mappings
				draw_sprite(spr_basic_movements, 0, _xpos, _ypos - 50);
				draw_sprite(spr_abilities, 0, _xpos + 580, _ypos - 50);
				
				// Return to menu button
				if (point_in_rectangle(_mousex, _mousey, _xpos + 580 - _button_width / 2,
														 _ypos + 180 - _button_height / 2,
														 _xpos + 580 + _button_width / 2,
														 _ypos + 180 + _button_height / 2))
				{
					if (device_mouse_check_button(0, mb_left))
					{
						draw_sprite(spr_return_menu_button, 2, _xpos + 580, _ypos + 180);
						if (mouse_check_button_pressed(mb_left))
						{
							audio_play_sound(snd_button_click, 1000, false);
							curr_state = PAUSE_MENU_STATE.PAUSED;
						}
						break;
					}
					else 
					{
						draw_sprite(spr_return_menu_button, 1, _xpos + 580, _ypos + 180);
					}
				}
				else
				{
					draw_sprite(spr_return_menu_button, 0, _xpos + 580, _ypos + 180);
				}
				
				break;
		}
		
		draw_set_halign(fa_left);
    }
	else
	{
		paused_surf = surface_create(res_width, res_height);
		buffer_set_surface(paused_surf_buffer, paused_surf, 0);
	}
	surface_reset_target();
}

if (keyboard_check_pressed(vk_escape))
{
	if (!paused)
	{
		paused = true;
		resumed = false;
		
		curr_state = PAUSE_MENU_STATE.PAUSED;
		
		layer_hspeed(layer1_id, 0);
		layer_hspeed(layer2_id, 0);
		layer_hspeed(layer3_id, 0);
		layer_hspeed(layer4_id, 0);
		layer_hspeed(layer5_id, 0);
		layer_hspeed(layer6_id, 0);
		layer_hspeed(layer7_id, 0);
		
		audio_pause_sound(global.running_sound);
		
		instance_deactivate_all(true);
		instance_activate_object(obj_sound_manager);
		
		paused_surf = surface_create(res_width, res_height);
		surface_set_target(paused_surf);
		gpu_set_blendenable(false);
		draw_surface(application_surface, 0, 0);
		surface_reset_target();
		gpu_set_blendenable(true);
		
		if (buffer_exists(paused_surf_buffer))
			buffer_delete(paused_surf_buffer);
		paused_surf_buffer = buffer_create(res_width * res_height * 4, buffer_fixed, 1);
		buffer_get_surface(paused_surf_buffer, paused_surf, 0);
	}
	else
	{
		paused = false;
		resumed = false;
		
		layer_hspeed(layer1_id, bg_1_hsp);
		layer_hspeed(layer2_id, bg_2_hsp);
		layer_hspeed(layer3_id, bg_3_hsp);
		layer_hspeed(layer4_id, bg_4_hsp);
		layer_hspeed(layer5_id, bg_5_hsp);
		layer_hspeed(layer6_id, bg_6_hsp);
		layer_hspeed(layer7_id, bg_7_hsp);
		
		audio_resume_sound(global.running_sound);
		
		instance_activate_all();
		if (surface_exists(paused_surf))
			surface_free(paused_surf);
		if (buffer_exists(paused_surf_buffer))
			buffer_delete(paused_surf_buffer);
	}
}