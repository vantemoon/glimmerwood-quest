/// @description Speed up to original in 2 seconds

if (speed_up_start)
{
	global.speed_modifier += speed_increment;
	if (global.speed_modifier >= prev_speed)
	{
		speed_up_start = false;
		
		// TODO: add visual effect
		
		obj_ability_manager.timeslow_activated = false;
		instance_destroy();
	}
}