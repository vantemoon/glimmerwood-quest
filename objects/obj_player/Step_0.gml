/// @description Movement control

#region // Get Player Input

if (has_control)
{
	key_left = keyboard_check(vk_left);
	key_right = keyboard_check(vk_right);
	key_jump = keyboard_check_pressed(vk_space);
}
else
{
	key_left = false;
	key_right = false;
	key_jump = false;
}

#endregion

#region // Calculate Movement

var _move = key_right - key_left;

hsp = _move * walksp;
vsp = vsp + grv;

var _jumping = false;

// Single jump
if (place_meeting(x, y + 1, obj_tile_ground)) and key_jump
{
	vsp = -20;
	_jumping = true;
}

// Horizontal Collision
if (place_meeting(x + hsp, y, obj_wall))
{
	while (!place_meeting(x + sign(hsp), y, obj_wall))
	{
		x  = x + sign(hsp);
	}
	hsp = 0;
}
if (place_meeting(x + hsp, y, obj_tile_ground))
{
	while (!place_meeting(x + sign(hsp), y, obj_tile_ground))
	{
		x  = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

// Vertical Collision
if (place_meeting(x, y + vsp, obj_tile_ground))
{
	while (!place_meeting(x, y + sign(vsp), obj_tile_ground))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

#endregion

#region // Animation

if (_jumping)
{
	sprite_index = spr_player; // TODO
	image_speed = 0;
	// if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}

else 
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_player;
	}
	else
	{
		sprite_index = spr_player_walking;
	}
}

if (hsp != 0) image_xscale = sign(hsp);


#endregion
