/// @description Insert description here
// You can write your code in this editor


// keyboard input detection - rachel
var left= keyboard_check(ord("A")) || keyboard_check(vk_left);
var right= keyboard_check(ord("D")) || keyboard_check(vk_right);
var jump = keyboard_check(vk_up) || keyboard_check(vk_space);

// basic movement and gravity - rachel
// calculate  movement
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
if (not place_meeting(x,y+1,obj_solid))
{
	v_move += player_grav
}

//jump while grounded
else if (jump)
{
	v_move = player_jumpspeed
}

