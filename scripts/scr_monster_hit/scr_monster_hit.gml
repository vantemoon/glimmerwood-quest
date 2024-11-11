/// @description monster_hit(damage) applies damage on the monster
/// @param _damage sets the amount of damage to be applied 

function monster_hit(_damage)
{
	damage = argument[0];
	curr_hp -= damage;
	flash = true; // TODO: visual effect on hit
	if (curr_hp > 0)
	{
		curr_state = MONSTER_STATE.HIT;
		hit_now = true;
	}
	else 
	{
		curr_state = MONSTER_STATE.DEAD;
	}
}