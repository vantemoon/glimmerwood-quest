/// @description Initialise the variables

paused = false;
resumed = false;
return_home = false;

paused_surf = -1;
paused_surf_buffer = -1;

paused_gui_surf = -1;
paused_gui_surf_buffer = -1;

res_width = display_get_gui_width();
res_height = display_get_gui_height();

layer1_id = layer_get_id("Backgrounds_1");
layer2_id = layer_get_id("Backgrounds_2");
layer3_id = layer_get_id("Backgrounds_3");
layer4_id = layer_get_id("Backgrounds_4");
layer5_id = layer_get_id("Backgrounds_5");
layer6_id = layer_get_id("Backgrounds_6");
layer7_id = layer_get_id("Backgrounds_7");

bg_1_hsp = layer_get_hspeed(layer1_id);
bg_2_hsp = layer_get_hspeed(layer2_id);
bg_3_hsp = layer_get_hspeed(layer3_id);
bg_4_hsp = layer_get_hspeed(layer4_id);
bg_5_hsp = layer_get_hspeed(layer5_id);
bg_6_hsp = layer_get_hspeed(layer6_id);
bg_7_hsp = layer_get_hspeed(layer7_id);

enum PAUSE_MENU_STATE
{
	PAUSED,
	SOUND,
	HELP
}
curr_state = PAUSE_MENU_STATE.PAUSED;

bgm_value = 0.5;
sound_effect_value = 0.5;

slider_max_value = 1;
slider_min_value = 0;

bgm_selected = false;
sound_effect_selected = false;

enum HELP_MENU_STATE
{
	IDLE,
	JUMP,
	SLIDE,
	ATTACK
}
curr_state_2 = HELP_MENU_STATE.IDLE;