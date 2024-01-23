/// @description Insert description here
// You can write your code in this editor

//Jump particle
global.P_System = part_system_create_layer("Instances", 0);

global.Particle1 = part_type_create();

part_type_shape(global.Particle1, pt_shape_pixel);

part_type_size(global.Particle1, 1, 1, 0, 0);

part_type_colour3(global.Particle1, $FFFFFF & $FFFFFF, $FFFFFF & $FFFFFF, $FFFFFF & $FFFFFF);

part_type_alpha3(global.Particle1, 0.4, 1, 0);

part_type_speed(global.Particle1, 0.01, 0.06, 0, 0);

part_type_direction(global.Particle1, 20, 160, 0, 0);

part_type_life(global.Particle1, 40, 60);

//Dash particle
global.Particle2 = part_type_create();

part_type_shape(global.Particle2, pt_shape_pixel);

part_type_size(global.Particle2, 1, 1, 0, 0);

part_type_colour3(global.Particle2, $BBBBBB & $FFFFFF, $FFFFFF & $FFFFFF, $FFFFFF & $FFFFFF);

part_type_alpha3(global.Particle2, 0.4, 1, 0);

part_type_speed(global.Particle2, 2, 3, 0, 0);

part_type_direction(global.Particle2, 0, 360, 0, 0);

part_type_life(global.Particle2, 40, 60);

//Walljump particle
global.Particle3 = part_type_create();

part_type_shape(global.Particle3, pt_shape_pixel);

part_type_size(global.Particle3, 1, 1, 0, 0);

part_type_colour3(global.Particle3, $BBBBBB & $FFFFFF, $FFFFFF & $FFFFFF, $FFFFFF & $FFFFFF);

part_type_alpha3(global.Particle3, 0.4, 1, 0);

part_type_speed(global.Particle3, 0.01, 0.06, 0, 0);

part_type_direction(global.Particle3, 0, 360, 0, 0);

part_type_life(global.Particle3, 90, 120);

//Sand
global.ParticleSand = part_type_create();

part_type_shape(global.ParticleSand, pt_shape_pixel);

part_type_size(global.ParticleSand, 0.3,0.8,0,0)

part_type_colour3(global.ParticleSand, $FF1AE5D8 & $FFFFFF, $FF00B2B2 & $FFFFFF, $FF007F7F & $FFFFFF);

part_type_gravity(global.ParticleSand, 0.02, 180)

part_type_direction(global.ParticleSand, 100, 180, -0.05, 0.05);

part_type_life(global.ParticleSand, 270, 270);













