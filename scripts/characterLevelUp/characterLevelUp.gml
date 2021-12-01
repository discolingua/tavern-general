/// @function				characterLeverUp( _i )
/// @param	{ real }	_i	Index of character in pool
/// @description			Level up a character in the pool



function characterLevelUp( _i ){
	
	// sanity test so it doesn't try to access a null index
	
	if (is_struct(global.characterPool[_i])) {
		
		with(global.characterPool[_i]) {
			
			
			// choose a physical stat to raise
			
			var _statToBoost = choose ("str", "dex", "con");			

			switch (_statToBoost) {
				
				case "str":
				var _levelUpPhrase = "stronger";
				statStr++;
				break;
				
				case "dex":
				var _levelUpPhrase = "faster";
				statDex++;
				break;
				
				case "con":
				var _levelUpPhrase = "heartier";
				statCon++;
				break;
			}
			
			// add 1d8 hit points + CON mod
			
			var _hpGain = floor(random(8)) + statBonus(statCon) + 1;
			statMaxHP += _hpGain;
			statHP = statMaxHP;
			
			// raise the level
			
			statLevel++;
			var _levelUpString = charName + " is now Level " + string(statLevel) +
				". They seem a little bit " + _levelUpPhrase + "!";
			

		}
	} else {
		_levelUpString = "Something went wrong leveling up.";
	}
	
	// return _levelUpString;
	show_debug_message(_levelUpString);
	
	// this is temporary and should be handled in the button object probably
	
	oVictoryManager.statusLine = _levelUpString;
	oVictoryManager.statusLineTimer = 1000;
	
}