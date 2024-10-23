/// @description Shoot fireballs

if (num_fireball == 0)
{
	shooting_ypos = obj_player.y - 200;
}

instance_create_layer(x - 100, shooting_ypos, "Instances", obj_fireball);
num_fireball ++;

if (num_fireball < 3)
{
	alarm[0] = 0.15 * game_get_speed(gamespeed_fps);
}
else
{
	num_fireball = 0;
	alarm[0] = 5 * game_get_speed(gamespeed_fps);
}
