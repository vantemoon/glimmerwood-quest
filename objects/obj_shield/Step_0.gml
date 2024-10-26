/// @description Update the position and destroy on collision

x = owner.x;
y = owner.y;

if (hit_once)
{
	// TODO: add flashing before disappearing
	instance_destroy();
}