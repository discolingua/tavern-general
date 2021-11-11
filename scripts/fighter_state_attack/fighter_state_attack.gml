// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fighter_state_attack(){
	image_angle = random(360);
	state_switch("Attacked");
}