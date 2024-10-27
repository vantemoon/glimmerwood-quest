/// @description Intialise variables

prev_speed = global.speed_modifier;
curr_speed = 0.5;
global.speed_modifier = curr_speed;

speed_diff = prev_speed - curr_speed;
speed_increment = speed_diff / 2 / global.game_fps;
speed_up_start = false;

// TODO: add visual effect

duration = 3 * global.game_fps;
alarm[0] = duration;
