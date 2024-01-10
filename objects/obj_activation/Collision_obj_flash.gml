/// @description Insert description here
// You can write your code in this editor

if not activated {
	show_debug_message("Do Something");
	
	for (var i = 0; i < 5; i++){
		instance_create_layer(200, 600 + (i * 64), "Collision", obj_ladder);
	}
	

}

activated = true;
