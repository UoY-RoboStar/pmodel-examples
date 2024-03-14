package BodySonarRef 
	import physmod::sdf::annotations::*
	pmodel BodySonarRef {
		local link Tip{
			def{}
			local body my_body {
				pose { x=0.0 y=0.0 z=0.9 roll=0.0 pitch=0.0 yaw=0.0}
				def {
						sphere  (radius=0.05)
					}
			}
			sref my_sonar_ref = my_sonar{
				pose {x=0.0 y=0.0 z=0.9 roll=0.0 pitch=0.0 yaw=0.0}	
				annotation Sonar  {
					always_on = true update_rate=1.0
					sonar = SonarDetails {
						min = 1.5
						max = 2.5
						_radius =2.5
					}
				}											
			}
		}		
	}
	
	
sensor my_sonar {	
}