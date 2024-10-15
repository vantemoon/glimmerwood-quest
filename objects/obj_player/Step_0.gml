/// @description Movement control

if (has_control)
	detect_key();

ground_check();
jump_check();
slash_check();
collision_check();

set_sprite();
health_check();
