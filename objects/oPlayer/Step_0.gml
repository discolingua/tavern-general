/// @description Read Controls
//Directions
up_held=keyboard_check(vk_up);
down_held=keyboard_check(vk_down);
left_held=keyboard_check(vk_left);
right_held=keyboard_check(vk_right);

//Mobility
run_held=keyboard_check(vk_shift)
summon_pressed=keyboard_check_pressed(vk_space);
jump_held=keyboard_check(vk_space);
jump_released=keyboard_check_released(vk_space);

///Execute Script code.
state_execute();


