/// @description Draw the game progress bar on screen

var _hspeed = 0.45;

switch (global.current_zone)
{
	case ZONE.ONE:
		draw_sprite_part(spr_game_progress_bar_fill, 0, 0, 0, 540 * (1 / 8), 21, 690, 80);
		
		time_lapsed = 0;
		
		break;
		
	case ZONE.TWO:
		if (obj_spawning_manager.zone_2_transition_done)
		{
			draw_sprite_part(spr_game_progress_bar_fill, 0, 0, 0, 540 * (3 / 8), 21, 690, 80);
			
			time_lapsed = 0;
		}
		
		else if (obj_spawning_manager.transition_zone)
		{
			draw_sprite_part(spr_game_progress_bar_fill, 0, 0, 0, 540 * (1 / 8) + time_lapsed * _hspeed, 21, 690, 80);
			
			time_lapsed += 1;
		}
		
		else
		{
			draw_sprite_part(spr_game_progress_bar_fill, 0, 0, 0, 540 * (1 / 8), 21, 690, 80);
		}
		
		break;
		
	case ZONE.THREE:
		if (obj_spawning_manager.zone_3_transition_done)
		{
			draw_sprite_part(spr_game_progress_bar_fill, 0, 0, 0, 540 * (5 / 8), 21, 690, 80);
			
			time_lapsed = 0;
		}
		
		else if (obj_spawning_manager.transition_zone)
		{
			draw_sprite_part(spr_game_progress_bar_fill, 0, 0, 0, 540 * (3 / 8) + time_lapsed * _hspeed, 21, 690, 80);
			
			time_lapsed += 1;
		}
		
		else
		{
			draw_sprite_part(spr_game_progress_bar_fill, 0, 0, 0, 540 * (3 / 8), 21, 690, 80);
		}
		
		break;
		
	case ZONE.BOSS:
		if (global.game_complete)
		{
			draw_sprite_part(spr_game_progress_bar_fill, 0, 0, 0, 540, 21, 690, 80);
			
			time_lapsed = 0;
		}
		
		else if (obj_spawning_manager.zone_b_transition_done)
		{
			draw_sprite_part(spr_game_progress_bar_fill, 0, 0, 0, 540 * (7 / 8), 21, 690, 80);
			
			time_lapsed = 0;
		}
		
		else if (obj_spawning_manager.transition_zone)
		{
			draw_sprite_part(spr_game_progress_bar_fill, 0, 0, 0, 540 * (5 / 8) + time_lapsed * _hspeed, 21, 690, 80);
			
			time_lapsed += 1;
		}
		
		else
		{
			draw_sprite_part(spr_game_progress_bar_fill, 0, 0, 0, 540 * (5 / 8), 21, 690, 80);
		}
		
		break;
}

draw_sprite(spr_game_progress_bar, 0, 690, 90);

if (!global.game_complete)
	draw_sprite(spr_boss_zone_indicator, 0, 1228, 90);

switch (global.current_zone)
{
	case ZONE.ONE:
		draw_sprite(spr_zone_indicator, 0, 690 + 540 * (1 / 8), 90);
		
		break;
		
	case ZONE.TWO:
		if (obj_spawning_manager.zone_2_transition_done)
		{
			draw_sprite(spr_zone_indicator, 0, 690 + 540 * (3 / 8), 90);
			
			time_lapsed = 0;
		}
		
		else if (obj_spawning_manager.transition_zone)
		{
			draw_sprite(spr_zone_indicator, 0, 690 + 540 * (1 / 8) + time_lapsed * _hspeed, 90);
		}
		
		else
		{
			draw_sprite(spr_zone_indicator, 0, 690 + 540 * (1 / 8), 90);
		}
		
		break;
		
	case ZONE.THREE:
		if (obj_spawning_manager.zone_3_transition_done)
		{
			draw_sprite(spr_zone_indicator, 0, 690 + 540 * (5 / 8), 90);
			
			time_lapsed = 0;
		}
		
		else if (obj_spawning_manager.transition_zone)
		{
			draw_sprite(spr_zone_indicator, 0, 690 + 540 * (3 / 8) + time_lapsed * _hspeed, 90);
		}
		
		else
		{
			draw_sprite(spr_zone_indicator, 0, 690 + 540 * (3 / 8), 90);
		}
		
		break;
		
	case ZONE.BOSS:
		if (global.game_complete)
		{
			draw_sprite(spr_zone_indicator, 0, 690 + 540, 90);
			
			time_lapsed = 0;
		}
		
		else if (obj_spawning_manager.zone_3_transition_done)
		{
			draw_sprite(spr_zone_indicator, 0, 690 + 540 * (7 / 8), 90);
			
			time_lapsed = 0;
		}
		
		else if (obj_spawning_manager.transition_zone)
		{
			draw_sprite(spr_zone_indicator, 0, 690 + 540 * (5 / 8) + time_lapsed * _hspeed, 90);
		}
		
		else
		{
			draw_sprite(spr_zone_indicator, 0, 690 + 540 * (5 / 8), 90);
		}
		
		break;
}