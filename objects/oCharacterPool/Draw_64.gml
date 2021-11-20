if (isVisible) { 
	
	// draw inventory box outline container
	draw_sprite_stretched( sprCharPool,
						0, 
						x, 
						y, 
						slotSize * rowLength + (2 * borderSize), 
						slotSize * colHeight + (2 * borderSize));
						

	
	//for (var _i = 0; _i < PARTY_SLOTS; _i++) {
	//	var _x = x + (_i % rowLength * slotSize) + borderSize;
	//	var _y = y + (_i div rowLength * slotSize) + borderSize;
	//	if (global.characterPool[_i] != -1 )
	//	{
	//		// show_debug_message(global.characterPool[_i].name);
	//	}
	//}
						
}