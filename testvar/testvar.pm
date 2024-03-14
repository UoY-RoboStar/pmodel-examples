package testvar
import TestP::*

          
	pmodel testvar {
		part TEST = TESTP{
			instantiation DEPTH = 0.03m
		}
		local link Core {
			def{}
			local sensor my_sonar_sensor{
				pose { x=1 y=0.0 z=0.9 roll=0.0 pitch=0.0 yaw=0.0}
				def {
					const l : int
					annotation Sonar  {
						always_on = true update_rate=1.0
						sonar = SonarDetails {
							min = l
							max = 2
							_radius =3
						}
					}
				}
			}																	
			fixed to Track in TEST
			}
	}