/// @description jump_check() checks if the player is jumping or falling

function jump_check(){
	if (jumping)
	{
		if (vsp < 0)
		{
			jumping = true;
		}
		else
		{
			jumping = false;
			falling = true;
		}
	}
}