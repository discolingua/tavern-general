//  post-action wait until next round
function fighter_state_attacked(){


	// post attack, slow down near enemies
	if (speed > 0) {
		var _t = instance_nearest(x,y,oParentEnemy);
		if (_t < 16) {
			speed /= 2;
			direction = point_direction(x, y, _t.x, _t.y);
		}

	}
}