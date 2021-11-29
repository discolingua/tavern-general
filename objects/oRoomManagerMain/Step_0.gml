// Check to see if all enemies are gone

if (!instance_exists(oParentEnemy)) {

	// Move characters back into the party pool
	
	if (!instance_exists(oParentFriendly)) {
		show_debug_message("everyone died! This will go to game over");
	} else {
		with (oFighter){
			statXP++;
			moveCharacterToParty(id);
		}
	}
	
	// clean up any NPCs remaining
	
	instance_destroy(oParentFriendly);
	room_goto(rmVictoryScreen);
	show_debug_message("go to victory screen");
	
} else {


	// start of normal round loop

	if (timerLength > 0) {
		timerLength--; 

	} else {
	
	// reset all NPCs at top of new round
	
	with(oCombatEntity) {		
		if (isMob && state_name != "Inventory") {
			speed = 0;
			state_switch("Waiting");
			initiativeOrder = rollInitiative(statDex);
		}
	}
	
	// clear any lingering projectiles
	with(oParentAttack) {
		instance_destroy();
	}
	
	// play end of round bell
	
	audio_play_sound_at(sndBell, 0, 0, 0, 100, 300, 1, false, 2);
	timerLength = timerLengthMax;
	}
}