/// @description Insert description here
// You can write your code in this editor

draw_self()
camposh += 15
if sprite_exists(global.old_lvl) {
draw_sprite_stretched(global.old_lvl,0,camposh,camposv,500,500)
}

if global.transtime >0 {
	global.transtime -=1
}

if global.transtime == 0 && sprite_exists(global.old_lvl){
	sprite_delete(global.old_lvl)
}



