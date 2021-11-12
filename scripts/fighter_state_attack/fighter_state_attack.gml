function fighter_state_attack(){
	with (oChest) {
		if (distance_to_object(other) <= other.attackRange) {
			show_debug_message("Attack range");
			other.image_angle = point_direction(other.x,other.y,x,y);
			
			// create a bullet instance with D20 stats
			var _i = instance_create_layer(other.x,other.y,"Instances",oSwordHit);
			_i.direction = point_direction(_i.x, _i.y, x, y);
			_i.speed = 15;
			_i.damage = random(8) + 1 + statBonus(other.statStr);
		}
	}
	state_switch("Attacked");
}