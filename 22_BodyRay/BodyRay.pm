package BodyRay 
	import physmod::sdf::annotations::*
	pmodel BodyRay{
		local link Tip {
			def{}
				local body my_body{
						pose { x=0.0 y=0.0 z=0.9 roll=0.0 pitch=0.0 yaw=0.0}
						def {
							sphere  (radius=0.05)
						}
					}
					local sensor my_ray{
						pose {
							x=0.0
							y=0.0
							z=0.9
							roll=0.0
							pitch=0.0
							yaw=0.0
						}
						def {
							annotation Ray {
								always_on = true
								update_rate = 1
								ray = RayDetails {
									scan = Scan {
										horizontal = Scan_horizontal {
											samples = 1
											resolution = 1.0
										}
										vertical = Scan_vertical {
											samples = 1
											resolution = 1.0
										}							
									}
									range = Range {
										min = 0.0
										max = 0.1
									}
								}
							}
						}
					}	
			}	
		}
