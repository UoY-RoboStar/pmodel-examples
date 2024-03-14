package LinkIndexSonarIndex 
	import physmod::sdf::annotations::*
	import physmod::math::*
	pmodel LinkIndexSonarIndex{
	local link Tip{
		index i : [0,4)
		pose {
			x = (0.085*cos(i*3.14159/4))m
			y = (0.085*sin(i*3.14159/4))m
			z = 0.0
			roll = 0.0
			pitch = 0
			yaw = i*3.14159/4
		}
		def{
		}
		local sensor my_sonar{
			index i : [0,4)
			pose {
				x = i*0.01
				y = 0.0
				z = 0.0
				roll = 0.0
				pitch = 0.0
				yaw = 0.0
			}
			
			def{
				annotation Sonar  {
					always_on = true
					update_rate=1.0
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
