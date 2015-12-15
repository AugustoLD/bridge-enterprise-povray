#ifndef(wall)
#declare wall = version;
#version 3.7;

#include "cameras.inc"
#include "colors.inc"
#include "shapes3.inc"
#include "my_textures.inc"
#include "textures.inc"

/* camera { */
/* 	location<60,40,-200> */
/* 	look_at<60,40,0> */
/* } */

/* camera { */
/* 	location<0,200,0> */
/* 	look_at<0,0,0> */
/* } */

/* camera { */
/* 	camera_original */
/* } */

/* camera { */
/* 	location<-60,20,0> */
/* 	look_at<0,20,0> */
/* } */

#declare back_computer = box {
	<0,0,0>, <1,1,0>
	pigment {
		image_map {
			png "../img/back.png"
			once
		}
		/* color Gray */
	}
	scale<45,35,0>
}

#declare door = box {
	<0,0,0> ,<1,1,0>
	pigment {
		image_map {
			png "../img/door.png"
			once
		}
	}
	scale<40,35,0>
}

#declare back_double_computer = union {
	object {
		back_computer
	}
	object {
		back_computer
		/* rotate<0,80,0> */
		rotate<0,30,0>
		translate<45,0,0>
	}
}

#declare wall_base = difference {
	object {
		Column_N(12,80,35)
	}
	object {
		Column_N(12,78,37)
		translate<0,-1,0>
	}
	rotate<0,20,0>
	texture {
		T_Wall
	}
}

#declare wall_view = union {
	difference {
		prism {
			linear_spline
			0, 35, 9,
			<0,0>, <50,30>, <150,30>, <200,0>,
			<200,4>, <150,34>, <50,34>, <0,4>, <0,0>
		}
		box{
			<0,0,0>,<80,20,6>
			translate<60,7.5,29>
		}
		texture {
			T_Wall
		}
	}
	box{
		<0,0,0>,<80,20,4>
		translate<60,7.5,30>
		texture {
			Glass
			finish {
				reflection 0
			}
		}
	}
	rotate<0,180,0>
	translate<100,0,-50>
	scale<0.65,1,0.9>
}

#declare wall = union {
	difference {
		union {
			object { wall_base }
			object { back_double_computer rotate<0,55,0> translate<45,0,64> }
			object { back_double_computer rotate<0,-42,0> translate<-68,0,40> }
			object { back_double_computer rotate<0,-109,0> translate<-61,0,-47> }
			object { door rotate<0,23,0> translate<8.5,0,80> }
			rotate<0,15,0>
		}
		box {
			<0,0,0>, <200,37,80>
			translate<-80,-1,-130>
			}
	}
	object { wall_view }
}

#end
