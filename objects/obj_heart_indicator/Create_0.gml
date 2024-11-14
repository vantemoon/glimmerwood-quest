/// @description Intialise variables

owner = obj_player;

enum HEART_CHANGE
{
	PLUS_1,
	MINUS_1
}

heart_change = undefined;

duration = 0.75 * global.game_fps;
alarm[0] = duration;
