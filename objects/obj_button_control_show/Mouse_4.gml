/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (instance_exists(obj_control_show)) {
	instance_destroy(obj_control_show)
}

else {
	instance_create_layer(room_width / 2, room_height - 100, "Instances", obj_control_show)
}