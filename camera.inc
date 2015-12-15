#include "colors.inc"
background { color White }

#declare camera_original = camera {
	location <-30, 16, -20>
	look_at <0, 0, 0>
}

/* de cima */
#declare camera_up =camera {
	location <15, 40, 10>
	look_at <15, 0, 10>
}

/* lateral left */
#declare camera_left_side = camera {
	location <-30,2,4>
	look_at <0,2,4>
}

/* lateral right */
#declare camera_right_side = camera {
	location <40,2,4>
	look_at <0,2,4>
}

/* frontal */
#declare camera_front = camera {
	location <15,4,-30>
	look_at <15,4,0>
}

/* traseira */
#declare camera_back = camera {
	location <15,4,50>
	look_at <15,4,0>
}

/* camera { */
/* 	location <-4,4,50> */
/* 	look_at <-4,4,0> */
/* } */

/* left back */
#declare camera_left_back = camera {
	location <-30,30,60>
	look_at <15,4,0>
}

/* light_source { <15, 4, -20> color White } */
/* light_source { <15, 20, 4> color White } */
/* light_source { <15, 4, 50> color White } */
light_source {
	<0, 30, 0>
	color Gray
	spotlight
	radius 100
}

/* light_source { */
/* 	<30, 15, -30> */
/* 	color Gray35 */
/* } */

/* light_source { */
/* 	<-30, 15, 0> */
/* 	color Gray35 */
/* } */
