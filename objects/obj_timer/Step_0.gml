/// @description Increment the values

if (global.game_complete)
	stopped = true;

if (!obj_pause_menu.paused and !stopped)
{
     seconds_raw += (1 / global.game_fps);
	 seconds = floor(seconds_raw);
	 
     if (seconds_raw >= 60)
     {
          seconds_raw = 0;
          minutes += 1;
     }
     
     if (minutes >= 60)
     {
          minutes = 0;
          hours += 1;
     }
}