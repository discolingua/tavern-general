
function fighter_state_stand(){
	if (isAttacking) {
		state_switch("Attack");
	}
}