/// @description Check for hovering 

var _mousex = device_mouse_x_to_gui(0);
var _mousey = device_mouse_y_to_gui(0);

if (visible and position_meeting(_mousex, _mousey, id))
{
	image_index = 1;
}
else
{
	image_index = 0;
}