function clearCharacterFromPool(_id) {
	for ( _i = 0; _i < 12; _i++) {
		if ( is_struct(global.characterPool[_i] )) {
			if (global.characterPool[_i].charInstance = _id) {
				global.characterPool[_i] = -1;
				return;
			}
		}
	}
}

function moveCharacterToParty() {
	
	// make a struct to hold the character's stats
		
	var _character = {
		charInstance: id,
		charName: charName,
		spriteFrame: spriteFrame,
		statStr: statStr,
		statDex: statDex,
		statCon: statCon,
		statInt: statInt,
		statWis: statWis,
		statChr: statChr,
		statArmorClass: statArmorClass,
		statMaxHP: statMaxHP,
		statLevel: statLevel
	}
		
	// keep NPCs persistent only in party roster
		
	id.persistent = true;
	id.layer = layer_get_id("Inventory");
		
	// copy the struct into  the first empty (non-struct) array index
		
	for (var _i = 0; _i < PARTY_SLOTS; _i++) {
		if (! is_struct(global.characterPool[_i])) {
			global.characterPool[_i] = _character;
			show_debug_message("stored in slot " +string(_i));
			break;
		}
	}
	show_debug_message("hired " + string(charName));
}



function refreshCharaterPool() {
	for (var _i = 0; _i < PARTY_SLOTS; _i++) {
		var _x = x + (_i mod rowLength) * slotSize + borderSize;
		var _y = y + (_i div rowLength) * slotSize + borderSize;
		if ( is_struct(global.characterPool[_i] )) {
			with (global.characterPool[_i]) {
				show_debug_message(string(charName) + " on layer " + 
					string( layer_get_depth(charInstance.layer)));
				charInstance.visible = true;
				charInstance.x = _x;
				charInstance.y = _y;
				charInstance.image_angle = 270;
				charInstance.layer = layer_get_id("Inventory");
			}
		}
	}
}


