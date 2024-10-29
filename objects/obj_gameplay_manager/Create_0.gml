/// @description Create global variables

global.speed_modifier = 1;

global.game_fps = game_get_speed(gamespeed_fps);

global.ground_speed = -10;
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
global.game_complete = false;

global.current_score = 0;
global.monster_worth = 2;
alarm[0] = 5;
