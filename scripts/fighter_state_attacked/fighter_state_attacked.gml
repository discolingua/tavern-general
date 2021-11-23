//  post-action wait until next round
function fighter_state_attacked(){

	// post attack, slow down near enemies

	if (speed > 0) {	
		if (instance_exists(oParentEnemy)) {
			var _t = instance_nearest(x,y,oParentEnemy);
			if (_t < 50) {
				speed /= 2;
				direction = point_direction(x, y, _t.x, _t.y);
			}
		}
	}
}