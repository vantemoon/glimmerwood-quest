/// @description Draw highest score

draw_set_color(c_white);
draw_set_font(fnt_debug);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_text(display_get_gui_width() - 20, 20, 
		  "High Score " + string_repeat("0", 4-string_length(string(global.high_score))) + string(global.high_score));