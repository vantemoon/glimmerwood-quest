/// @description Draw the transition UI

if (message_1 != "")
{
	draw_set_halign(fa_center)
	draw_text(960, 540, message_1);
	draw_text(960, 580, message_2);
}

if (obj_spawning_manager.transition_zone)
{
	switch (global.current_zone)
	{
		case ZONE.ONE:
			// No transition zone
			break;
	
		case ZONE.TWO:
			message_1 = "Zone 2";
			message_2 = "New ability unlocked: shield";
	}
}

else
{
	message_1 = "";
	message_2 = "";
}