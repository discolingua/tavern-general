if (timerLength > 0) {
	with(oFighter) {
		if (initiativeOrder > other.timerLength) {
			state_switch("Attack");
		}
	}
	timerLength--; 
} else {
	with(oFighter) {
		// reset all NPCs at top of new round
		state_switch("Stand");
	}
	audio_play_sound_at(sndBell, 0, 0, 0, 100, 300, 1, false, 1);
	timerLength = timerLengthMax;
}