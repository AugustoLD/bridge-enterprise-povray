#include "control_panel.inc"
#include "camera.inc"

camera {
	location <15,70,22.5>
	look_at <15,0,22.5>
}

camera {
	camera_original
}

#declare half_base = union {
	prism {
		linear_spline
		0, 5, 16,
		<0,0>, <0,15>, <6,23>, <6,30>, <0,45>,
		<15,45>, <15,0>, <0,0>
		<0.5,0.5>, <0.5,15>, <6.5,23>, <6.5,30>, <0.5,45>,
		<15,45>, <15,0.5>, <0.5,0.5>
		pigment { color Black }
	}
	prism {
		linear_spline
		0, 5, 8,
		<0.5,0.5>, <0.5,15>, <6.5,23>, <6.5,30>, <0.5,45>,
		<15,45>, <15,0.5>, <0.5,0.5>
		pigment { color Gray }
	}
}

#declare full_base = union {
	object { half_base }
	object { half_base rotate<0,0,180> translate<30,5,0> }
	translate <0,-15,0>
}
