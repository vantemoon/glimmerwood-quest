/// @description Write current score on screen

draw_set_color(c_white);
draw_set_font(fnt_menu);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_text(display_get_gui_width() - 20, 100, 
		  string_repeat("0", 4-string_length(string(global.current_score))) + string(global.current_score));


// Debugging
draw_set_font(fnt_debug);
draw_set_halign(fa_left);
draw_text(100, 200,
		  "Zone " + string(global.current_zone + 1));
draw_text(100, 240,
		  "Speed " + string(abs(global.ground_speed * global.speed_modifier)));
draw_text(100, 280, 
		  "Magical  flower " + string(obj_player.num_flower));