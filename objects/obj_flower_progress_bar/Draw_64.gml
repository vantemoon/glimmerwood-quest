/// @description Draw the flower progress bar

if (obj_spawning_manager.ui_enabled)
{
	if (!obj_transition_zones.in_transition)
	{
		// Draw the progress bar fill
		if (global.current_zone != ZONE.BOSS)
		{
			draw_sprite_ext(spr_flower_progress_bar_fill, 0, 89, 216, (curr_flower / max_flower), 1, 0, c_white, 1);
		}

		else
		{
			draw_sprite(spr_flower_progress_bar_fill, 0, 82, 216);
		}

		// Draw the progress bar
		draw_sprite(spr_flower_progress_bar, 0, 100, 216);

		// Write the number
		draw_set_color(c_white);
		draw_set_font(fnt_gentium_bold_24);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		if (global.current_zone != ZONE.BOSS)
		{
			draw_text(160, 192, string(curr_flower) + "/" + string(max_flower));
		}

		else
		{
			draw_text(160, 192, string(curr_flower));
		}

		// Update message
		if (timer > 0)
		{
			draw_set_font(fnt_gentium_bold_28);
			draw_text(x + 410, y, update_message);
			timer --;
		}
		else
		{
			draw_text(x, y - 250, "");
		}
	}
}