var _char = global.characterPool[characterIndex];
var _currentLevel = _char.statLevel;
var _cost = _currentLevel * 10;

if (global.playerSilver >= _cost ) {
	global.playerSilver -= _cost;
	characterLevelUp(characterIndex);
	oCharacterPool.hasLevelButton[characterIndex] = false;
	instance_destroy();
	
} else {
	oVictoryManager.statusLine = _char.charName + " needs " 
		+ string(_cost) + " silvers to train."
}