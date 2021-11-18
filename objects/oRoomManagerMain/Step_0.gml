if (timerLength > 0) {
	timerLength--; 

} else {
	
	// reset all NPCs at top of new round
	with(oCombatEntity) {		
		if (isMob) {
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