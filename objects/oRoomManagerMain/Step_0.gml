if (timerLength > 0) {
	timerLength--; 
} else {
	with(oFighter) {
		// reset all NPCs at top of new round
		state_switch("Waiting");
	}
	audio_play_sound_at(sndBell, 0, 0, 0, 100, 300, 1, false, 2);
	timerLength = timerLengthMax;
}