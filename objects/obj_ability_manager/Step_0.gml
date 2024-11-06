/// @description Check if abilities are ready
shield_ready = shield_unlocked and (obj_player.num_flower >= 5) and !obj_player.shield_activated;
magnet_ready = magnet_unlocked and (obj_player.num_flower >= 10) and !obj_player.magnet_activated;
missile_ready = missile_unlocked and (obj_player.num_flower >= 15);