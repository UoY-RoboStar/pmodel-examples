package TestP

	pmodel TESTP{
		const DEPTH: real 
		const m: real = 4.0
		local link Track {
			def {}
			local sensor my_sonar_sensor{
				pose { x=1 y=0.0 z=0.9 roll=0.0 pitch=0.0 yaw=0.0}
				def {
					const p : int = 1
					const e: int = 3
					annotation Sonar  {
						always_on = true update_rate=1.0
						sonar = SonarDetails {
							min = p+e
							max = m
							_radius =-DEPTH
						}
					}
				}
			}
		}
	}	