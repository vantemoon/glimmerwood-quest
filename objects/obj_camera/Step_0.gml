/// @description Update camera

// Update destination
if (instance_exists(follow))
{
	x_to = follow.x + 300;
	y_to = follow.y + 100;
}

// Update object position
x += (x_to - x) / 20;
y += (y_to - y) / 20;

x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, -infinity, room_height - view_h_half);

// Update camera view
camera_set_view_pos(cam, x - view_w_half, y - view_h_half );