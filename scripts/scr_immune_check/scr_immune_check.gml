/// @description immune_check() checks if the player is in immune frame
function immune_check(){
	if (hit_once)
	immune_frame--;
	
	if (immune_frame <= 0)
	{
		hit_once = false;
		immune_frame = 20;
	}
}