package jointtest
pmodel jointtest {
	local link L1 {
		def {
		}
		index i: [0,1]
				pose {
					x = i
					y = 0
					z = 0
					roll = 0
					pitch = 0
					yaw = 0
				}		
		local joint R {
			def {
				annotation Revolute {
					axis = Axis {
						xyz = (|0,0,1|)
					}
				}
			}
			flexibly connected to L2
		}
	}
	local link L2 {
		def {
		}
	}
}
