/// @description Move and destroy

x += global.ground_speed * global.speed_modifier - 5;

if (x <= -100 or hit_once)
	instance_destroy();
