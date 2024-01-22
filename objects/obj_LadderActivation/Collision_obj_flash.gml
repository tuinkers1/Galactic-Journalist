/// @description Insert description here
// You can write your code in this editor

if not activated {
	
	for (var i = 0; i < 10; i++){
		instance_create_layer(170, 32 + (i * 8), "Instances", obj_ladder);
	}
	

}

activated = true;
