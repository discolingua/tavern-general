function fighter_state_attack(){
	
	// find and face nearest target
	
	var _t = instance_nearest(x,y,oParentEnemy);
	image_angle = point_direction(x, y, _t.x, _t.y);
	direction = image_angle;
	if (distance_to_object(_t) <= attackRange) {

		// if in range, spawn a bullet instance with D20 stats
		
		var _i = instance_create_layer(x,y,"Instances",oSwordHit);
		_i.direction = point_direction(x, y, _t.x, _t.y) + 45;
		_i.speed = 5;
		_i.isFriendly = true;
		_i.toHit = floor(random(20)) + 1 + statBonus(other.statStr);
		_i.damage = random(other.attackStrength) + 1 + statBonus(other.statStr);
	} else {
		
		// move towards nearest target if nothing in range
		
	
		
		speed = moveSpeed;
	}
	state_switch("Attacked");
}