/// @description Draw the bounding box for debugging

draw_self();

draw_set_colour(c_red);
draw_set_alpha(0.5);
draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
draw_set_alpha(1);
