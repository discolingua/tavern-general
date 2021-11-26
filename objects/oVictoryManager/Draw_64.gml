for (var _i = 0; _i < PARTY_SLOTS; _i++) {
	var _y = 180 +_i * 18;
	with (global.characterPool[_i]) {
		var _infoString = buildCharacterInfoString( _i );
		
	}
	draw_text(5, _y, _infoString);
}