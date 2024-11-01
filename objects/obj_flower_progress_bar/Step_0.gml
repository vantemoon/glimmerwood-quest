/// @description Update the number of flowers

switch (global.current_zone)
{
	case ZONE.ONE:
		max_flower = 30;
		break;
		
	case ZONE.TWO:
		max_flower = 50;
		break;
		
	case ZONE.THREE:
		max_flower = 70;
		break;
}
curr_flower = obj_player.num_flower;