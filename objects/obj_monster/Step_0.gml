/// @description Move and destroy

x += global.ground_speed * global.speed_modifier;

if (x <= -300)
	instance_destroy();

if (curr_state == MONSTER_STATE.DEAD)
{
	obj_player.num_flower += global.monster_worth;
	// TODO: add death animation (if any)
	instance_destroy();
}