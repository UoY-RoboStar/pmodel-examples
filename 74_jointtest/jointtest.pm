package jointtest
pmodel jointtest {
	part p1 = P1 {
		joint R flexibly connected to L2 in p2
	}
	part p2 = P2 {
		pose {
			x = 0
			y = 0
			z = 0.1
			roll = 0
			pitch = 0
			yaw = 0
		}
	}
}
pmodel P1 {
	local link L1 {
		index i: [0,1]
				pose {
					x = i
					y = 0
					z = 0
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
		local joint R {
			def {
				annotation Revolute {
					axis = Axis {
						xyz = (|0,0,1|)
					}
				}
			}
		}
	}
}
pmodel P2 {
	local link L2 {
		def {
		}
		local body B {
			def {
				box(length=0.1,width=0.1,height=0.1)
			}
		}
	}
}
