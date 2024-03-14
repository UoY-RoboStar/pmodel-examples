package indexedjoint


import physmod::joints::Prismatic

import physmod::math::*
pmodel IJ {
	local link Bottom {
		
				pose {
					x = 0
					y = 0
					z = 0.005
					roll = 0
					pitch = 0
					yaw = 0
				}
		def {
		}
		local body B {
			def {
				
									box(length=0.1,width=0.1,height=0.01)
			}
		}
		jref PJ = Prismatic {
			
							index j : [0,4)
			
							pose {
								x = (0.05*cos(PI/4+j*PI/2))m
								y = (0.05*sin(PI/4+j*PI/2))m
								z = 0.005
								roll = 0.0
								pitch = 0.0
								yaw = 0
							}
			
								annotation Prismatic {
									axis = Axis {
										xyz = (|0,0,1|)
									}
								}
			flexibly connected to Top
		}
	}
	local link Top {
		
				pose {
					x = 0
					y = 0
					z = 0.015
					roll = 0
					pitch = 0
					yaw = 0
				}
		def {
		}
		local body B {
			def {
				
									box(length=0.1,width=0.1,height=0.01)
			}
		}
	}
}


const PI: real = 3.1415
