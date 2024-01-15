/// @description Insert description here
// You can write your code in this editor
/*
// room transition camera on hold for now - rachel
if object_exists(obj_player){
	show_debug_message("meow!")
}


if !sprite_exists(global.old_lvl)
{ 
	var surface_ = surface_create(surface_get_width(application_surface), surface_get_height(application_surface));
	surface_set_target(surface_);
	draw_clear_alpha(c_black, 1);
	gpu_set_colorwriteenable(true , true , true , false);
	draw_surface(application_surface ,0 ,0);
	gpu_set_colorwriteenable(true , true , true , true);
	surface_reset_target();
	global.old_lvl = sprite_create_from_surface(surface_, 0, 0 , surface_get_width(application_surface), surface_get_height(application_surface), false, false, 0, 0)
	show_debug_message(global.old_lvl);
	surface_free(surface_)

}








/*
cposh = camera_get_view_x
cposv = camera_get_view_y
show_debug_message(cposv)
*/
// simple transition - rachel
if place_meeting(x,y,obj_player){
room_goto(targetroom)
other.x = targetx
other.y = targety
}