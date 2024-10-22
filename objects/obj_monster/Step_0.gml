/// @description Move and destroy

x += global.ground_speed * global.speed_modifier;

if (x <= -300)
	instance_destroy();

if (curr_hp <= 0)
{
	// TODO: add death animation (if have)
	instance_destroy();
}