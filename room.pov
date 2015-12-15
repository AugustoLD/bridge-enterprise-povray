#include "camera.inc"
#include "shapes3.inc"
#include "stones.inc"
#include "textures.inc"
#include "my_textures.inc"
#include "wall.inc"
#include "chairs.pov"
#include "stars.inc"

/* global_settings { ambient_light } */

camera {
	location<0,100,0>
	look_at<0,0,0>
}

camera {
	location<-60,80,-40>
	look_at<0,0,0>
}

camera {
	location<0,40,50>
	look_at<0,30,-60>
}

/* camera { */
/* 	location<30,50,0> */
/* 	look_at<30,0,0> */
/* } */

/* camera { */
/* 	location<0,5,-5> */
/* 	look_at<35,5,-5> */
/* } */

/* camera { */
/* 	camera_original */
/* } */

/* camera { */
/* 	location<0,200,0> */
/* 	look_at<0,0,0> */
/* } */

union {
	object { full_panel }
	object { full_base
		texture {
			carpet
		}
	}
	object { captain_chair translate<7,-10,23> }
	scale <1.2,1,1.1>
	translate<-18,16,-5>
}

union {
	difference {
		object {
			Column_N(20, 46, 8)
		}
		object {
			Column_N(20, 43, 10)
			translate<0,-1,0>
		}
		pigment { color Black }
	}
	object {
		Column_N(20, 43, 1)
		texture {
			carpet
		}
	}
	rotate<0,9,0>
}

object { stair translate<35,2.5,11.5>}
object { stair rotate<0,180,0> translate<-35,2.5,-11.5>}
object { stair rotate<0,90,0> translate<11.5,2.5,-35>}

object { room_border rotate<0,0,0> translate <0,4.5,0>}
object { room_border rotate<0,90,0> translate <0,4.5,0>}
object { room_border rotate<0,-90,0> translate <0,4.5,0>}
object { room_border rotate<0,180,0> translate <0,4.5,0>}

/* plane { */
/* 	<0,1,0>, 5 */
/* 	texture { */
/* 		carpet */
/* 	} */
/* } */

difference {
	object {
		Column_N(20, 80, 8)
	}
	object {
		Column_N(20, 46, 10)
		translate<0,-1,0>
	}
	rotate<0,9,0>
	texture {
		carpet
	}
}

object { wall translate<0,8,0> }

sphere{ <0,0,0>, 1
	texture{ Starfield1 }
	scale 10000
}
