/// @description pb_state_stand()
function pb_state_stand() {
	
	if(state_new)
	{
	    x_speed=0;
	    y_speed=0;

	}

	if(summon_pressed) {
		instance_create_layer(x,y,"Instances",oFighter);
	}

	if((left_held && !place_meeting_rounded(x-1,y,oWall))|| 
	   (right_held && !place_meeting_rounded(x+1,y,oWall))||
	   ((up_held && !place_meeting_rounded(x,y-1,oWall))|| 
	   (down_held && !place_meeting_rounded(x,y+1,oWall))))
	   
	{
	    state_switch("Walk");
	}




}
