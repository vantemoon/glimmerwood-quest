/// @description Draw the game over screen

var _xpos = display_get_gui_width() / 2;
var _ypos = display_get_gui_height() / 2;

instance_activate_object(obj_ground_tile);
if (object_exists(obj_ground_tile))
	obj_ground_tile.moving = false;

layer_hspeed(layer1_id, 0);
layer_hspeed(layer2_id, 0);
layer_hspeed(layer3_id, 0);
layer_hspeed(layer4_id, 0);
layer_hspeed(layer5_id, 0);
layer_hspeed(layer6_id, 0);
layer_hspeed(layer7_id, 0);

draw_sprite(spr_pause_menu_bg, 0, _xpos, _ypos);
draw_sprite(spr_game_over_text, 0, _xpos, _ypos - 220);
draw_sprite(spr_game_over_message, 0, _xpos, _ypos);


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