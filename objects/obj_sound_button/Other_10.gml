/// @description Click event

image_index = 2;
if (visible and draw_sound_button)
{
	audio_play_sound(snd_button_click, 1000, false);
	interact();
}