function fighter_state_waiting() {
	if (initiativeOrder > oRoomManagerMain.timerLength) {
		show_debug_message("--> ");
		state_switch("Attack");
	}
	// image_angle += 1;
}