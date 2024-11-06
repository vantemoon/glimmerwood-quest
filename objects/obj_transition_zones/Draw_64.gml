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
	
	switch (global.current_zone)
	{
		case ZONE.ONE:
			// Should not reach here
			break;
		
		case ZONE.TWO:
			// Draw the filled flower progress bar
			draw_sprite(spr_flower_progress_bar_fill, 0, 731, 500);
			draw_sprite(spr_flower_progress_bar, 0, 748, 500);
			draw_set_font(fnt_gentium_bold_24);
			draw_text(808, 476, "30/30");
			
			// New Ability
			draw_sprite(spr_shield_unlocked, 0, 960, 600);
			draw_sprite(spr_shield_description, 0, 960, 650);
			
			break;
			
		case ZONE.THREE:
			// Draw the filled flower progress bar
			draw_sprite(spr_flower_progress_bar_fill, 0, 731, 500);
			draw_sprite(spr_flower_progress_bar, 0, 748, 500);
			draw_set_font(fnt_gentium_bold_24);
			draw_text(808, 476, "50/50");
			
			// New Ability
			draw_sprite(spr_magnet_unlocked, 0, 960, 600);
			draw_sprite(spr_magnet_description, 0, 960, 650);
			
			break;
			
		case ZONE.BOSS:
			// Draw the filled flower progress bar
			draw_sprite(spr_flower_progress_bar_fill, 0, 731, 500);
			draw_sprite(spr_flower_progress_bar, 0, 748, 500);
			draw_set_font(fnt_gentium_bold_24);
			draw_text(808, 476, "70/70");
			
			// New Ability
			draw_sprite(spr_missile_unlocked, 0, 960, 600);
			draw_sprite(spr_missile_description, 0, 960, 650);
			
			break;
	}
}
