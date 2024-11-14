/// @description Change sprite and update position

x = owner.x;
y = owner.y - 200;

if (heart_change != undefined)
{
	switch (heart_change)
	{
		case HEART_CHANGE.PLUS_1:
			sprite_index = spr_heart_plus_1;	
			break;
				
		case HEART_CHANGE.MINUS_1:
			sprite_index = spr_heart_minus_1;
			break;
	}
}