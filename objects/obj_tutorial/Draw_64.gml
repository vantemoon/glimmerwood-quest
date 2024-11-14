/// @description Draw the turotial page

draw_set_alpha(0.3);
draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);

draw_set_alpha(1);
draw_sprite_ext(spr_pause_menu_bg, 0, display_get_gui_width() / 2 + 200, display_get_gui_height() / 2, scale, scale, 0, c_white, 1);

var _xpos = display_get_gui_width() / 2 - 50;
var _ypos = display_get_gui_height() / 2 + 75;
				
var _button_width = sprite_get_width(spr_resume_button) * scale;
var _button_height = sprite_get_height(spr_resume_button) * scale;
				
// Key mappings
switch (curr_state)
{
	case HELP_MENU_STATE.IDLE:
		draw_sprite(spr_help_instruction, 0, _xpos + 540, _ypos - 240);
		draw_sprite(spr_skip_instruction, 0, _xpos + 20, _ypos + 150);
					
		draw_sprite(spr_up_key, 0, _xpos + 20, _ypos - 165);
		draw_sprite(spr_down_key, 0, _xpos + 20, _ypos - 40);
		draw_sprite(spr_left_key, 0, _xpos - 180, _ypos - 40);
		draw_sprite(spr_right_key, 0, _xpos + 220, _ypos - 40);
		draw_sprite(spr_space_bar, 0, _xpos + 20, _ypos + 95);
						
		if (keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_space))
			curr_state = HELP_MENU_STATE.JUMP;
		else if (keyboard_check_pressed(vk_down))
			curr_state = HELP_MENU_STATE.SLIDE;
		else if (keyboard_check_pressed(vk_right))
			curr_state = HELP_MENU_STATE.ATTACK;
						
		break;
						
	case HELP_MENU_STATE.JUMP:
		draw_sprite(spr_jump_instruction, 0, _xpos + 540, _ypos - 240);
		draw_sprite(spr_skip_instruction, 0, _xpos + 20, _ypos + 150);
					
		draw_sprite(spr_up_key, 1, _xpos + 20, _ypos - 165);
		draw_sprite(spr_down_key, 0, _xpos + 20, _ypos - 40);
		draw_sprite(spr_left_key, 0, _xpos - 180, _ypos - 40);
		draw_sprite(spr_right_key, 0, _xpos + 220, _ypos - 40);
		draw_sprite(spr_space_bar, 0, _xpos + 20, _ypos + 95);
						
		draw_sprite_ext(spr_jump_graphic, 0, _xpos + 540, _ypos + 110, scale, scale, 0, c_white, 1);
						
		if (keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_space))
			curr_state = HELP_MENU_STATE.IDLE;
		else if (keyboard_check_pressed(vk_down))
			curr_state = HELP_MENU_STATE.SLIDE;
		else if (keyboard_check_pressed(vk_right))
			curr_state = HELP_MENU_STATE.ATTACK;
					
		break;
						
	case HELP_MENU_STATE.SLIDE:
		draw_sprite(spr_slide_instruction, 0, _xpos + 520, _ypos - 240);
		draw_sprite(spr_skip_instruction, 0, _xpos + 20, _ypos + 150);
					
		draw_sprite(spr_up_key, 0, _xpos + 20, _ypos - 165);
		draw_sprite(spr_down_key, 1, _xpos + 20, _ypos - 40);
		draw_sprite(spr_left_key, 0, _xpos - 180, _ypos - 40);
		draw_sprite(spr_right_key, 0, _xpos + 220, _ypos - 40);
		draw_sprite(spr_space_bar, 0, _xpos + 20, _ypos + 95);
						
		draw_sprite_ext(spr_slide_graphic, 0, _xpos + 540, _ypos + 110, scale, scale, 0, c_white, 1);
						
		if (keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_space))
			curr_state = HELP_MENU_STATE.JUMP;
		else if (keyboard_check_pressed(vk_down))
			curr_state = HELP_MENU_STATE.IDLE;
		else if (keyboard_check_pressed(vk_right))
			curr_state = HELP_MENU_STATE.ATTACK;
					
		break;
						
	case HELP_MENU_STATE.ATTACK:
		draw_sprite(spr_attack_instruction, 0, _xpos + 540, _ypos - 240);
		draw_sprite(spr_skip_instruction, 0, _xpos + 20, _ypos + 150);
					
		draw_sprite(spr_up_key, 0, _xpos + 20, _ypos - 165);
		draw_sprite(spr_down_key, 0, _xpos + 20, _ypos - 40);
		draw_sprite(spr_left_key, 0, _xpos - 180, _ypos - 40);
		draw_sprite(spr_right_key, 1, _xpos + 220, _ypos - 40);
		draw_sprite(spr_space_bar, 0, _xpos + 20, _ypos + 95);
						
		draw_sprite_ext(spr_attack_graphic, 0, _xpos + 540, _ypos + 110, scale, scale, 0, c_white, 1);
						
		if (keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_space))
			curr_state = HELP_MENU_STATE.JUMP;
		else if (keyboard_check_pressed(vk_down))
			curr_state = HELP_MENU_STATE.SLIDE;
		else if (keyboard_check_pressed(vk_right))
			curr_state = HELP_MENU_STATE.IDLE;
						
		break;
}