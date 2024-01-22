if upTime >= 0{
	upTime -= 1	
}

if upTime == 0{
	instance_destroy();
	instance_create_layer(x, y, "Instances", obj_leftspring_animation_R);
}









