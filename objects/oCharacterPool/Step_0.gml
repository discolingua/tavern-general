if (mouseOver) {
	
	xCell = (mouse_x - x + borderSize) mod (rowLength * slotSize);
//	xCell = (mouse_x % rowLength * slotSize) + borderSize;
	yCell = (mouse_y div rowLength * slotSize) + borderSize;

	characterPoolDisplayString = "Highlighting cell " + string(xCell);
}