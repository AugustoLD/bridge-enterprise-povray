#version 3.7;

#include "cameras.inc"
#include "shapes3.inc"
#include "stones.inc"
#include "textures.inc"
#include "my_textures.inc"
#include "wall.inc"
#include "chairs.inc"
#include "stars.inc"
#include "lights.inc"

camera {
	camera_original
}

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
