if (!instance_exists(oParentEnemy)) {

	// check if all enemies are gone and
	// collect all remaining friendlies
	
	if (!instance_exists(oParentFriendly)) {
		show_debug_message("everyone died! This will go to game over");
	} else {
		with (oFighter){
			moveCharacterToParty(id);
		}
	}
	
	// clean up any NPCs remaining
	
	instance_destroy(oParentFriendly);
	room_goto(roomTavern);
	show_debug_message("go to tavern");
	
} else {


// inventory countdown timer
if (timerLength > 0) {
	timerLength--; 

} else {
	
	// reset all NPCs at top of new round
	with(oCombatEntity) {		
		if (isMob && state_name != "Inventory") {
			speed = 0;
			state_switch("Waiting");
		}
	}
	
	// clear any lingering projectiles
	with(oParentAttack) {
		instance_destroy();
	}
	
	audio_play_sound_at(sndBell, 0, 0, 0, 100, 300, 1, false, 2);
	timerLength = timerLengthMax;
}
}