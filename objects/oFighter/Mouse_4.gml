if (mouseOver && state_name = "Tavern" && global.playerSilver >= 10) {
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