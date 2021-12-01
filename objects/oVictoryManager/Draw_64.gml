// Draw GUI Event for victory / level-up screen


// silver counter and coin icon

drawCoinCounter();

// status line at bottom

if (statusLine != "") {
	draw_text(80,450,statusLine);
}

// main loop to show aggregate party report

for (var _i = 0; _i < PARTY_SLOTS; _i++) {
	var _y = 220 +_i * 22;

	// buildCharacterInfoString returns an empty string 
	// if that array index isn't a struct

	if is_struct(global.characterPool[_i]) {
		with (global.characterPool[_i]) {
			var _infoString = buildCharacterInfoString( _i );
			
		}
	} else {
		var _infoString = "";
	}
	
	draw_text(5, _y, _infoString);


	// only draw buttons if this character slot is occupied

	if ( _infoString != "" ) {
		var _char = global.characterPool[_i];
		
		// create a heal button instance if the character has damage which needs to be healed
		// and if no such button instance already exists
		
		if (_char.statHP < _char.statMaxHP && !hasHealButton[_i]) {
			var _buttonHeal = instance_create_layer(500, _y, "Instances", oButtonHeal);
			_buttonHeal.image_yscale *= 2;
			_buttonHeal.characterIndex = _i;
			hasHealButton[_i] = true;
		}
	
		// create a level up button instance only if the character has XP, is fully healed
		// and no button exists

		if ((_char.statXP >= _char.statLevel) && 
				(_char.statHP == _char.statMaxHP) && !hasLevelButton[_i]) {
			var _buttonLevelUp = instance_create_layer(550, _y, "Instances", oButtonLevelUp);
			_buttonLevelUp.image_yscale *= 2;
			_buttonLevelUp.characterIndex = _i;
			hasLevelButton[_i] = true;
		}
	}
	
}