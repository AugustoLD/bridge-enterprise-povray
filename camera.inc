background { color White }

#declare camera_original = camera {
	location <-20, 8, -10>
	look_at <0, 0, 0>
}

/* de cima */
#declare camera_up =camera {
	location <15, 40, 5>
	look_at <15, 0, 5>
}

/* lateral */
#declare camera_left_side = camera {
	location <-30,2,4>
	look_at <0,2,4>
}

/* frontal */
#declare camera_front = camera {
	location <16,4,-30>
	look_at <16,4,0>
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

/* camera { */
/* 	location <-15,15,40> */
/* 	look_at <15,4,0> */
/* } */

light_source { <15, 4, -20> color White }
light_source { <15, 20, 4> color White }

