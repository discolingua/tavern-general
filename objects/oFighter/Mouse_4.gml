if (state_name = "Tavern" && global.playerSilver >= 10) {
	global.playerSilver -= 10;
	moveCharacterToParty();
	instance_destroy();
}