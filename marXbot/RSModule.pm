package rotatingscanner


import common::*

import physmod::math::*

import physmod::actuators::LED

import physmod::sensors::IR

import physmod::joints::Revolute
pmodel RotatingScanner {
	part longrange = LR_IR {
		
				index i : [0,4)
		 
				pose {
					x = (0.044*cos(i*PI/2))m
					y = (0.044*sin(i*PI/2))m
					z = 0.0055m
					roll = 0.0
					pitch = 0
					yaw = i*PI/2
				}
	}
	local link Base {
		 
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
				
									cylinder(radius = 0.065m 
										, length = 0.001m
									)
			}
		}
		jref rj = Revolute {
			
								annotation Revolute {
									axis = Axis {
										xyz = (|0,0,1|)
									}
								}
			flexibly connected to Core
			
								instantiation AXIS = (|0,0,1|)
		}
	}
	local link Core {
		
				pose {
					x = 0
					y = 0
					z = 0.0055m
					roll = 0
					pitch = 0
					yaw = 0
				}
		def {
		}
		fixed to BBody in longrange
		local body Spine {
			def {
				
									cylinder (radius = 0.04m, length = 0.01m)
			}
		}
		local body Top {
			
							pose { x = 0 y = 0 z = 0.0055m roll = 0 pitch = 0 yaw = 0}
			def {
				
									cylinder(radius = 0.085m
										, length = 0.001m
									)
			}
		}
	}
}
pmodel LR_IR {
	local link BBody {
		def {
			
						inertial information {
							mass 0.001kg
						}
		}
		local body Box {
			def {
				
									box(length=0.008m, width=0.016m, height=0.008m)
			}
		}
		sref IRSensor = IR {
			
							pose {
								x = 0.004m
								y = -0.004m
								z = 0
								roll = 0
								pitch = 0
								yaw = 0
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
			
							pose {
								x = 0.004m
								y = -0.004m
								z = 0
								roll = 0
								pitch = 0
								yaw = 0
							}
		}
	}
}
