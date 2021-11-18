function enemyIsHit(){
	if (other.isFriendly) {
		if (other.toHit >= statArmorClass) {
			statHP -= other.damage;
		
			// blood particles
			part_type_speed(global.P_System, 3,5,.1,0);
			part_type_direction(global.P_System,other.direction-10,other.direction+10,0,0);
			part_particles_create(global.P_System, other.x, other.y, global.Particle1, 10);

			audio_play_sound_at(sndThunk,x,y,0,100,300,1,false,1);
		}
	
		// remove weapon instance on hit
		instance_destroy(other.id);
	}
}