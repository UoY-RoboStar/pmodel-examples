package BodyPlusSonarSensor
 
	import physmod::sdf::annotations::*
pmodel BodyPlusSonarSensorRef {
	local link Tip {
		def {
		}
		local body my_body {
			
									pose { x=0.0 y=0.0 z=0.9 roll=0.0 pitch=0.0 yaw=0.0}
			def {
				
											sphere  (radius=0.05)
			}
		}
		sref my_sonar_sensor = my_sonar_sensor_ref {
			
									pose {
										x=0.0
										y=0.0
										z=0.9
										roll=0.0
										pitch=0.0
										yaw=0.0
									}
		}
	}
}

	
	
sensor my_sonar_sensor_ref {
	annotation Sonar  {
		always_on = true update_rate=1.0
			sonar = Sonar {
			min = 1.0
			max = 2.0
			_radius =1.5
		}
	}	
}
