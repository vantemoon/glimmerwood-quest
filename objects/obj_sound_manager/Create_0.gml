/// @description Intialise variables

bgm_volume = 0.5;
sound_effect_volume = 0.5;

bgm = undefined;
bgm_playing = undefined;
bgm_id = undefined;

change_track = false;
bgm_fade = false;

audio_group_load(audiogroup_bgm);
audio_group_load(audiogroup_sfx);