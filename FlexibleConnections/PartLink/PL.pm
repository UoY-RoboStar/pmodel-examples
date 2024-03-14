package partlink
pmodel PL {
	part p = P {
		joint R flexibly connected to L1
	}
	local link L1 {
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
pmodel P {
	local link L2 {
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
