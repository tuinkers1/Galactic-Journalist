/// @description Insert description here
// You can write your code in this editor

if place_meeting(x, y, obj_interactable) && keyboard_check_pressed(ord("E")) = true && dialogstatus = false {
	instance_create_layer(x, y, "Instances", obj_walljump_help_text)
	dialogstatus = true;
}