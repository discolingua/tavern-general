state_update();


// check for death
if (statHP <= 0) {
	instance_destroy();
}