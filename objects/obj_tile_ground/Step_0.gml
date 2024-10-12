/// @description Insert description here
// You can write your code in this editor

x += global.ground_speed;


if (x <= -260) {
	instance_create_layer(room_width + 258, y, layer, object_index);
	instance_destroy();
}
