/// @description deteck_key() sets the key bindings

function detect_key()
{
	jump_key = keyboard_check_pressed(vk_space);
	jump_key_alt = keyboard_check_pressed(vk_up);
	slide_key = keyboard_check(ord("D"));
	slash_key = keyboard_check_pressed(ord("S"));
}