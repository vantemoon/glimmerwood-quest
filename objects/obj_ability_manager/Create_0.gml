/// @description Intialise variables


shield_unlocked = false;
timeslow_unlocked = false;
missile_unlocked = false;

// Testing only
//shield_unlocked = true;
//timeslow_unlocked = true;
//missile_unlocked = true;

shield_ready = shield_unlocked;
timeslow_ready = timeslow_unlocked;
missile_ready = missile_unlocked;

shield_activated = false;
timeslow_activated = false;

shield_duration = 3 * global.game_fps;
timeslow_duration = 3 * global.game_fps;
