package a
pmodel A {
	local link L1 {
		pose {
			x = 0
			y = 0
			z = 0.05
			roll = 0
			pitch = 0
			yaw = 0
		}
		def {
		}
		local body B1 {
			def {
				box(length=0.1,width=0.1,height=0.1)
			}
		}
		local actuator A {
			def {
				annotation Light {
				}
			}
		}
		local joint R {
			def {
		}
			flexibly connected to L2
		local actuator Motor {
			def {
				annotation Physics {
				}
			}
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
		local body B2 {
			def {
				box(length=0.1,width=0.1,height=0.1)
			}
		}
	}
}
