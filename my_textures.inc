#declare T_Grnt6 = texture {
	pigment {
		granite turbulence 0.5
		color_map {
			[0.000, 0.153   color rgbt <0.545, 0.380, 0.645, 0.000>
				color rgbt <0.588, 0.475, 0.633, 0.000>]
			[0.153, 0.398   color rgbt <0.588, 0.475, 0.633, 0.000>
				color rgbt <0.675, 0.478, 0.704, 0.000>]
			[0.398, 0.559   color rgbt <0.675, 0.478, 0.704, 0.000>
				color rgbt <0.757, 0.635, 0.822, 0.000>]
			[0.559, 0.729   color rgbt <0.757, 0.635, 0.822, 0.000>
				color rgbt <0.659, 0.549, 0.543, 0.000>]
			[0.729, 1.001   color rgbt <0.659, 0.549, 0.543, 0.000>
				color rgbt <0.545, 0.380, 0.545, 0.000>]
		}
	}
}

#declare carpet = texture {
	T_Grnt6   scale <1.5, 3, 2> rotate <0, 0, 40>
	finish{diffuse 0.5}
}

#declare T_Wall = texture {
	pigment{
		color rgb<54/255,65/255,61/255>
	}
}
