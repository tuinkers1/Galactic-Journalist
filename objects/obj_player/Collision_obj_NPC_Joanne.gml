/// @description Insert description here
// You can write your code in this editor

if place_meeting(x, y, obj_NPC_Joanne) && keyboard_check_pressed(ord("E")) = true && dialogstatus = false {
	if obj_dialogstatus_global.dialogstatusJoanne = 1 { 
		instance_create_layer(x, y, "Instances", obj_NPC_Joanne_dialog_random);
		dialogstatus = true;
	}
	if obj_dialogstatus_global.dialogstatusJoanne = 0 { 
		instance_create_layer(x, y, "Instances", obj_NPC_Joanne_dialog_1);
		dialogstatus = true;
		obj_dialogstatus_global.dialogstatusJoanne = 1
	}
}



