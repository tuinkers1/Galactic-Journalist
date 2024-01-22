/// @description Insert description here
// You can write your code in this editor

//Set depth

depth = y - 100
// Vertical movement
walkSpeed = 0.1
h_move = 0

// Vertical movement

player_grav = 0.06
player_jumpspeed = -1.75
v_move = 0

//quicksand
player_sink_speed = .25;
player_jumpspeed_quicksand = -4.5;
player_quicksand_time = 1;

// Dash
dashallowed = true
dashduration = 0
dashspeed = 3
dashdirection = 0
dashcooldown = 0

// Jump buffer
counter_buffer = 0
max_buffer = 5

// Coyote time
coyote_counter = 0
coyote_max = 5

// Walljump
jumped = true;
OnLadder = false;
walljump_force = 60;
wall_direction = 0;
walljumping_state = false;
walljumped = false;
airborne_count = 0;
airborne = false;
wall_time = 0;
wall_cooldown = 0;
wall_last = 0

// testing 
x_ = 0

// transition
transwidth = 0

// Dialog status

dialogstatus = false;

camposv = 0
camposh = 0

global.transtime = 500

//Springs
hbounceduration = 0;
vbounceduration = 0;
horizontal_grav = -0.12;
bounceallowed = true;

