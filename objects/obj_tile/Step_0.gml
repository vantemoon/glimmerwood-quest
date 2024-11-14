/// @description Move and destroy

if (moving)
	x += global.ground_speed * global.speed_modifier - 5;
	
if (global.game_complete)
{
	if image_alpha > 0 image_alpha -= 0.01;
}

if (x <= -300)
	instance_destroy();