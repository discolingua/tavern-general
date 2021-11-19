

// generate some npcs for potential recruitment

for (var _i = 0; _i < 4; _i++) {
	for (var _j= 0; _j < 3; _j++) {
		
		var _x = 200 + 80 * _i;
		var _y = 200 + 80 * _j;
		
		var _inst =	instance_create_layer(_x, _y, "Instances", oFighter);
		with(_inst) {
			
			// set the new NPC to non-combat state
			
			state_init("Tavern");
			
			// turn to face table
			
			if ( _i % 2 == 1) { image_angle = 180; }
		}
	}
}