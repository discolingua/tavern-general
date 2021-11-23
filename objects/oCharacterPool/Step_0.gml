if (mouseOver) {
	
	xCell = (mouse_x - x + borderSize) div (slotSize);
	yCell = (mouse_y - y + borderSize) div (slotSize);
	
	highlightedCell = xCell + (rowLength * yCell);

	characterPoolDisplayString = "Highlighting cell " + string(highlightedCell);
}