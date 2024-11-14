/// @description Initialise variables

hit_once = false;
max_hp = 1;
curr_hp = max_hp;

enum MONSTER_STATE
{
	NORMAL,
	ATTACK,
	FIREBALL,
	HIT,
	DEAD
}

curr_state = MONSTER_STATE.NORMAL;