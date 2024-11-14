/// @description Draw the transition UI

if (in_transition)
{
	// Draw the background
	draw_set_alpha(0.3);
	draw_set_color(c_black);
	draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
	
	// Reset draw settings
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	var _xpos = display_get_gui_width() / 2;
	var _ypos = display_get_gui_height() / 2 + 80;
	
	switch (global.current_zone)
	{
		case ZONE.ONE:
			// Should not reach here
			break;
		
		case ZONE.TWO:
			draw_sprite(spr_zone_transition_2, 0, _xpos, _ypos);
			
			break;
			
		case ZONE.THREE:
			draw_sprite(spr_zone_transition_3, 0, _xpos, _ypos);
			
			break;
			
		case ZONE.BOSS:
			draw_sprite(spr_zone_transition_b, 0, _xpos, _ypos);
			
			break;
	}
}
