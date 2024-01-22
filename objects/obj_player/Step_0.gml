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
var dashing = keyboard_check_pressed(vk_shift)
var flash = keyboard_check_pressed(ord("F"))




// temp ingame changing code

if dialogstatus = true {
	h_move = 0;
}
//air gravity
if (not place_meeting(x,y+1,obj_solid)) && dashduration == 0
{
	v_move += player_grav
}


#region// dashing - rachel
if grounded && !place_meeting(x+2,y,obj_par_solid) && dialogstatus = false{
	dashallowed = true
}
 if dashing and dashallowed == true && !place_meeting(x,y,obj_solid) && dialogstatus == false && dashcooldown == 0 {
	dashduration = 15
	dashallowed = false
	dashdirection = point_direction(0, 0, right-left, down-up)
	h_move = lengthdir_x(dashspeed, dashdirection)
	v_move = lengthdir_y(dashspeed, dashdirection)
 }
if dashduration > 0 {
	dashduration -= 1
	dashcooldown = 10
} 
if dashduration == 1{
h_move = 0
v_move = 0
}
if dashcooldown > 0 {
	dashcooldown -= 1
}
#endregion
// basic movement and gravity - rachel
#region// calculate  movement
if dashduration == 0 && grounded && dialogstatus = false {
	walkSpeed = 1.2
	h_move = (right - left) * walkSpeed;
}
	if dashduration == 0 && !grounded && dialogstatus = false {
	walkSpeed = 0.7
	h_move = (right - left) * walkSpeed ;
}
#endregion
#region//Airborne status.

if airborne_count > 24 {
	airborne = true;
	//show_debug_message("Airborne.")
}
if (airborne_count < 24) {
	airborne = false;
	//show_debug_message("Not airborne.")
}
#endregion

#region // NO WALL DETECTION

if (!place_meeting(x-1 or x+1, y, obj_solid)) {
	//wall_direction = 0;
	//show_debug_message("No wall.")
	airborne_count += 1;
	//walljumped = false;
}

// WALL DETECTION TO RIGHT

if (place_meeting(x+1, y, obj_solid)){
	wall_direction = 1
	//show_debug_message("Right wall.");
	airborne = 0;
}

// WALL DETECTION TO LEFT

if (place_meeting(x-1, y, obj_solid)){
	wall_direction = -1;
	//show_debug_message("Left wall.");
	airborne = 0;
	//walljumped = false;
}
#endregion
#region// WALL STICK

if (wall_direction = 1) && right = true or (wall_direction = -1) && left = true {
	if (airborne = false) {
		if (v_move) > 0.5 {
			v_move = 0.4;
		}
	}
}
#endregion
// wall jump - Iveta/Renardo/Rachel

if wall_direction != wall_last || grounded{
walljumped = false
}

if (airborne != true) {
	if (keyboard_check_pressed(vk_space) = true) && (!grounded) && (OnLadder = false) && player_quicksand_time == 0{
		if   (walljumping_state = false) && (walljumped == false) {
			walljumping_state = true;
			wall_time = 10
			walljumped = true
			alarm[0] = 7;
		}
	}
} 

if wall_time !=0 {
	h_move = 0
	v_move = 0
	h_move -= walljump_force * wall_direction * 0.040;
			v_move += player_jumpspeed ;
			wall_time -=1
			wall_last = wall_direction
			
}

//show_debug_message(walljumped)
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
	//show_debug_message("meow")
	
}
else{ 
	if coyote_counter == 0 {
   jumped =true
	}
}
//show_debug_message("mew")
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
	if place_meeting(x,y,obj_semisolid){
		coyote_counter=0
	}

//input buffering and jump - Rachel
if jump{
	counter_buffer = max_buffer;
}
if counter_buffer > 0 {
	counter_buffer -= 1
	if grounded && keyboard_check_pressed(vk_space) && !place_meeting(x,y,obj_semisolid) && dialogstatus = false {
		v_move = player_jumpspeed;
		counter_buffer =0;
		jumped = true
	}
}
		//Dynamic jump height - Niels
		
if v_move < 0 and !jump_held && dashallowed = true && !place_meeting(x,y,obj_semisolid) {
v_move = max(v_move, player_jumpspeed/8);
	}


// vertical spring mechanic - eddy
//Upwards Spring
if place_meeting(x, y, obj_upspring) || place_meeting(x, y, obj_upspring_animation){
 	v_move = -2.3
}

//Downwards Spring
if place_meeting(x, y, obj_downspring) || place_meeting(x, y, obj_downspring_animation){
 	v_move = 2.3
}


// horizontal spring mechanic - eddy & niels
//Left Spring
if place_meeting(x, y, obj_leftspring)|| place_meeting(x, y, obj_leftspring_animation){
	h_move = -2.3
}

if place_meeting(x, y, obj_leftspring) && bounceallowed = true{
	hbounceduration = 15
	vbounceduration = 7
	bounceallowed = false;
}
if hbounceduration > 0 {
	hbounceduration -= 1;
	h_move = -5;
}

if vbounceduration > 0{
	vbounceduration -= 1;
	v_move = -2;
}
	
if hbounceduration = 0{
	bounceallowed = true;
}

////Right Spring
//if place_meeting(x, y, obj_rightspring)|| place_meeting(x, y, obj_rightspring_animation){
//	h_move = 2.3
//}
//
//if place_meeting(x, y, obj_rightspring) && bounceallowed = true{
//	hbounceduration = 15
//	vbounceduration = 7
//	bounceallowed = false;
//}
//if hbounceduration > 0 {
//	hbounceduration -= 1;
//	h_move = 5;
//}
//
//if vbounceduration > 0{
//	vbounceduration -= 1;
//	v_move = -2;
//}
//	
//if hbounceduration = 0{
//	bounceallowed = true;
//}


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


		


 if player_quicksand_time > 0 {
		player_quicksand_time -= 1
 }
show_debug_message(player_quicksand_time)

// if ability is pressed, spawn obj_ability - eddy
if (flash){
var _inst = instance_create_layer(x, y, "Instances", obj_flash);
} 

// Quick quicksand effect
if (place_meeting(x, y + 1, obj_quicksandph))  {
	player_quicksand_time = 30
    v_move = player_sink_speed;
	
    // We are on the quicksand
    if keyboard_check_pressed(vk_space ) {
        // Jump
        v_move = player_jumpspeed_quicksand;
    }
}
 if player_quicksand_time != 0 {
		player_quicksand_time -= 1
 }

// movement
x += h_move

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

/*
draw_rectangle_colour(-200, 200, 2000, -200, c_black, c_black, c_black, c_black, false);
draw_sprite_stretched(global.old_lvl,0,0,0,500,500)
