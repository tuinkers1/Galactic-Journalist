/// @description Insert description here
// You can write your code in this editor


// keyboard input detection - rachel
var left= keyboard_check(ord("A")) || keyboard_check(vk_left);
var right= keyboard_check(ord("D")) || keyboard_check(vk_right);
var jump = keyboard_check(vk_up) || keyboard_check(vk_space);
var up = keyboard_check(vk_up) || keyboard_check(ord("W"))
var down = keyboard_check(vk_down) || keyboard_check(ord("S"))
var grounded = place_meeting(x,y+5,obj_solid)
var dashing = keyboard_check(vk_shift)

// basic movement and gravity - rachel
// calculate  movement
if dashduration == 0
h_move = (right - left) * walkSpeed;




// collision
if place_meeting(x+h_move,y,obj_solid){
while(not place_meeting(x + sign(h_move),y,obj_solid))
{
	x += sign(h_move);
}

h_move = 0
}
if place_meeting(x,y+v_move,obj_solid){
while(not place_meeting(x,y+sign(v_move),obj_solid))
{
	y += sign(v_move);
}
	v_move = 0;
}



// movement
x += h_move
y += v_move

//air gravity
if (not place_meeting(x,y+1,obj_solid)) and dashduration == 0 
{
	v_move += player_grav
}

//jump while grounded
else if (jump) 
{
	v_move = player_jumpspeed
}

// dashing - rachel
if grounded{
	dashallowed = true
}
 if dashing and dashallowed == true {
	dashduration = 20
	dashallowed = false
	dashdirection = point_direction(0, 0, right-left, down-up)
	h_move = lengthdir_x(dashspeed, dashdirection)
	v_move = lengthdir_y(dashspeed, dashdirection)
}
if dashduration > 0 {
	dashduration -= 1
}
if dashduration == 1{
h_move =0
v_move =0
}

