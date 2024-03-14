import common::*
pmodel Treel {
	local link Wheel {
		
				pose {
					x = 0
					y = -DEPTH
					z = 0
					roll = PI/2
					pitch = 0
					yaw = 0
				}
		def {
		}
		local body Wheel {
			def {
				
									cylinder(radius = 1.001*HEIGHT/2, length = DEPTH)
			}
		}
	}
	local link Track {
		def {
		}
		local body Top {
			
							pose {
								x = 0
								y = 0
								z = HEIGHT/2
								roll = 0
								pitch = 0
								yaw = 0
							}
			def {
				
									box(length = WIDTH - HEIGHT, width = DEPTH, height = 0)
			}
		}
		local body Bottom {
			
							pose {
								x = 0
								y = 0
								z = -HEIGHT/2	
								roll = 0
								pitch = 0
								yaw = 0
							}
			def {
				
									box(length = WIDTH - HEIGHT, width = DEPTH, height = 0)
			}
		}
		local body FrontWheel {
			
							pose {
								x = -(WIDTH-HEIGHT)/2
								y = 0
								z = 0
								roll = PI/2
								pitch = 0
								yaw = 0
							}
			def {
				
									cylinder(radius = HEIGHT/2, length = DEPTH)
			}
		}
		local body BackWheel {
			
							pose {
								x = (WIDTH-HEIGHT)/2
								y = 0
								z = 0
								roll = PI/2
								pitch = 0
								yaw = 0
							}
			def {
				
									cylinder(radius = HEIGHT/2, length = DEPTH)
			}
		}
	}
	 
		const HEIGHT:real, WIDTH:real, DEPTH: real
}