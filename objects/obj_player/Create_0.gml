/// @description Basics

hsp = 0;
vsp = 0;
grv = 0.8;
jumpsp = 23;
termsp = 23;

has_control = true;

max_hp = 3;
curr_hp = max_hp;
died = false;

immune_frame = 60;
hit_once = false;

num_flower = 0;

enum PLAYER_STATE
{
	NORMAL,
	JUMP,
	FALL,
	SLIDE,
	SLASH
}

sliding = false;
slashing = false;

shield_activated = false;

curr_state = PLAYER_STATE.NORMAL;
prev_state = PLAYER_STATE.NORMAL;
hit_list = ds_list_create();
