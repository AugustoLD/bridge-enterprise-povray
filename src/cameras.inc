#ifndef(cameras)
#declare cameras = version;
#version 3.7;

#include "colors.inc"

#declare camera_original = camera {
	location<-60,100,-50>
	look_at<0,0,0>
}

/* de cima */
#declare camera_up =camera {
	location<0,200,0>
	look_at<0,0,0>
}

/* lateral left */
#declare camera_left_side = camera {
	location <-50,30,8>
	look_at <0,20,8>
}

/* lateral right */
#declare camera_right_side = camera {
	location <50,30,8>
	look_at <0,20,8>
}

/* frontal */
#declare camera_front = camera {
	location <0,30,-50>
	look_at <0,30,0>
}

#declare camera_kirk = camera {
	location <-30,50,70>
	look_at <0,5,-80>
}

#declare camera_extern = camera {
	location<0,20,-160>
	look_at<0,20,0>
}

#declare camera_up_fish =camera {
	fisheye
	location<0,42,0>
	look_at<0,0,0>
	angle 180
}

#declare camera_wide = camera {
  ultra_wide_angle
  location<60,100,-50>
  look_at  <0, 0, 0>
  right x*image_width/image_height  // aspect
  angle 90
}

#declare camera_sulu = camera {
	omnimax
	location <-30,50,50>
	look_at <0,5,-80>
	right x*image_width/image_height
}

#end
