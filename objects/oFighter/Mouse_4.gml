
// click on a npc in the tavern to hire them for 10 silver
if (state_name == "Tavern" && global.playerSilver >= 10) {
	global.playerSilver -= 10;
	moveCharacterToParty();
	visible = false;
	state_switch("Inventory");
	with(oCharacterPool) {
		if (visible) {
			refreshCharaterPool();
		}
	}
}


// click on an npc in-inventory during a map to put them into battle
if ( state_name == "Inventory" && room_get_name(room) != "roomTavern" ) {
	x = 10 + floor(random(50));
	y = 100 + floor(random(300));
	persistent = false;
	clearCharacterFromPool(id);
	state_switch("Waiting");
	layer = layer_get_id("Instances");
}