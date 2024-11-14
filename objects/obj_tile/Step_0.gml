/// @description Move and destroy

if (moving)
	x += global.ground_speed * global.speed_modifier - 5;

if (x <= -300)
	instance_destroy();
