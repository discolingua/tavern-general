function moveCharacterToParty() {
	with (other) {
		var _character = {
			obj: object_get_name(object_index),
			charName: charName,
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
		array_push (global.characterPool, _character);
		show_debug_message("hired " + string(charName));
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