if (mouseOver && is_struct(global.characterPool[characterIndex])) {
	
	with (global.characterPool[characterIndex]) {
		
		draw_text(100,400, "Heal button for " + charName);
	}
}