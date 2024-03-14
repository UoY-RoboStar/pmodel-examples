package BodyPlusSonarSensor
 
	import physmod::sdf::annotations::*
pmodel BodySonarSensorRefIndex {
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
			
									index i : [0,24)
			
										pose {
											x=(8*cos(2*i*PI/24)/100)m
											y=(8*sin(2*i*PI/24)/100)m
											z=0.0025m
											roll=0.0
											pitch=PI/2
											yaw=2*i*PI //24
										}
		}
	}
}

	
	
sensor my_sonar_sensor_ref {
	annotation Sonar  {
		always_on = true update_rate=1.0
		sonar = SonarDetails {
			min = 1.0
			max = 2.0
			_radius =1.5
		}
	}	
}

    function sin(theta:real): real {}

    function cos(theta:real): real {}

	const PI: real = 3.1415
