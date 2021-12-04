

function saveGame(){
	var _saveString = json_stringify(global.characterPool);
	var _buffer = buffer_create(string_byte_length(_saveString) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _saveString);
	buffer_save(_buffer,"tavernhero.sav");
	show_debug_message("game saved");
}