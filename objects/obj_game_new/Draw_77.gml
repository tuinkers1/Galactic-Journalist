/// @description Insert description here
// You can write your code in this editor

gpu_set_blendenable(true);

if (pause) {
	surface_set_target(application_surface);
	if surface_exists(pause_surf) draw_surface(pause_surf, 0, 0);
	else {
		pause_surf = surface_create(gameres_w, gameres_h)
		buffer_set_surface(pause_surf_buffer, pause_surf, 0);
	}
	surface_reset_target();
}


if (keyboard_check_pressed(ord("P"))) {
	if (!pause) 
		{
			pause = true;
			instance_deactivate_all(true);
			instance_create_layer(x,y,"Instances", obj_pause_text);
			instance_activate_object(obj_pause_text);
			instance_create_layer(x,y + 20, "Instances", obj_pause_escape);
			instance_activate_object(obj_pause_escape);
			pause_surf = surface_create(gameres_w, gameres_h);
			surface_set_target(pause_surf);
			draw_surface(application_surface, 0, 0);
			surface_reset_target();
		
			if (buffer_exists(pause_surf_buffer)) buffer_delete(pause_surf_buffer)
			pause_surf_buffer = buffer_create(gameres_w * gameres_h * 4, buffer_fixed, 1)
			buffer_get_surface(pause_surf_buffer, pause_surf, 0);
		}
		else 
		{
			pause = false;
			instance_destroy(obj_pause_text);
			instance_destroy(obj_pause_escape);
			instance_activate_all();
			if (surface_exists(pause_surf)) surface_free(pause_surf);
			if (buffer_exists(pause_surf_buffer)) buffer_delete(pause_surf_buffer);
		}
	}


gpu_set_blendenable(true)
		