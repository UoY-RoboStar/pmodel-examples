package BodyCamera 
	import physmod::sdf::annotations::*
	pmodel BodyCamera{
		local link Tip{
				def{}
					local body my_body {
						pose { x=0.0 y=0.0 z=0.9 roll=0.0 pitch=0.0 yaw=0.0}
						def {
							sphere  (radius=0.05)
						}
					}
					local sensor my_camera_sensor{
						pose {
							x=0.0
							y=0.0
							z=0.9
							roll=0.0
							pitch=0.0
							yaw=0.0
						}
						def {
							annotation Camera {
								always_on = true
								update_rate = 1
								camera = CameraDetails {
									horizontal_fov = 1.047
									image = Image{
									  	_width =300
										_height = 200
									 	//format = IMAGE_FORMAT::R8G8B8
									}
									clip = Clip{
										near = 0.2
									    far = 99.0
									}
									save = Save{
										enabled = true
										path = "__default__"
									}
									depth_camera=Depth_camera{
										_output = "depths"
										clip =  Clip{
											near = 0.08
											far =9.0
										} 	
									}
									noise = Noise{
										//_type = NoiseType::GAUSSIAN
										mean = 0.0
										stddev =0.0 
									}
									distortion = Distortion{
										k1 = 0.0
										k2 = 0.0
										k3 = 0.0
										p1 = 0.0
										p2 = 0.0
									}
									lens = Lens{
										//_type = LensType::stereographic
										scale_to_hfov = true
										custom_function = Custom_function{
											c1 = 1.0
											c2 = 1.0
											c3 = 0.0
											f = 1.0
											//fun = FunctionType::tan
										}
										cutoff_angle = 1.5707
										env_texture_size = 256
/*										intrinsics = Intrinsics{
											fx = 277.0
											fy = 277.0
											cx = 160.0
											cy = 120.0
											s = 0.0
										} */
									}

								}
							}
						}
					}	
			}	
		}