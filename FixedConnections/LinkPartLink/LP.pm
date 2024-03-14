package linkpartlink
pmodel LP {
	part b = B {
		
				pose {
					x = 0
					y = 0
					z = 0.1
					roll = 0
					pitch = 0
					yaw = 0
				}
	}
	local link L1 {
		def {
		}
		fixed to L1 in b
		local body B {
			def {
				
									box(length=0.1,width=0.1,height=0.1)
			}
		}
	}
}
pmodel B {
	local link L1 {
		def {
		}
		local body B {
			def {
				
									box(length=0.1,width=0.1,height=0.1)
			}
		}
	}
}
