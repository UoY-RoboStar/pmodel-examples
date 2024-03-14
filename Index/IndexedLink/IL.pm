package indexedlink
pmodel IL {
	local link L1 {
		
				index i: [0,3]
		
				pose {
					x = 0.2*i
					y = 0
					z = 0.05
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