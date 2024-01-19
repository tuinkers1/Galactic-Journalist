/// @description Insert description here
// You can write your code in this editor

if not activated {
	show_debug_message("Do Something");
	
	for (var i = 0; i < 10; i++){
		instance_create_layer(200, 600 + (i * 8), "Instances", obj_ladder);
	}
	

}

activated = true;
