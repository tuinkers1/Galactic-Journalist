var continues = keyboard_check_pressed(vk_space)

if continues{
	fade -= 0.01
}

if fade < 1{
	fade -= 0.01
	image_alpha = fade
}

if fade = 0 {
	instance_destroy()
	instance_create_layer(x,y, "Instances", obj_cutscene2)
}






