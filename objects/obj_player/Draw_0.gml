/// @description Draw the flash

if (immune_frame > 0)
{
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle,
					c_white, 0.3);
}
else
{
	draw_self();
}

if (flash_alpha > 0)
{
	shader_set(sh_flash);
	
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle,
					flash_colour, flash_alpha);
					
	shader_reset();
}

