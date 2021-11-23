
// click on a npc in the tavern to hire them for 10 silver

if (state_name == "Tavern" && global.playerSilver >= 10) {
	global.playerSilver -= 10;
	moveCharacterToParty( id );
}

