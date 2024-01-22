/// @description Creates dialog boxes for Albert.
// This creates boxes for Albert and adjusts the dialog "object" created
// based on Albert's dialog status.

if place_meeting(x, y, obj_NPC_DynamiteJohnson) && keyboard_check_pressed(ord("E")) = true && dialogstatus = false {
	if obj_dialogstatus_global.dialogstatusDynamiteJohnson = 2 { 
		instance_create_layer(x, y, "Instances", obj_NPC_DynamiteJohnson_dialog_random);
		dialogstatus = true;
	}
	if obj_dialogstatus_global.dialogstatusDynamiteJohnson = 1 { 
		instance_create_layer(x, y, "Instances", obj_NPC_DynamiteJohnson_dialog_2);
		dialogstatus = true;
		obj_dialogstatus_global.dialogstatusDynamiteJohnson = 2
	}
	if obj_dialogstatus_global.dialogstatusDynamiteJohnson = 0 { 
		instance_create_layer(x, y, "Instances", obj_NPC_DynamiteJohnson_dialog_1);
		dialogstatus = true;
		obj_dialogstatus_global.dialogstatusDynamiteJohnson = 1
	}
}
