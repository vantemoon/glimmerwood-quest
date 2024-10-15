/// @description Set up game manager


//initialise high score
global.high_score = 0;
if (file_exists("save.txt")) {
	ini_open("save.txt");
	global.high_score = ini_read_real("save", "high_score", 0);
	ini_close();
}
