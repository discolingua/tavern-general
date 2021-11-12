statHP -= other.damage;
instance_destroy(other.id);
audio_play_sound_at(sndThunk,x,y,0,100,300,1,false,1);