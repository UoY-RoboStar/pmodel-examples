package linklink
pmodel LL {
	local link L1 {
		def {
		}
		fixed to L2
		local body B {
			def {
				
									box(length=0.1,width=0.1,height=0.1)
			}
		}
	}
	local link L2 {
		
				pose {
					x = 0
					y = 0
					z = 0.1
					roll = 0
					pitch = 0
					yaw = 0
				}
		def {
		}
		local body B {
			def {
				
									box(length=0.1,width=0.1,height=0.1)
			}
		}
	}
}
