/// @description health_check() checks if player is still alive

function health_check(){
	if (obj_player.curr_hp <= 0)
	{
		obj_player.died = true; 
		obj_player.sprite_index = spr_player; // TODO: change to player death animation
	}
}