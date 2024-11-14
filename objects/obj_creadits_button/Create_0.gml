/// @description Button parent

draw_credits_button = true;
draw_credits_menu = false;
	
interact = function() 
{
	obj_play_button.visible = false;
	obj_sound_button.draw_sound_button = false;
	obj_quit_button.visible = false;
	obj_title.visible = false;
	
	draw_credits_button = false;
	draw_credits_menu = true;
}