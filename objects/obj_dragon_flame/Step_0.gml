/// @description Move and destroy

x += (global.ground_speed * global.speed_modifier - 5) * 1.25;

if (x <= -300 or hit_once)
	instance_destroy();
	