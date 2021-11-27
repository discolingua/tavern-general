function rollInitiative( _i ){

	var _initiativeRoll = (random(20) + 1 + statBonus( _i ));

	if (_initiativeRoll < 1) {
		
		// make sure there's no negative initiative
		// from people with low dex and bad rolls
		
		_initiativeRoll = random(1);
		
	}
	
	// initiative timer counts down from 200
	
	return ( _initiativeRoll * 10 );

}