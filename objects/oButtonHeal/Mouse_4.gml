var _char = global.characterPool[characterIndex];
var _damage = floor(_char.statMaxHP - _char.statHP);

if (global.playerSilver >= _damage) {

	_char.statHP = _char.statMaxHP;
	global.playerSilver -= _damage;
	oCharacterPool.hasHealButton[characterIndex] = false;
	instance_destroy();
	
} else {
	
	oVictoryManager.statusLineTimer = 1000;
	oVictoryManager.statusLine = _char.charName + " needs " 
		+ string(_damage) + " silvers to heal."
}