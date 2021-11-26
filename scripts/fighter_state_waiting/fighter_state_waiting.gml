function fighter_state_waiting() {
	if (initiativeOrder > oRoomManagerMain.timerLength) {

		state_switch("Attack");
	}
	
	var _pushspd = 2;
	var _col = instance_place(x,y,oCombatEntity);
	if(_col){
		var _xd = sign(x - _col.x) * _pushspd;
		var _yd = sign(y - _col.y) * _pushspd;
		if(!place_meeting(x + _xd, y + _yd, oWall))
		x += _xd;
		y += _yd;
	}
	
}