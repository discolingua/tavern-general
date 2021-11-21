if (isVisible) {
	
	// when closing inventory, 
	for (var _i = 0; _i < PARTY_SLOTS; _i++) {
		if ( is_struct(global.characterPool[_i] )) {
			with (global.characterPool[_i]) {
				charInstance.visible = false;
			}
		}
	}
	isVisible = false;
	visible = false;
	
} else {
	
	// add shader to Instances layer to highlight inventory?
	
	// refresh objects in pool when toggling visisble
	
	refreshCharaterPool();
	isVisible = true;
	visible = true;
}