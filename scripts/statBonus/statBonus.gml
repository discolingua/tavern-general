// return the d20 bonus for a 3d6 stat as per 5E dnd

function statBonus(i){
	if (i >= 10 && i <= 11) {
		return 0;
	} else {
		return(floor((i-10)/2));
	}
}