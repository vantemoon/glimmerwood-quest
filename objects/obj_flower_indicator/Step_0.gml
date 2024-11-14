/// @description Change sprite and update position

x = owner.x;
y = owner.y - 200;

if (flower_change != undefined)
{
	switch (flower_change)
	{
		case FLOWER_CHANGE.PLUS_2:
			sprite_index = spr_flower_plus_2;	
			break;
				
		case FLOWER_CHANGE.PLUS_4:
			sprite_index = spr_flower_plus_4;
			break;
					
		case FLOWER_CHANGE.PLUS_6:
			sprite_index = spr_flower_plus_6;
			break;
				
		case FLOWER_CHANGE.PLUS_8:
			sprite_index = spr_flower_plus_8;
			break;
					
		case FLOWER_CHANGE.MINUS_5:
			sprite_index = spr_flower_minus_5;
			break;
					
		case FLOWER_CHANGE.MINUS_15:
			sprite_index = spr_flower_minus_15;
			break;
	}
}