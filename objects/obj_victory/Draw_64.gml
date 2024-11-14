/// @description Draw the victory screen

var _xpos = display_get_gui_width() / 2;
var _ypos = display_get_gui_height() / 2;

gpu_set_blendenable(true);

draw_set_alpha(0.3);
draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);

draw_set_alpha(1);
draw_sprite(spr_pause_menu_bg, 0, _xpos, _ypos);
draw_sprite(spr_victory_text, 0, _xpos, _ypos - 220);
draw_sprite(spr_victory_message, 0, _xpos, _ypos - 100);

var _hours = obj_timer.hours;
if (_hours > 0 and _hours < 10)
	_hours = "0" + string(_hours);
else
{
	_hours = string(_hours);
}

var _minutes = obj_timer.minutes;
if (_minutes > 0 and _minutes < 10)
	_minutes = "0" + string(_minutes);
else
{
	_minutes = string(_minutes);
}

var _seconds = obj_timer.seconds;
if (_seconds > 0 and _seconds < 10)
	_seconds = "0" + string(_seconds);
else
{
	_seconds = string(_seconds);
}

draw_set_halign(fa_center);
draw_set_font(fnt_gentium_bold_92);
if (obj_timer.hours > 0)
{
	draw_text(_xpos, _ypos - 50, _hours + ":" + _minutes + ":" + _seconds);
}
else if (obj_timer.minutes > 0)
{
	draw_text(_xpos, _ypos - 50, _minutes + ":" + _seconds);
}
else
{
	draw_text(_xpos, _ypos - 50, "00:" + _seconds);
}

draw_sprite(spr_time_taken, 0, _xpos, _ypos + 125);

var _mousex = device_mouse_x_to_gui(0);
var _mousey = device_mouse_y_to_gui(0);

var _button_width = sprite_get_width(spr_resume_button);
var _button_height = sprite_get_height(spr_resume_button);
		
// Return to home button
if (point_in_rectangle(_mousex, _mousey, _xpos - 230 - _button_width / 2,
										 _ypos + 225 - _button_height / 2,
										 _xpos - 230 + _button_width / 2,
										 _ypos + 225 + _button_height / 2))
{
	if (device_mouse_check_button(0, mb_left))
	{
		draw_sprite(spr_return_home_button, 2, _xpos - 230, _ypos + 225);
		instance_activate_object(obj_transition);
		if (mouse_check_button_pressed(mb_left))
		{
			slide_transition(TRANS_MODE.RESTART);
			audio_play_sound(snd_button_click, 1000, false);
		}
	}
	else 
	{
		draw_sprite(spr_return_home_button, 1, _xpos - 230, _ypos + 225);
	}
}
else
{
	draw_sprite(spr_return_home_button, 0, _xpos - 230, _ypos + 225);
}

// Play again button
if (point_in_rectangle(_mousex, _mousey, _xpos + 230 - _button_width / 2,
										 _ypos + 225 - _button_height / 2,
										 _xpos + 230 + _button_width / 2,
										 _ypos + 225 + _button_height / 2))
{
	if (device_mouse_check_button(0, mb_left))
	{
		draw_sprite(spr_play_again_button, 2, _xpos + 230, _ypos + 225);
		instance_activate_object(obj_transition);
		if (mouse_check_button_pressed(mb_left))
		{
			slide_transition(TRANS_MODE.GOTO, rm_restart);
			audio_play_sound(snd_button_click, 1000, false);
		}
	}
	else 
	{
		draw_sprite(spr_play_again_button, 1, _xpos + 230, _ypos + 225);
	}
}
else
{
	draw_sprite(spr_play_again_button, 0, _xpos + 230, _ypos + 225);
}