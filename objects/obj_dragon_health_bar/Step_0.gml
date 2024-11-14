/// @description Update current hp

if (object_exists(obj_dragon))
{
	xpos = obj_dragon.x + 230;
	ypos = obj_dragon.y + 200;
	
	curr_hp = obj_dragon.curr_hp;
}
else
{
	instance_destroy();
}