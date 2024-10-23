/// @description Initialise variables

ymin = y;
ymax = y + 100;

vsp = 1.5;
going_up = true;

max_hp = 30;
curr_hp = max_hp;

curr_state = MONSTER_STATE.NORMAL;

num_fireball = 0;
shooting_ypos = 0;
alarm[0] = 5 * game_get_speed(gamespeed_fps);