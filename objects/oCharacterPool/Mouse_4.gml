var _xCell = (mouse_x - x + BORDER_SIZE) div (SLOT_SIZE);
var _yCell = (mouse_y - y + BORDER_SIZE) div (SLOT_SIZE);
	
var _cell = _xCell + (ROW_LENGTH * _yCell);

// if clicking in a non-empty cell, examine / upgrade char (in tavern)
// or drop char onto battelfield

if is_struct( global.characterPool[_cell] ) {
	switch (room) {
		case rmTavern:
			show_debug_message("tavern clicks");
			break;
		default:
			show_debug_message("battle clicks");
			moveCharacterFromParty( _cell );
	}
}