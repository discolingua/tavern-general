if (isVisible) { 
	
	draw_text(5,5,characterPoolDisplayString);

	for (var _i = 0; _i < PARTY_SLOTS; _i++) {
		var _x = x + (_i % rowLength * slotSize) + borderSize;
		var _y = y + (_i div rowLength * slotSize) + borderSize;
		if (global.characterPool[_i] != -1 )
		{
			with(global.characterPool[_i]) {
				draw_sprite(sprGoon, spriteFrame,_x,_y);
			}
		}
	}
						
}