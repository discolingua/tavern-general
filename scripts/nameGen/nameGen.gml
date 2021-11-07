// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function nameGen(){
	static namesFirstPart = ["Bor","Gron","Lor","Loth", "Tar", "Sar", "Xon" ];
	static namesSecondPart = ["bold", "gron", "krod", "ules","vrax" ];
	
	// array size, subtract one for irandom
	static lenFirst = array_length(namesFirstPart) - 1;
	static lenSecond = array_length(namesSecondPart) - 1;
	
	
	
	return(namesFirstPart[irandom(lenFirst)] +
		   namesSecondPart[irandom(lenSecond)]);
	
}