/// @description Draw the pause menu

// Disable alpha blending
//gpu_set_blendenable(false);

// Draw the pause menu if game is paused
if (paused)
{
	surface_set_target(application_surface);
	if (surface_exists(paused_surf))
	{
		draw_surface(paused_surf, 0, 0);
	    draw_set_alpha(0.5);
	    draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
	    draw_set_alpha(1);
	    draw_set_halign(fa_center);
	    draw_text_transformed_colour(room_width / 2, room_height / 2, "PAUSED", 2, 2, 0, c_white, c_white, c_white, c_white, 1);
	    draw_set_halign(fa_left);
    }
	else
	{
		paused_surf = surface_create(res_width, res_height);
		buffer_set_surface(paused_surf_buffer, paused_surf, 0);
	}
	surface_reset_target();
}

if (keyboard_check_pressed(ord("P")))
{
	if (!paused)
	{
		paused = true;
		
		layer_hspeed(layer1_id, 0);
		layer_hspeed(layer2_id, 0);
		layer_hspeed(layer3_id, 0);
		layer_hspeed(layer4_id, 0);
		layer_hspeed(layer5_id, 0);
		layer_hspeed(layer6_id, 0);
		layer_hspeed(layer7_id, 0);
		
		//gpu_set_blendenable(true);
		
		//paused_gui_surf = surface_create(res_width, res_height);
		//surface_set_target(paused_gui_surf);
		//with (all) {
		//    event_perform(ev_draw,ev_gui_begin);
		//    event_perform(ev_draw,ev_gui);
		//    event_perform(ev_draw,ev_gui_end);
		//}
		//surface_reset_target();
		
		//if (buffer_exists(paused_gui_surf_buffer))
		//	buffer_delete(paused_gui_surf_buffer);
		//paused_gui_surf_buffer = buffer_create(res_width * res_height * 4, buffer_fixed, 1);
		//buffer_get_surface(paused_gui_surf_buffer, paused_gui_surf, 0);
		
		instance_deactivate_all(true);
		
		paused_surf = surface_create(res_width, res_height);
		surface_set_target(paused_surf);
		gpu_set_blendenable(false);
		//draw_set_alpha(0.5);
		draw_surface(application_surface, 0, 0);
		//gpu_set_blendenable(true);
		//draw_surface(paused_gui_surf, 0, 0);
		//draw_set_alpha(1);
		surface_reset_target();
		gpu_set_blendenable(true);
		
		if (buffer_exists(paused_surf_buffer))
			buffer_delete(paused_surf_buffer);
		paused_surf_buffer = buffer_create(res_width * res_height * 4, buffer_fixed, 1);
		buffer_get_surface(paused_surf_buffer, paused_surf, 0);
	}
	
	else
	{
		paused = false;
		
		layer_hspeed(layer1_id, bg_1_hsp);
		layer_hspeed(layer2_id, bg_2_hsp);
		layer_hspeed(layer3_id, bg_3_hsp);
		layer_hspeed(layer4_id, bg_4_hsp);
		layer_hspeed(layer5_id, bg_5_hsp);
		layer_hspeed(layer6_id, bg_6_hsp);
		layer_hspeed(layer7_id, bg_7_hsp);
		
		instance_activate_all();
		if (surface_exists(paused_surf))
			surface_free(paused_surf);
		if (buffer_exists(paused_surf_buffer))
			buffer_delete(paused_surf_buffer);
	}
}

// Enable alpha blending
//gpu_set_blendenable(true);