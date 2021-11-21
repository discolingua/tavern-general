if (isVisible) {
	isVisible = false;
} else {
	
	// refresh objects in pool when toggling visisble
	for (var _i = 0; _i < PARTY_SLOTS; _i++) {
		var _x = x + (_i % rowLength * slotSize) + borderSize;
		var _y = y + (_i div rowLength * slotSize) + borderSize;
		if ( is_struct(global.characterPool[_i] )) {
			with (global.characterPool[_i]) {
				show_debug_message(string(charName));
				charInstance.visible = true;
				charInstance.x = _x;
				charInstance.y = _y;
				charInstance.depth = -100;
				charInstance.direction +=5;
			}
		}
	}
	isVisible = true;
}