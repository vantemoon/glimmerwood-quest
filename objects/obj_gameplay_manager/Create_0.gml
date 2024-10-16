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

global.game_over = false;
global.current_stage = ZONE.ONE;

global.current_score = 0;
alarm[0] = 5;
