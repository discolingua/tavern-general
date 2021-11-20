if (isVisible) {
	isVisible = false;
} else {
	
	// refresh objects in pool when toggling visisble
	
	
	show_debug_message(string(array_length(global.characterPool)));
	loadCharactersFromPool();
	isVisible = true;
}