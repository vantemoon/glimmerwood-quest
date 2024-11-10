/// @description Button parent

bgm_value = 0.5;
sound_effect_value = 0.5;

slider_max_value = 1;
slider_min_value = 0;

bgm_selected = false;
sound_effect_selected = false;

draw_sound_menu = false;
draw_sound_button = true;

interact = function() 
{
	obj_play_button.visible = false;
	obj_quit_button.visible = false;
	obj_title.visible = false;

	draw_sound_button = false;
	draw_sound_menu = true;
}