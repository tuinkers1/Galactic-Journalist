/// @description Insert description here
// You can write your code in this editor

if place_meeting(x, y, obj_dash_grant) and dashgranted = false {
	instance_create_layer(x, y, "Instances", obj_dialogue_dash);
	dialogstatus = true;
	dashgranted = true;
}


