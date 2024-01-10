/// @description Insert description here
// You can write your code in this editor

// keyboard input detection 
var left= keyboard_check(ord("A")) || keyboard_check(vk_left);
var right= keyboard_check(ord("D")) || keyboard_check(vk_right);
var jump_held = keyboard_check(vk_up) || keyboard_check(vk_space);
var jump = keyboard_check_pressed(vk_up) || keyboard_check(vk_space);
var up = keyboard_check(vk_up) || keyboard_check(ord("W"))
var down = keyboard_check(vk_down) || keyboard_check(ord("S"))
var grounded = place_meeting(x,y+1,obj_solid)
var dashing = keyboard_check(vk_shift)
var flash = keyboard_check(ord("F"))



// temp ingame changing code

//air gravity
if (not place_meeting(x,y+1,obj_solid)) && dashduration == 0
{
	v_move += player_grav
}


// dashing - rachel
if grounded{
	dashallowed = true
}
 if dashing and dashallowed == true && !place_meeting(x,y,obj_solid) {
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
h_move = 0
v_move = 0
}


// basic movement and gravity - rachel
// calculate  movement
if dashduration ==0
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

//Dynamic jump height - Niels



// collison with death barrier - rachel
if place_meeting(x,y,obj_die){
	x= 55
	y = 680
}


if grounded {
	jumped = false
}
else{ 
	if coyote_counter == 0 {
   jumped =true
	}
}

//coyote time - Rachel
if grounded = false && coyote_counter > 0
{
	coyote_counter -= 1
	if jumped = false && jump 
	{
		v_move = player_jumpspeed
		jumped = true
	}
}
else 
{
	coyote_counter = coyote_max
}

	


//input buffering and jump - Rachel
if jump{
	counter_buffer = max_buffer;
}
if counter_buffer > 0 {
	counter_buffer -= 1
	if grounded && keyboard_check_pressed(vk_space){
		v_move = player_jumpspeed;
		counter_buffer =0;
		jumped = true
	}
		//Dynamic jump height - Niels
if v_move < 0 and !jump_held and dashallowed = true {
v_move = max(v_move, player_jumpspeed/4);
	}
}







// wall jump - Iveta 
if (jump) && (place_meeting(x+1,y,obj_solid)) && walljumped == false  || jump && (place_meeting(x-1,y,obj_solid)) && walljumped == false
{ 
v_move = player_jumpspeed
walljumped = true
}

if grounded {
walljumped = false	
}

// if ability is pressed, spawn obj_ability - eddy
if (flash){
var _inst = instance_create_layer(x, y, "Collision", obj_flash);
} 


// movement
x += h_move
y += round(v_move)

