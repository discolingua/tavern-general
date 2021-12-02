state_update();


// check for death
if (statHP <= 0) {
	
	var _snd = choose(sndPain1,sndPain2,sndPain3,sndPain4,sndPain5);
	
	audio_play_sound_at(_snd,x,y,0,100,100,100,false,1);
	instance_destroy();
}