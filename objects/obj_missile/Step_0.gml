/// @description Move and destroy

x -= global.ground_speed * global.speed_modifier * 1.5;

if (x >= display_get_width() + 300)
	instance_destroy();