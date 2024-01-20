/// @description Insert description here
// You can write your code in this editor

// keyboard input detection 
var left= keyboard_check(ord("A")) || keyboard_check(vk_left);
var right= keyboard_check(ord("D")) || keyboard_check(vk_right);
var jump_held = keyboard_check(vk_up) || keyboard_check(vk_space);
var jump = keyboard_check_pressed(vk_up) || keyboard_check(vk_space);
var up = keyboard_check(vk_up) || keyboard_check(ord("W"))
var down = keyboard_check(vk_down) || keyboard_check(ord("S"))
var grounded = place_meeting(x,y+1,obj_par_solid)
var dashing = keyboard_check(vk_shift)
var flash = keyboard_check(ord("F"))




// temp ingame changing code

//air gravity
if (not place_meeting(x,y+1,obj_solid)) && dashduration == 0
{
	v_move += player_grav
}


// dashing - rachel
if grounded && !place_meeting(x+2,y,obj_par_solid){
	dashallowed = true
}
 if dashing and dashallowed == true && !place_meeting(x,y,obj_solid) {
	dashduration = 15
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
if dashduration == 0 && grounded {
	walkSpeed = 2
	h_move = (right - left) * walkSpeed;
}
	if dashduration == 0 && !grounded {
	walkSpeed = 0.6
	h_move = (right - left) * walkSpeed ;
}
// collision
if place_meeting(x+h_move,y,obj_solid){
while(not place_meeting(x + sign(h_move),y,obj_solid))
{
	x += sign(h_move);
}

h_move = 0
}






// collison with death barrier - rachel
if place_meeting(x,y,obj_die){
	x= obj_respawnpointph
	y = obj_respawnpointph
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
if v_move < 0 and !jump_held && dashallowed = true {
v_move = max(v_move, player_jumpspeed/8);
	}
}

//ladder - eddy
if (place_meeting(x, y, obj_ladder)){
	OnLadder = true	
}
else{
	OnLadder = false
}

if (OnLadder){
	//negating gravity
	v_move = 0 
	
	if (up == 1) v_move = -walkSpeed
	if (down == 1) v_move = walkSpeed

}

// WALL DETECTION TO RIGHT

if (place_meeting(x+1, y, obj_solid)) {
	wall_direction = 1
}

// WALL DETECTION TO LEFT

if (place_meeting(x-1, y, obj_solid)) {
	wall_direction = -1;
	walljumped = false;
}

// NO WALL DETECTION

if (!place_meeting(x-1 or x+1, y, obj_solid)) {
	wall_direction = 0;
	walljumped = false;
}

// WALL STICK

if (wall_direction = 1) && right = true or (wall_direction = -1) && left = true {;
	if (v_move) > 1 {
		v_move = 1
	}
}

// wall jump - Iveta/Renardo

if (keyboard_check_pressed(vk_space) = true) && (!grounded) && (OnLadder = false) {
	if (wall_direction != 0) && (walljumping_state = false) && (left or right = true) && (walljumped = false) {
		h_move -= walljump_force * wall_direction * 0.42;
		v_move = -5;
		walljumping_state = true;
		walljumped = true;
		alarm[0] = 42
	}
}

// if ability is pressed, spawn obj_ability - eddy
if (flash){
var _inst = instance_create_layer(x, y, "Collision", obj_flash);

} 

// Quick quicksand effect
if (place_meeting(x, y + 1, obj_quicksandph))  {
    v_move = player_sink_speed;
    // We are on the quicksand
    if (jump) {
        // Jump
        v_move = player_jumpspeed_quicksand;
    }
}


// movement
x += round(h_move)

// Vertical collision accounting for semisolids
var vcollide;
vcollide = instance_place(x,y+v_move,obj_par_solid);
if (vcollide != noone)
{
    if ((vcollide).type == 1)
    {
        while (!place_meeting(x,y+sign(v_move), obj_par_solid))
        y+=sign(v_move);
        v_move = 0;
        grounded = true;
    }
    if (((vcollide).type == 2) && sign(v_move) == 1)
    {
        if (!place_meeting(x,y,obj_par_solid))
        {
            while (!place_meeting(x,y+sign(v_move),obj_par_solid))
            y += 1;
            v_move = 0;
            grounded = false
        }
    }
}
else
grounded = false;
y += v_move

// Checks whather player is in dialog and stop movement.


//draw_rectangle_colour(-200, 200, 2000, -200, c_black, c_black, c_black, c_black, false);
//draw_sprite_stretched(global.old_lvl,0,0,0,500,500)


//Cave parallax background



