for (var _i = 0; _i < PARTY_SLOTS; _i++) {
	var _y = 120 +_i * 16;
	with (global.characterPool[_i]) {
		var _infoString = buildCharacterInfoString( _i );
		
	}
	draw_text(5, _y, _infoString);
}