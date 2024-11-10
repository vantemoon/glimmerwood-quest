/// @description Check for hovering 

var _mousex = device_mouse_x_to_gui(0);
var _mousey = device_mouse_y_to_gui(0);

if (visible and position_meeting(_mousex, _mousey, id))
{
	image_index = 1;
	//if (device_mouse_check_button(0, mb_left))
	//{
	//	image_index = 2;
	//	interact();
	//}
}
else
{
	image_index = 0;
}