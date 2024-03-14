package BodyPlusSonarSensor
 
	import physmod::sdf::annotations::*
pmodel BodyPlusSonarSensor {
	local link Tip {
		def {
		}
		local body my_body {
			
									pose { x=0.0 y=0.0 z=0.9 roll=0.0 pitch=0.0 yaw=0.0}
			def {
				
											sphere  (radius=0.05)
			}
		}
		local sensor my_sonar_sensor {
			
									pose {
										x=0.0
										y=0.0
										z=0.9
										roll=0.0
										pitch=0.0
										yaw=0.0
									}
			def {
				
											annotation Sonar  {
												always_on = true update_rate=1.0
												sonar = SonarDetails {
													min = 1.0
													max = 2.0
													_radius =1.5
												}
											}
			}
		}
	}
}
