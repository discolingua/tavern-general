/// @function			drawCoinCounter()
/// @description		renders currency display in top right corner of GUI


function drawCoinCounter(){
	
	draw_set_color($A3A3A3);
	draw_text(590, 5,string(global.playerSilver));
	draw_sprite_ext(sprCoinPile,0,550,8,2,2,0,c_white,1);

}