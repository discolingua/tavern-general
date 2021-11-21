function moveCharacterToParty() {
	with (other) {
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
		global.characterPool[global.charsInPool++] = _character;
		show_debug_message("hired " + string(charName));
	}
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
				charInstance.image_angle +=270;
				charInstance.layer = layer_get_id("Inventory");
			}
		}
	}
}

function loadCharactersFromPool() {
	for (var _i = 0; _i < PARTY_SLOTS; _i++) {
		if ( is_struct(global.characterPool[_i] )) {
			show_debug_message( string(global.characterPool[_i].charName) + "is in slot " );
			charInstance.visible = true;
		}
	}
}

//function characterStructs(){
//	var _characterPool = array_create(0);
//	
//	with (oParentFriendly) {
//		var _character = {
//			obj: object_get_name(object_index),
//			charName: charName,
//			statStr: statStr ...
//		}
//		array_push(_characterPool, _character);
//	}
//}