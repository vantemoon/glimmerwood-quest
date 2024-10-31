/// @description Initialise variables

ymin = 300;
ymax = 590;

vsp = 1.5;
going_down = true;
can_move = true;

max_hp = 30;
curr_hp = max_hp;
hit_once = false;

curr_state = MONSTER_STATE.NORMAL;
prev_state = MONSTER_STATE.NORMAL;

attack_stage_index = 0;
hit_list = ds_list_create();

timer_on = false;