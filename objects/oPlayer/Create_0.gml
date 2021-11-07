/// @description Properties


slide_factor=2;

walk_max=2;
walk_accel=.1;
run_max=4;
run_accel=.1;


//Changing Variables
x_speed=0;
y_speed=0;
enteredRoom=false;

//General Helpers
//timer=0;

//scale=1;

///Controls
//Directions
up_held=false;
down_held=false;
left_held=false;
right_held=false;

//Mobility
run_held=false;
jump_held=false;
jump_released=false;

// Trigger a summon
summon_pressed=false;

///Setup State Machine for Platform Boy
state_machine_init();

//Define States
state_create("Stand",pb_state_stand);
state_create("Walk",pb_state_walk);
//Set the default state
state_init("Stand");

