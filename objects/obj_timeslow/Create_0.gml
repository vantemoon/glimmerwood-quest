/// @description Intialise variables

prev_speed = global.speed_modifier;
global.speed_modifier = global.speed_modifier / 2;

// TODO: add visual effect

duration = 3 * global.game_fps;
alarm[0] = duration;
