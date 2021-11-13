if (timerLength > 0) {
	timerLength--; 
} else {
	with(oCombatEntity) {
		// reset all NPCs at top of new round
		speed = 0;
		state_switch("Waiting");
	}
	audio_play_sound_at(sndBell, 0, 0, 0, 100, 300, 1, false, 2);
	timerLength = timerLengthMax;
}