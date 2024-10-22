/// @description Basics

hsp = 0;
vsp = 0;
grv = 0.8;
jumpsp = 23;
termsp = 23;
clip_y = true;

has_control = true;

ducking = false;
jumping = false;
falling = false;
slashing = false;

max_hp = 3;
curr_hp = max_hp;
died = false;

immune_frame = 60;
hit_once = false;

num_flower = 0;

enum PLAYER_STATE
{
	FREE,
	JUMP,
	FALL,
	SLIDE,
	SLIDE_UP,
	SLASH
}