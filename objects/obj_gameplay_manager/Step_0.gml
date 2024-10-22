/// @description Check every frame

// Check magical flowers
if (!global.zone_one_complete)
{
	global.current_zone = ZONE.ONE;
}
if (obj_player.num_flower >= 30 and !global.zone_two_complete)
{
	global.zone_one_complete = true;
	if (global.current_zone != ZONE.TWO)
		obj_player.num_flower = 0;
	global.current_zone = ZONE.TWO;
}
if (obj_player.num_flower >= 50 and !global.zone_three_complete)
{
	global.zone_two_complete = true;
	if (global.current_zone != ZONE.THREE)
		obj_player.num_flower = 0;
	global.current_zone = ZONE.THREE;
}
if (obj_player.num_flower >= 70 and !global.zone_boss_complete)
{
	global.zone_three_complete = true;
	if (global.current_zone != ZONE.BOSS)
		obj_player.num_flower = 0;
	global.current_zone = ZONE.BOSS;
}

// Update game speed
global.speed_modifier += 0.0002;

// Cap game speed for each zone
switch (global.current_zone)
{
	case ZONE.ONE:
		if (global.speed_modifier >= 1.5)
			global.speed_modifier = 1.5;
		global.monster_worth = 2;
		obj_ability_manager.shield_ready = true;
		break;
	
	case ZONE.TWO:
		if (global.speed_modifier >= 2)
			global.speed_modifier = 2;
		global.monster_worth = 4;
		obj_ability_manager.slowdown_ready = true;
		break;
		
	case ZONE.THREE:
		if (global.speed_modifier >= 2.5)
			global.speed_modifier = 2.5;
		global.monster_worth = 6;
		obj_ability_manager.missile_ready = true;
		break;
		
	case ZONE.BOSS:
		if (global.speed_modifier >= 3)
			global.speed_modifier = 3;
		global.monster_worth = 8;
		break;

}

var _prev_game_over = global.game_over;
global.game_over = obj_player.died;

if (global.game_over and !_prev_game_over) {
	if (global.current_score > global.high_score) {
		global.high_score = global.current_score;
		ini_open("save.txt");
		ini_write_real("save", "high_score", global.high_score);
		ini_close();		
	}
	global.ground_speed = 0;
	global.background_speed = 0;
	global.speed_modifier = 0;
	slide_transition(TRANS_MODE.RESTART);
	// TODO: add end game UI
}