///@description spawn player 


if (instance_exists(targetInstance)) {
	if(!instance_exists(oPlayer)) {
		instance_create_layer(0,0, "Instances", oPlayer);
	}
	
	//move player to target
	oPlayer.x = targetInstance.x;
	oPlayer.y = targetInstance.y;
	
	// Clear target
	targetInstance = noone;
}
