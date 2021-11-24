// return the d20 bonus for a 3d6 stat as per 5E dnd

function statBonus(_i){
	if (_i >= 10 && _i <= 11) {
		return 0;
	} else {
		return(floor((_i-10)/2));
	}
}