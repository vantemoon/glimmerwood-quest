/// @description Create global variables

global.speed_modifier = 1;

global.ground_speed = -10 * global.speed_modifier;
global.ground_level = 900;

enum ZONE
{
	ONE,
	TWO,
	THREE,
	BOSS
}

global.current_zone = ZONE.ONE;
global.zone_one_complete = false;
global.zone_two_complete = false;
global.zone_three_complete = false;
global.zone_boss_complete = false;
global.game_over = false;

global.current_score = 0;
alarm[0] = 5;
