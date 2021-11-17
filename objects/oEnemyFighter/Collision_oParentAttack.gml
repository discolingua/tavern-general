// 
if (other.isFriendly) {
	if (other.toHit >= statArmorClass) {
		statHP -= other.damage;
		audio_play_sound_at(sndThunk,x,y,0,100,300,1,false,1);
	}

	instance_destroy(other.id);
}