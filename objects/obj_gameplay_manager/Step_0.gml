/// @description Check every frame

global.speed_modifier += 0.0001;

var _prev_game_over = global.game_over;
global.game_over = obj_player.died;

if (global.game_over and !_prev_game_over) {
	if (global.current_score > global.high_score) {
		global.high_score = global.current_score;
		ini_open("save.txt");
		ini_write_real("save", "high_score", global.high_score);
		ini_close();		
	}
	global.ground_speed = 0;
	global.background_speed = 0;
	global.speed_modifier = 0;
	slide_transition(TRANS_MODE.RESTART);
	// TODO: add end game UI
}