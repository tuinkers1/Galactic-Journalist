/// @description Insert description here
// You can write your code in this editor

//Set depth

depth = y
// Horizontal movement
walkSpeed = 1.2
h_move = 0
facing = 1;

// Vertical movement
player_grav = 0.2
player_jumpspeed = -4
v_move = 0

//quicksand
player_sink_speed = .25;
player_jumpspeed_quicksand = -0.5;

// Dash
dashallowed = true
dashduration = 0
dashspeed = 3
dashdirection = 0

// Jump buffer
counter_buffer = 0
max_buffer = 5

// Coyote time
coyote_counter = 0
coyote_max = 5

// Walljump
jumped = true 
OnLadder = false;
walljump_force = 10
wall_direction = 0;
walljumping_state = false;
walljumped = false;

// testing 
x_ = 0

// transition
transwidth = 0

// Dialog status

dialogstatus = false;

camposv = 0
camposh = 0

global.transtime = 500