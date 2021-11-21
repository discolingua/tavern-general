mouseOver = true;

// ignore mouseOver events on Instances layer when inventory is open

with(oCharacterPool) {
	if (visible && other.layer = layer_get_id("Instances" )) {
		other.mouseOver = false;
	}
}
