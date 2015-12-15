#ifndef(lights)
#declare lights = version;
#version 3.7;

#include "colors.inc"

/* light_source { <15, 4, -20> color White } */
/* light_source { <15, 20, 4> color White } */
/* light_source { <15, 4, 50> color White } */
light_source {
	<0, 50, 0>
	color Gray80
	spotlight
	point_at<0,0,0>
	radius 45
	/* shadowless */
}

/* light_source { */
/* 	<0, 50, -80> */
/* 	color Gray80 */
/* 	spotlight */
/* 	point_at<0,5,20> */
/* 	radius 45 */
/* 	/1* shadowless *1/ */
/* } */

light_source {
	<50,8,0>
	color Blue
	spotlight
	point_at<0,5,0>
	radius 50
}

light_source {
	<-50,8,0>
	color Blue
	spotlight
	point_at<0,5,0>
	radius 50
}

/* light_source { */
/* 	<0,8,50> */
/* 	color Blue */
/* 	spotlight */
/* 	falloff 30 */
/* 	point_at<0,5,0> */
/* 	radius 50 */
/* } */

/* light_source { */
/* 	<60, 60, -40> */
/* 	color Gray20 */
/* 	spotlight */
/* 	radius 100 */
/* } */

/* light_source { */
/* 	<-60, 60, -40> */
/* 	color Gray50 */
/* 	spotlight */
/* 	radius 100 */
/* } */
/* light_source { */
/* 	<30, 15, -30> */
/* 	color Gray35 */
/* } */

/* light_source { */
/* 	<-30, 15, 0> */
/* 	color Gray35 */
/* } */

#end
