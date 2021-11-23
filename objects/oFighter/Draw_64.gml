if (mouseOver) {
		draw_text(5,5,charName + " [" + string(floor(statHP)) + "]  " +
				  string(global.adjStr[statBonus(statStr) +4 ]) + " " +
				  string(global.adjDex[statBonus(statDex) + 4]) + " " +
				  string(global.adjCon[statBonus(statCon) + 4]) + " ");
}