/// @description Draw the health bar

draw_sprite(spr_dragon_health_bar, 0, xpos, ypos);
draw_sprite_ext(spr_dragon_health_bar_fill, 0, xpos, ypos - 34, 1, curr_hp / max_hp, 0, c_white, 1);