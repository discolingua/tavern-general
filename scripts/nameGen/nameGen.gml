// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function nameGen(){
	static namesFirstPart = ["Aeo","Bor","Crag","Cran","Gron","Lon","Lor","Loth", 
		"Tar", "Sar","Skul", "Xon" ];
	static namesSecondPart = ["anth","bold", "gron", "krod", "ules","vrax" ];
	
	// array size, subtract one for irandom
	static lenFirst = array_length(namesFirstPart) - 1;
	static lenSecond = array_length(namesSecondPart) - 1;
	
	
	
	return(namesFirstPart[irandom(lenFirst)] +
		   namesSecondPart[irandom(lenSecond)]);
	
}