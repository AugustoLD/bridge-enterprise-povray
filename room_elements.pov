#include "control_panel.inc"
#include "camera.inc"
#include "shapes3.inc"

camera {
	location <15,70,22.5>
	look_at <15,0,22.5>
}

camera {
	location<7.5, 4, -30>
	look_at<7.5,0,0>
}


camera {
	location<-70,30,-40>
	look_at<0,0,0>
}

camera {
	location<0,100,0>
	look_at<0,0,0>
}

#declare half_base = union {
	prism {
		linear_spline
		0, 5, 16,
		<-0.5,-0.5>, <-0.5,15>, <5.5,23>, <5.5,30>, <-0.5,45>,
		<15,45>, <15,-0.5>, <-0.5,-0.5>
		<0.5,0.5>, <0.5,15>, <6.5,23>, <6.5,30>, <0.5,45>,
		<15,45>, <15,0.5>, <0.5,0.5>
		pigment { color Black }
	}
	prism {
		linear_spline
		0, 5, 8,
		<0.5,0.5>, <0.5,15>, <6.5,23>, <6.5,30>, <0.5,45>,
		<15,45>, <15,0.5>, <0.5,0.5>
		/* pigment { color Quartz } */
	}
}

#declare full_base = union {
	object { half_base }
	object { half_base rotate<0,0,180> translate<30,5,0> }
	translate <0,-15,0>
}

#declare stair_step = prism {
	linear_spline
	0, 0.5, 4
	<0,0>, <25,0>, <26,4>, <-1,4>
	pigment { color Gray50 }
}

#declare stair_structure = box {
	<0,0,0>, <0.5,9,0.5>
	rotate<45,15,0>
}

#declare stair = union {
	object { stair_step }
	object { stair_step scale<1.1,1,1.3> translate <-0.8,3,3>}
	object { stair_structure translate<23.5,-2,0> }
	object { stair_structure rotate<0,-30,0> translate<1.5,-2,0> }
	rotate<0,90,0>
}

#declare room_border_edge = prism {
	linear_spline
	0, 2, 4,
	<0,0>, <3,0>, <2.5,3>, <0.5,3>
}

#declare room_border = union {
	difference {
		difference {
			object {
				Column_N(20, 46, 2)
			}
			object {
				Column_N(20, 43, 4)
				translate<0,-1,0>
			}
			rotate<0,9,0>
		}
		box{
			<0,0,0>, <100,100,100>
			rotate<0,-18,0>
			translate<-50,-1,-16>
		}
		box{
			<0,0,0>, <100,100,100>
			rotate<0,18,0>
			translate<-19,-1,-60>
		}
		/* rotate<0,90,0> */
	}
	object {
		room_border_edge
		rotate<0,-18,0>
		translate<-44.2,0,-14.5>
	}
	object {
		room_border_edge
		rotate<0,108,0>
		translate<-13.2,0,-41.5>
	}
	pigment { color OrangeRed }
}
