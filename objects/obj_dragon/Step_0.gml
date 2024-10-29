/// @description Move and destroy

y += vsp;

if (going_down)
{
	vsp = abs(vsp);
	going_down = (y + vsp) < ymax;
}
else
{
	vsp = -abs(vsp);
	going_down = (y + vsp) <= ymin;
}

if (curr_state == MONSTER_STATE.DEAD)
{
	obj_player.num_flower += global.monster_worth;
	// TODO: add death animation (if any)
	instance_destroy();
}