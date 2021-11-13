function fighter_state_waiting() {
	if (initiativeOrder > oRoomManagerMain.timerLength) {

		state_switch("Attack");
	}
	
	var _pushspd = 2;
	var _col = instance_place(x,y,oFighter);
	if(_col){
		var _dist = sign(x - _col.x) * _pushspd;
		if(!place_meeting(x + _dist, y, oWall))
		x += _dist;
	}
	
}