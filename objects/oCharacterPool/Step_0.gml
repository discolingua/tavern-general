if (mouseOver) {
	
	// find index of the cell with mouse over and see if it needs a stat block
	
	var _xCell = (mouse_x - x + BORDER_SIZE) div (SLOT_SIZE);
	var _yCell = (mouse_y - y + BORDER_SIZE) div (SLOT_SIZE);
	
	var _cell = _xCell + (ROW_LENGTH * _yCell);

	characterInfoString = buildCharacterInfoString(_cell);
	
}