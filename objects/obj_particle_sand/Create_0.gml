/// @description Insert description here
// You can write your code in this editor

xStart = camera_get_view_x( view_camera[0]);
yStart = camera_get_view_y( view_camera[0]);

CameraWidth = room_width
CameraHeight = room_height

emitterSand = part_emitter_create(global.P_System);

part_emitter_region(global.P_System, emitterSand, xStart+16 + CameraWidth, xStart+16 + CameraWidth, yStart, yStart+32 + CameraHeight, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(global.P_System, emitterSand, global.ParticleSand, 1)












