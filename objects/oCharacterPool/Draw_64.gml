if (isVisible) { 
	
	draw_text(5,5,characterInfoString);


	// loop through character pool and draw sprites in populated slots

	for (var _i = 0; _i < PARTY_SLOTS; _i++) {
		var _x = x + (_i % ROW_LENGTH * SLOT_SIZE) + BORDER_SIZE;
		var _y = y + (_i div ROW_LENGTH * SLOT_SIZE) + BORDER_SIZE;
		if (global.characterPool[_i] != -1 )
		{
			with(global.characterPool[_i]) {
				draw_sprite(sprGoon, spriteFrame,_x,_y);
			}
		}
	}
						
}