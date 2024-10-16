/// @description Draw the hearts

// Draw background
for (var _heart = 0; _heart < max_hp; _heart ++)
{
	draw_sprite(spr_hearts, 0, 100 + (_heart * 85), 100);
}

// Draw current hearts
for (var _heart = 0; _heart < curr_hp; _heart ++)
{
	draw_sprite(spr_hearts, 1, 100 + (_heart * 85), 100);
}
