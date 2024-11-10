///// @description Draw the hearts

if (obj_spawning_manager.ui_enabled)
{
	// Draw background
	for (var _heart = 0; _heart < max_hp; _heart ++)
	{
		draw_sprite(spr_hearts, 0, 100 + (_heart * 110), 100);
	}

	// Draw current hearts
	for (var _heart = 0; _heart < curr_hp; _heart ++)
	{
		draw_sprite(spr_hearts, 1, 100 + (_heart * 110), 100);
	}

	// Update message
	if (timer > 0)
	{
		draw_set_font(fnt_gentium_bold_28);
		draw_text(x + 310, y - 50, update_message);
		timer --;
	}
	else
	{
		draw_text(x + 310, y - 50, "");
	}
}