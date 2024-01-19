/// @description Insert description here
// You can write your code in this editor

var cam_ver = camera_get_view_width(view_camera[0])
var cam_hor = camera_get_view_height(view_camera[0])

if paused == true {
	if !surface_exists(paused_surf) {
		if paused_surf = -1 {
			instance_deactivate_all(true)
		}
		paused_surf = surface_create(cam_hor, cam_ver);
		surface_set_target(paused_surf);
		draw_surface(application_surface, 0, 0);
		surface_reset_target()
	}
	else {
		draw_surface(paused_surf, 0, 0);
		draw_set_alpha(0.5);
		draw_rectangle_color(0, 0, cam_hor, cam_ver, c_black, c_black, c_black, c_black, false);
		draw_set_alpha(1);
		draw_set_halign(fa_center);
		draw_text_transformed_color(cam_hor / 2, cam_ver / 2, "Paused!", 2, 2, 0, c_white, c_white, c_white, c_white, 1);
		draw_set_halign(fa_left);
	}
	}