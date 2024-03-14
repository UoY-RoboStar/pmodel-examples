package jointtest
pmodel jointtest {
	part p = P {
				index i: [0,1]
				pose {
					x = i
					y = 0
					z = 0
					roll = 0
					pitch = 0
					yaw = 0
				}						
	}
	local link L1 {		
		def {
		}
		local joint R {
			def {
				annotation Revolute {
					axis = Axis {
						xyz = (|0,0,1|)
					}
				}
			}
			flexibly connected to L2 in p
		}
	}
}
pmodel P {
	local link L2 {		
		def {
		}
	}
}
