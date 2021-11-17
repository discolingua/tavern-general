function nameGen(){
	static namesFirstPart = ["Aeo","Bor","Crag","Cran","Gar","Gron",
							"Lon","Lor","Loth", "Mar",
		"Tar", "Thoro", "Sar", "Smith","Skul", "War", "Wulf", "Xon" ];
	static namesSecondPart = ["anth","bold", "burrow", "gar", "guard", "gron", 
							"hill", "kill", "krod", "laxx", "lon", "lyon",
							 "mar", "mon", "rath", "tor", "ules","vrax" ];
	
	// array size, subtract one for irandom
	static lenFirst = array_length(namesFirstPart) - 1;
	static lenSecond = array_length(namesSecondPart) - 1;
	
	
	
	return(namesFirstPart[irandom(lenFirst)] +
		   namesSecondPart[irandom(lenSecond)]);
	
}