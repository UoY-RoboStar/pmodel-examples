package indexedlinkindexedsensor


import physmod::math::*

import physmod::sensors::IR
pmodel ILIS {
	local link L1 {
		
				index i: [0,3]
		
				pose {
					x = 0.2*i
					y = 0
					z = 0.05
					roll = 0
					pitch = 0
					yaw = 0
				}
		def {
		}
		local body B {
			def {
				
									box(length=0.1,width=0.1,height=0.1)
			}
		}
		sref IRSensor = IR {
			
							index j : [0,4)
			
							pose {
								x = (0.05*cos(PI/4+j*PI/2))m
								y = (0.05*sin(PI/4+j*PI/2))m
								z = 0.0
								roll = 0.0
								pitch = -PI/2
								yaw = 0
							}
			
								annotation Logical_camera {
									always_on = true
									update_rate = 1
									logical_camera = Logical_cameraDetails {
										near = 0.0
										far = 1.0
									}
								}
		}
	}
}


const PI: real = 3.1415
