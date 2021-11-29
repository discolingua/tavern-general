
// Draw GUI Event for victory / level-up screen




for (var _i = 0; _i < PARTY_SLOTS; _i++) {
	var _y = 220 +_i * 22;

	// buildCharacterInfoString returns an empty string if that array index isn't a struct
	// so it's not needed to check isStruct here.

	with (global.characterPool[_i]) {
		var _infoString = buildCharacterInfoString( _i );
		
	}
	draw_text(5, _y, _infoString);


	// only draw buttons if this character slot is occupied

	if ( _infoString != "" ) {
		var _char = global.characterPool[_i];
		
		// draw a heal button only if the character has damage which needs to be healed
		
		if (_char.statHP < _char.statMaxHP) {
			var _buttonHeal = instance_create_layer(500, _y, "Instances", oButtonHeal);
			_buttonHeal.image_yscale *= 2;
			_buttonHeal.characterIndex = _i;
		}
	
		// draw a level up button only if the character has XP

		if (_char.statXP >= _char.statLevel) {
			var _buttonLevelUp = instance_create_layer(550, _y, "Instances", oButtonLevelUp);
			_buttonLevelUp.image_yscale *= 2;
		}
	}
	
}