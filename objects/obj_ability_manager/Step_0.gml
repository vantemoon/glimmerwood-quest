/// @description Check if abilities are ready
shield_ready = shield_unlocked and (obj_player.num_flower >= 5);
magnet_ready = magnet_unlocked and (obj_player.num_flower >= 10);
missile_ready = missile_unlocked and (obj_player.num_flower >= 15);