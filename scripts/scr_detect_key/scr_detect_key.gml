/// @description deteck_key() sets the key bindings

function detect_key()
{
	jump_key = keyboard_check_pressed(vk_up);
	jump_key_alt = keyboard_check_pressed(vk_space);
	slide_key = keyboard_check(vk_down);
	slash_key = keyboard_check_pressed(vk_right);
}