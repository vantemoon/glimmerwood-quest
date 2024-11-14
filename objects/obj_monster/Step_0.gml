/// @description Move and destroy

x += global.ground_speed * global.speed_modifier - 5;

if (x <= -300)
	instance_destroy();

if (curr_state == MONSTER_STATE.DEAD)
{
	mask_index = -1;
	
	if (!sound_played)
	{
		audio_play_sound(snd_monster_damage, 300, false);
		sound_played = true;
	}
	
	if (!flower_gained)
	{
		obj_player.num_flower += global.monster_worth;
	
		var _indicator = instance_create_layer(obj_player.x, obj_player.y, "UI", obj_flower_indicator);
		_indicator.owner = obj_player;
		switch (global.monster_worth)
		{
			case 2:
				_indicator.flower_change = FLOWER_CHANGE.PLUS_2;
				break;
		
			case 4:
				_indicator.flower_change = FLOWER_CHANGE.PLUS_4;
				break;
		
			case 6:
				_indicator.flower_change = FLOWER_CHANGE.PLUS_6;
				break;
			
			case 8:
				_indicator.flower_change = FLOWER_CHANGE.PLUS_8;
				break;
		}
		
		flower_gained = true;
	}
	
	if (sprite_index != spr_monster_death_particle)
	{
		sprite_index = spr_monster_death_particle;
		image_index = 1;
		mask_index = -1;
	}
	if (image_index > image_number - 1)
		instance_destroy();
}

if (global.game_complete)
{
	if image_alpha > 0 image_alpha -= 0.02;
}