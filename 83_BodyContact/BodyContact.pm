package BodyContact 
	import physmod::sdf::annotations::*
	pmodel BodyContact{
		local link Tip {
				def{}
					local body my_body {
						pose { x=0.0 y=0.0 z=0.9 roll=0.0 pitch=0.0 yaw=0.0}
						def {
							sphere  (radius=0.05)
						}
					}
					local sensor my_contact_sensor{
						pose {
							x=0.0
							y=0.0
							z=0.9
							roll=0.0
							pitch=0.0
							yaw=0.0
						}
						def {
							annotation Contact  {
								always_on = true update_rate=1.0
								contact = ContactDetails {
								collision = my_body
								}
							}
						}
					}	
			}
		local link Rod {
				def{}
					local body my_body {
						pose { x=0.0 y=0.0 z=0.9 roll=0.0 pitch=0.0 yaw=0.0}
						def {
							sphere  (radius=0.05)
						}
					}	
			}				
		}