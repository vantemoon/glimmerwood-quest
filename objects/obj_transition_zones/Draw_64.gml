/// @description Draw the transition UI

if (message_1 != "")
{
	draw_set_halign(fa_center)
	draw_text(960, 540, message_1);
	draw_text(960, 580, message_2);
}

switch (global.current_zone)
{
	case ZONE.ONE:
		// No transition zone
		break;
	
	case ZONE.TWO:
		if (obj_spawning_manager.zone_2_transition_done)
		{
			message_1 = "";
			message_2 = "";
		}
		
		else if (obj_spawning_manager.transition_zone)
		{
			message_1 = "Zone 2";
			message_2 = "New ability unlocked: shield";
		}
		
		else
		{
			message_1 = "";
			message_2 = "";
		}
		
	case ZONE.THREE:
		if (obj_spawning_manager.zone_3_transition_done)
		{
			message_1 = "";
			message_2 = "";
		}
		
		else if (obj_spawning_manager.transition_zone)
		{
			message_1 = "Zone 3";
			message_2 = "New ability unlocked: magnet";
		}
		
		else
		{
			message_1 = "";
			message_2 = "";
		}
		
	case ZONE.BOSS:
		if (obj_spawning_manager.zone_b_transition_done)
		{
			message_1 = "";
			message_2 = "";
		}
		
		else if (obj_spawning_manager.transition_zone)
		{
			message_1 = "Boss Zone";
			message_2 = "New ability unlocked: missile";
		}
		
		else
		{
			message_1 = "";
			message_2 = "";
		}
}