function enemy_fighter_state_attack(){

	// find and face nearest target

	if instance_exists(oParentFriendly) {
		var _t = instance_nearest(x,y,oParentFriendly);
		image_angle = point_direction(x, y, _t.x, _t.y);
		direction = image_angle;
		
		// loop through attack array to see what's in range this round
		for (var _i = 0; _i < array_length(attackStats); _i++ ) { 
			if (distance_to_object(_t) <= attackStats[_i].attackRange) {

				// if in range, spawn a bullet instance with D20 stats
		
				var _inst = instance_create_layer(x,y,"Instances",oSwordHit);
				_inst.direction = point_direction(x, y, _t.x, _t.y);
				_inst.speed = 5;
				_inst.isFriendly = false;
				_inst.toHit = floor(random(20)) + 1 + statBonus(other.statStr);
				_inst.damage = random(other.attackStats[_i].attackStrength)
					+ 1 + statBonus(other.statStr);
				speed = 0;
				
			} else {
				
				// move towards nearest target if nothing in range
				
				speed = moveSpeed;
			}
		}				
	}

	state_switch("Attacked");


}