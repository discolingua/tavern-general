// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function particleInit(){
	
	global.P_System = part_system_create_layer("Instances", false);
	global.Particle1 = part_type_create();
	global.Particle1_Emitter1 = part_emitter_create(global.P_System);
	
	
	part_type_shape(global.Particle1,pt_shape_pixel);            //This defines the particles shape
	part_type_size(global.Particle1,2,4,0,2);                    //This is for the size
	part_type_color1(global.Particle1,c_white);                  //This sets its colour. Th	ere are three different codes for this
	part_type_alpha1(global.Particle1,1);                        //This is its alpha. There are three different codes for this
	part_type_speed(global.Particle1,0.10,1,-0.10,0);            //The particles speed
	part_type_direction(global.Particle1,0,359,0,20);            //The direction
	part_type_orientation(global.Particle1,0,0,0,0,true);        //This changes the rotation of the particle
	part_type_blend(global.Particle1,1);                         //This is the blend mode, either additive or normal
	part_type_life(global.Particle1,20,30);                       //this is its lifespan in steps</pre>

	
}