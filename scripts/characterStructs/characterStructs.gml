// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function characterStructs(){
	var _characterPool = array_create(0);
	
	with (oParentFriendly) {
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
		array_push(_characterPool, _character);
	}
			
		
}