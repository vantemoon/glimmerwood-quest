/// @description character_flash() makes the player sprite flash white

function character_flash()
{
	if (flash_alpha > 0)
		flash_alpha -= 0.05;
}