/// @description Move and destroy

y += vsp;

if (going_up)
{
	vsp = abs(vsp);
	going_up = (y + vsp) < ymax;
}
else
{
	vsp = -abs(vsp);
	going_up = (y + vsp) <= ymin;
}

if (curr_state == MONSTER_STATE.DEAD)
{
	obj_player.num_flower += global.monster_worth;
	// TODO: add death animation (if any)
	instance_destroy();
}