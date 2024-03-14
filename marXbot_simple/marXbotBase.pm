package marXbotBase

import common::*
 
import physmod::actuators::SpeedControlMotor

import physmod::joints::Revolute

import physmod::sensors::IR

import physmod::math::*
pmodel marXbotBase {
	part LTreel = Treel {
		
				pose {
					x = 0.0
					y = 0.03m // 3.0cm
					z = 0.025m // 2.5cm
					roll = PI
					pitch = 0
					yaw = 0
				}
		
					instantiation HEIGHT = 0.05m
		//5.0cm
					instantiation DEPTH = 0.03m
		//3.0cm
					instantiation WIDTH = 0.17m
	}
	part RTreel = Treel {
		
				pose {
					x = 0.0
					y = -0.03m // -3.0cm
					z = 0.025m // 2.5cm
					roll = 0
					pitch = 0
					yaw = 0
				}
		
					instantiation HEIGHT = 0.05m
		//5.0cm
					instantiation DEPTH = 0.03m
		//3.0cm
					instantiation WIDTH = 0.17m
	}
	local link Core {
		
				pose {
					x = 0
					y = 0
					z = 0.0575m // 5.75cm
					roll = 0
					pitch = 0
					yaw = 0
				}
		def {
		}
		fixed to Track in LTreel
		fixed to Track in RTreel
		local body Spine {
			
							pose {
								x = 0
								y = 0
								z = -0.0225m // -2.25cm
								roll = 0
								pitch = 0
								yaw = PI/2
							}
			def {
				
									box(length = 0.03m//3.0cm
									, width = 0.16m//16.0cm
									, height = 0.04m//4.0cm
									)
			}
		}
		local body Frame {
			def {
				
									cylinder(radius = 0.085m//8.5cm
										, length = 0.005m//0.5cm
									)
			}
		}
		sref Proximity = IR {
			
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
		pose {
								x = (0.085*cos(2*j*PI/24))m
								y = (0.085*sin(2*j*PI/24))m
								z = 0.0
								roll = 0.0
								pitch = 0
								yaw = 2*j*PI/24
							}
			
								index j : [0,24)
		}
		jref LHinge = Revolute {
			
							pose {
								x = 0.0
								y = 0.03m // -3.0cm
								z = -0.0325m // 2.5cm
								roll = 0
								pitch = 0
								yaw = 0
							}
			
								annotation Revolute {
									axis = Axis {
										initial_position =PI
										xyz = (|0,1,0|)
										dynamics=Dynamics{
											damping = 0.0
											_friction = 0.0
											spring_reference = 0.0
											spring_stiffness = 0.0
										}
										limit = Limit{
											lower =  -1e+16
											upper = 1e+16
											effort = -1.0
											velocity = -1.0
											stiffness = 1e+8
											dissipation = 1.0							
										}
									}
								}
			flexibly connected to Wheel in LTreel
			aref LMotor = SpeedControlMotor {
				relation LMotor.T == LHinge.tau
			}
			
								instantiation AXIS = (|0,1,0|)
		}
		jref RHinge = Revolute {
			
							pose {
								x = 0.0
								y = -0.03m // -3.0cm
								z = -0.0325m // 2.5cm
								roll = 0
								pitch = 0
								yaw = 0
							}
			
								annotation Revolute {
									axis = Axis {
										initial_position =PI
										xyz = (|0,-1,0|)
										dynamics=Dynamics{
											damping = 0.0
											_friction = 0.0
											spring_reference = 0.0
											spring_stiffness = 0.0
										}
										limit = Limit{
											lower =  -1e+16
											upper = 1e+16
											effort = -1.0
											velocity = -1.0
											stiffness = 1e+8
											dissipation = 1.0							
										}										
									}
								}
			flexibly connected to Wheel in RTreel
			aref RMotor = SpeedControlMotor {
				relation RMotor.T == RHinge.tau
			}
			
								instantiation AXIS = (|0,-1,0|)
		}
	}
}