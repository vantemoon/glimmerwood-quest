/// @description Intialise variables

owner = obj_player;

enum FLOWER_CHANGE
{
	PLUS_2,
	PLUS_4,
	PLUS_6,
	PLUS_8,
	MINUS_5,
	MINUS_15
}

flower_change = undefined;

duration = 0.75 * global.game_fps;
alarm[0] = duration;