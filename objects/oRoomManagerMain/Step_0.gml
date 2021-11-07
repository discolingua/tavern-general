if (timerLength > 0) {
	timerLength--; 
} else {
	audio_play_sound_at(sndBell, 0, 0, 0, 100, 300, 1, false, 1);
	timerLength = timerLengthMax;
}