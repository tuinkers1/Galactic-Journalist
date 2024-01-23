/// @description Insert description here
// You can write your code in this editor
draw_self();

if (place_meeting(x, y, obj_player)) && obj_player.dialogstatus = false {
	instance_create_layer(x, y-19, "Instances", obj_dialog_bubble);
}
else {
	if instance_exists(obj_dialog_bubble) {
		instance_destroy(obj_dialog_bubble);
	}
}

