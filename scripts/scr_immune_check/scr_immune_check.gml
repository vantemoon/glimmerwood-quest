/// @description immune_check() checks if the player is in immune frame
function immune_check()
{
	if (immune_frame > 0)
	{
		immune_frame --;
	}
}