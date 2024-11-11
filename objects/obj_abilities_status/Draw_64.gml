/// @description Draw the abilities icons

if (obj_spawning_manager.ui_enabled)
{
	// Shield
	if (obj_ability_manager.shield_ready)
		draw_sprite(spr_shield_icon, 2, 840, 216);

	else if (obj_ability_manager.shield_unlocked)
		draw_sprite(spr_shield_icon, 1, 840, 216);

	else if (!obj_ability_manager.shield_unlocked)
		draw_sprite(spr_shield_icon, 0, 840, 216);

	// Magnet
	if (obj_ability_manager.magnet_ready)
		draw_sprite(spr_magnet_icon, 2, 960, 216);

	else if (obj_ability_manager.magnet_unlocked)
		draw_sprite(spr_magnet_icon, 1, 960, 216);

	else if (!obj_ability_manager.magnet_unlocked)
		draw_sprite(spr_magnet_icon, 0, 960, 216);
	
	// Missile
	if (obj_ability_manager.missile_ready)
		draw_sprite(spr_missile_icon, 2, 1080, 216);

	else if (obj_ability_manager.missile_unlocked)
		draw_sprite(spr_missile_icon, 1, 1080, 216);

	else if (!obj_ability_manager.missile_unlocked)
		draw_sprite(spr_missile_icon, 0, 1080, 216);
}