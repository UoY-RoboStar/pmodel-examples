package BodySensor  
	pmodel BodySensor{
		local link Tip{
			def {}
			pose { x=0.0 y=0.0 z=0.9 roll=0.0 pitch=0.0 yaw=0.0}
			local body my_body {
				def {
					sphere  (radius=0.05)	
					bounce {
						restitution coefficient 0.2 
						threshold 98000
					}
					laser retro 0.1
				}
			}
			local sensor my_sensor {
				def {}
			}
		}
	
	}
