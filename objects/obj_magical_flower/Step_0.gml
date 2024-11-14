/// @description Move and destroy

x += global.ground_speed * global.speed_modifier - 5;

if (x <= -100 or hit_once)
	instance_destroy();

if (global.game_complete)
{
	if image_alpha > 0 image_alpha -= 0.02;
}