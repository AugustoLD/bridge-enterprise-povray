#include "camera.inc"
#include "room_elements.pov"
#include "shapes.inc"

camera {
	location<-8,20,16>
	look_at<0,10,10>
}

camera {
	location<8,10,-20>
	look_at<8,10,0>
}

/* camera { */
/* 	location<-10,20,30> */
/* 	look_at<8,10,0> */
/* } */

/* camera { */
/* 	location<8.5,50,0> */
/* 	look_at<8.5,0,0> */
/* } */

camera {
	camera_original
}


/* camera { */
/* 	location<-20,20,20> */
/* 	look_at<0,10,4> */
/* } */

#declare captain_chair_base = union {
	box {
		<0,0,0>, <16,3,7>
		pigment { color Gray }
	}
	cylinder {
		<0,0,0>, <0,6,0>, 3
		pigment { color Gray }
		translate<8,0,7>
	}
}

#declare captain_chair_arm = prism {
	linear_spline
	0, 2.5, 5,
	<0,0>, <7, -1>, <7,6>, <3,8>, <0,8>
	rotate<0,0,90>
	pigment { color Gray }
}

#declare captain_chair_structure = union {
	box {
		<0,0,0>, <8, 2.5, 8>
		pigment { color Gray }
	}
	/* left arm */
	object { captain_chair_arm }
	/* right arm */
	object { captain_chair_arm translate<10.5,0,0>}
}

#declare captain_chair_base_structure = union {
	object { captain_chair_base }
	object { captain_chair_structure translate<4,6,3.5> }
}

#declare captain_chair_upholster_arm = object {
		Round_Box(<0,0,0>, <4.5,0.1,6>, 0.3, 0)
		rotate<0,0,90>
		pigment { color Black }
}

#declare captain_chair_arm_detail = union {
	box {
		<0,0,0>, <0.4, 0.3, 6>
		/* translate<4,13,3.5> */
	}
	box {
		<0,0,0>, <0.4, 0.3, 2.6>
		rotate<-22,0,0>
		/* translate<4,13,9.5> */
		translate<0,0,6>
	}
	pigment { color OrangeRed }
}

#declare captain_chair_upholster_arm_back = prism {
	linear_spline
	0, 0.3, 4
	<0,0>, <2,0>, <2,4.5>, <-0.5,5.5>
	rotate<-90,90,0>
	translate<0.3,0,0>
}

#declare captain_chair_upholster = union {
	/* captain chair upholster base */
	object {
		Round_Box(<0,0,0>, <8,0.1,8>, 0.3, 0)
	}
	/* rigth */
	object { captain_chair_upholster_arm translate<0.1,0,0> }
	object { captain_chair_upholster_arm_back translate<0,0,8>}
	/* left */
	object { captain_chair_upholster_arm translate<8,0,0> }
	object { captain_chair_upholster_arm_back translate<7.7,0,8>}
	/* captain chair upholster back */
	object {
		Round_Box(<0,0,0>, <8,5.5,0.1>, 0.3, 0)
		rotate<5,0,0>
		translate<0,0,8>
	}
	object {
		Round_Box(<0,0,0>, <8,3,0.1>, 0.3, 0)
		translate<0,5.4,8.3>
	}
}

#declare captain_chair = union {
	object { captain_chair_base_structure }
	object { captain_chair_upholster translate<4,8.5,3.5> }
	object { captain_chair_arm_detail translate<4,13,3.5> }
	object { captain_chair_arm_detail translate<11.6,13,3.5> }
}

union {
	object { full_panel }
	object { full_base }
	object { captain_chair translate<7,-10,23> }
	scale <1.1,1,1>
}
