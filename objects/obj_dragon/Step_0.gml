/// @description Move and destroy

if (free_move)
{
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
}

switch (curr_state)
{
	case MONSTER_STATE.NORMAL:
		break;
	
	case MONSTER_STATE.ATTACK:
		sprite_index = spr_dragon_tail_swing;
		break;
		
	case MONSTER_STATE.HIT:
		break;
	
	case MONSTER_STATE.DEAD:
		global.game_complete = true;
		// TODO: add death animation (if any)
		instance_destroy();
		break;
}