/// @description pb_state_stand()
function pb_state_walk() {
	//The Walking State for Platform Boy
	if(state_new)
	{
	    //image_index=1;
	    // sprite_index=spr_mario_walk;
	    //stick_to_ground=true;
	}

	//Adjust Speed
	if(right_held||left_held||up_held||down_held)
	{
	    var _accel;
	    if(run_held)
	        _accel=run_accel;
	    else
	        _accel=walk_accel;
    
	    if((x_speed<0 && right_held) || (x_speed>0 && left_held) ||
		    (y_speed<0 && down_held || (y_speed>0 && up_held)))
	        _accel*=slide_factor;
    
	    if(!run_held)
		{
	        x_speed=approach(x_speed,walk_max*(right_held-left_held),_accel);
			y_speed=approach(y_speed,walk_max*(down_held-up_held),_accel);
		} else {
	        x_speed=approach(x_speed,run_max*(right_held-left_held),_accel)
			y_speed=approach(y_speed,run_max*(down_held-up_held),_accel);
		}
	}
	else
	{
	    x_speed=approach(x_speed,0,walk_accel);
		y_speed=approach(y_speed,0,walk_accel);
	}

    

	///Check for no speed.
	if(x_speed == 0 && y_speed == 0)
	{
	    state_switch("Stand");
	}
	




	//Horizontal Collision
	if(place_meeting_rounded(x+x_speed,y,oWall))
	{
	    x=round(x);
	    y=round(y);
	    while(!place_meeting_rounded(x+sign(x_speed),y,oWall))
	    {
	        x+=sign(x_speed);
	    }
	    x_speed=0;

	    state_switch("Stand");
	} else { // vertical collide
	if(place_meeting_rounded(x,y+y_speed,oWall))
	{
		x=round(x);
		y=round(y);
		while(!place_meeting_rounded(x,y+sign(y_speed),oWall))
		{
			y+=sign(y_speed);
		}
		y_speed = 0;
		state_switch("Stand"); }
		
		
	    x+=x_speed;
		y+=y_speed;
	   
        
	    }
}


