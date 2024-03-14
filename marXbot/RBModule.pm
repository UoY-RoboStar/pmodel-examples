package rangeandbearing


import common::*

import physmod::math::*

import physmod::actuators::LED

import physmod::sensors::IR
pmodel RangeAndBearing {
	local link Core {
		
				pose {
					x = 0
					y = 0
					z = 0
					roll = 0
					pitch = 0
					yaw = 0
				}
		def {
			
						inertial information {
							mass 0.01kg
						}
		}
		local body Frame {
			def {
				
									cylinder(radius = 0.085m
										, length = 0.005m
									)
			}
		}
		sref IRSensor = IR {
			
			
							index i : [0,8)
			
							pose {
								x = (0.085*cos(i*PI/4))m
								y = (0.085*sin(i*PI/4))m
								z = 0.0
								roll = 0.0
								pitch = 0
								yaw = i*PI/4 //2*PI/8
							}
			
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
		aref LeftLED = LED {
			
							index l : [0,8)
			
							pose {
								x = (0.085*cos(l*PI/4+PI/24))m // PI/24 radians to the left of the sensor
								y = (0.085*sin(l*PI/4)+PI/24)m
								z = 0.0
								roll = 0.0
								pitch = 0
								yaw = l*PI/4+PI/24
							}
		}
		aref RightLED = LED {
			
							index r : [0,8)
			
							pose {
								x = (0.085*cos(r*PI/4-PI/24))m // PI/24 radians to the left of the sensor
								y = (0.085*sin(r*PI/4)-PI/24)m
								z = 0.0
								roll = 0.0
								pitch = 0
								yaw = r*PI/4-PI/24
							}
		}
	}
}
