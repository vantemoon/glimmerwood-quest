/// @description Set up camera

cam = view_camera[0];
follow = obj_player;

view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;

x_to = xstart;
y_to = ystart;

window_set_fullscreen(true);