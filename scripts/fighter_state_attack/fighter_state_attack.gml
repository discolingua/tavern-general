function fighter_state_attack(){
	with (oChest) {
		if (distance_to_object(other) <= other.attackRange) {
			show_debug_message("Attack range");
		}
	}
	state_switch("Attacked");
}