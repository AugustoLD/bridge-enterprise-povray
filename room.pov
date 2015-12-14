#include "camera.inc"
#include "shapes3.inc"
#include "textures.inc"
#include "chairs.pov"

/* global_settings { ambient_light } */

#declare carpet = texture {
	White_Wood
	/* pigment { */
	/* 	color_map { */
	/* 		[0.0 color Black] */
	/* 		[0.5 color Gray10] */
	/* 		[1.0 color Gray20] */
	/* 	} */
	/* } */
}

camera {
	location<0,100,0>
	look_at<0,0,0>
}

camera {
	location<-60,50,-40>
	look_at<0,0,0>
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

object { stair translate<35,2.5,13>}
object { stair rotate<0,180,0> translate<-35,2.5,-13>}
object { stair rotate<0,90,0> translate<13,2.5,-35>}

object { room_border rotate<0,0,0> translate <0,15,0>}
object { room_border rotate<0,90,0> translate <0,15,0>}
object { room_border rotate<0,-90,0> translate <0,15,0>}
object { room_border rotate<0,180,0> translate <0,15,0>}

difference {
	object {
		Column_N(20, 90, 8)
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
