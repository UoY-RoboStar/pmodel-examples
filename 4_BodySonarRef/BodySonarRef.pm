package BodySonarRef 
	import physmod::sdf::annotations::*
	pmodel BodySonarRef {
		local link Tip{
			def{}
			local body my_body {
				def {
						sphere  (radius=0.05)
					}
			}
			sref my_sonar_ref = my_sonar{
			}
		}		
	}
	
	
sensor my_sonar {
	annotation Sonar  {
		always_on = true update_rate=1.0
		sonar = SonarDetails {
			min = 1.0
			max = 2.0
			_radius =1.5
		}
	}	
}