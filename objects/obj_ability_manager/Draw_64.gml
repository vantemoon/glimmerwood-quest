/// @description Display status


// Shield
draw_set_color(c_white);
draw_set_font(fnt_debug);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
if (shield_ready)
	draw_text(display_get_gui_width() - 20, 140, "Shield: ready");
else
{
	draw_text(display_get_gui_width() - 20, 140, "Shield: not ready");
}

// Slow down
draw_set_color(c_white);
draw_set_font(fnt_debug);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
if (timeslow_ready)
	draw_text(display_get_gui_width() - 20, 180, "Time slow: ready");
else
{
	draw_text(display_get_gui_width() - 20, 180, "Time slow: not ready");
}

// Missile
draw_set_color(c_white);
draw_set_font(fnt_debug);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
if (missile_ready)
	draw_text(display_get_gui_width() - 20, 220, "Missile: ready");
else
{
	draw_text(display_get_gui_width() - 20, 220, "Missile: not ready");
}