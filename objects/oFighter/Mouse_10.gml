mouseOver = true;

// ignore mouseOver events on instance layer 

with(oCharacterPool) {
	if (visible && other.layer = layer_get_id("Instances" )) {
		other.mouseOver = false;
	}
}
