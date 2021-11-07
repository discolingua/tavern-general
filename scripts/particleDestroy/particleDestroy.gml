function particleDestroy(){
	
	part_type_destroy(global.Particle1);
	part_emitter_destroy(global.P_System, global.Particle1_Emitter1);
	part_system_destroy(global.P_System);

	
}