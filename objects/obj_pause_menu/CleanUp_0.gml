/// @description Clean up

if (surface_exists(paused_surf))
	surface_free(paused_surf);
if (buffer_exists(paused_surf_buffer))
	buffer_delete(paused_surf_buffer);