function fighter_state_attack(){
	image_angle = random(360);
	show_debug_message("!!");
	state_switch("Attacked");
}