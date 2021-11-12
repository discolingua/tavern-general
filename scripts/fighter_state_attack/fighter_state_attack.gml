function fighter_state_attack(){
	with (oChest) {
		if (distance_to_object(other) <= other.attackRange) {
			show_debug_message("Attack range");
			var _i = instance_create_layer(other.x,other.y,"Instances",oSwordHit);
			_i.direction = point_direction(_i.x, _i.y, x, y);
			_i.speed = 15;
		}
	}
	state_switch("Attacked");
}