/// @description Write current score on screen

draw_set_color(c_white);
draw_set_font(fnt_menu);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_text(display_get_gui_width() - 20, 100, 
		  string_repeat("0", 4-string_length(string(global.current_score))) + string(global.current_score));