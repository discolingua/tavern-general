
/// @function					buildCharacterInfoString( _i )
/// @param { real }		_i		Index in character pool to build stat block
/// @description				Build a stat block mousing over chars in party

function buildCharacterInfoString(_i) {
	
		// this builds the stat block string for highlighting
		// party NPCs in character pool

		var _s = "";
		var _myHP = "";
		
		if is_struct(global.characterPool[_i]) {
			with(global.characterPool[_i]) {;
			if (floor(statHP) == statMaxHP) {
				_myHP = "[ " + string(statMaxHP) + " ]";
			} else {
				_myHP = "[ " + string(statHP) + " / " + string(statMaxHP) + " ]";
			}
			
			// add +4 because a stat can have a negative mod but array index
			// must start at zero
			
			_s = charName + _myHP +
				  string(global.adjStr[statBonus(statStr) + 4]) + " " +
				  string(global.adjDex[statBonus(statDex) + 4]) + " " +
				  string(global.adjCon[statBonus(statCon) + 4]) + " ";
			}
		} else {
			_s = "";
		}
		
		return _s;
		
}


/// @function                 moveCharacterFromParty( _i );
/// @param {real}		_i	  Index in character pool to be moved from party
/// @description              Move a character from the party to the field

function moveCharacterFromParty( _i ) {
	
	var _char = global.characterPool[_i];

	// create a new fighter instance
	
	var _inst = instance_create_layer(floor(random(150)), floor(random(300)+100),"Instances",oFighter);

	// set properties of the new instance

	_inst.charName = _char.charName;
	_inst.spriteFrame = _char.spriteFrame;
	_inst.image_index = _char.spriteFrame;
	_inst.statStr = _char.statStr;
	_inst.statDex = _char.statDex;
	_inst.statCon = _char.statCon;
	_inst.statInt = _char.statInt;
	_inst.statWis = _char.statWis;
	_inst.statChr = _char.statChr;
	_inst.statArmorClass = _char.statArmorClass;
	_inst.statMaxHP = _char.statMaxHP;
	_inst.statHP = _char.statHP;
	_inst.statLevel = _char.statLevel;
	_inst.attackStats = _char.attackStats;
	_inst.statXP = _char.statXP;
	
	global.characterPool[_i] = -1;
}


/// @function					moveCharaterToParty( _inst )
/// @param {real}		_inst	Instance ID of character to move into party
/// @description				Moves an instanced character into the character pool

function moveCharacterToParty( _inst ) {
	
	
	// adds characters to party via tavern purchase or end of map
	
	
	// make a struct to hold the character's stats
	with (_inst) {	
		var _character = {
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
			statHP: statHP,
			statLevel: statLevel,
			attackStats: attackStats,
			statXP: statXP
		}
	}
		
		
	// copy the struct into the first empty (non-struct) array index
		
	for (var _i = 0; _i < PARTY_SLOTS; _i++) {
		if (! is_struct(global.characterPool[_i])) {
			global.characterPool[_i] = _character;
			show_debug_message("stored in slot " + string(_i));
			break;
		}
	}
	show_debug_message("hired " + string(charName));
	instance_destroy(_inst);
}
	
