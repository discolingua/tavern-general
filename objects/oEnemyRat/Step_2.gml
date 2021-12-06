state_update();


// check for death
if (statHP <= 0) {
	
	var _snd = sndRatDies;
	
	audio_play_sound_at(_snd,x,y,0,100,100,100,false,1);
	instance_destroy();
}