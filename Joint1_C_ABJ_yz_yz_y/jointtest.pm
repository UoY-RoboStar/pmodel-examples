package Joint1_C_ABJ_yz_yz_y
pmodel jointtest {
	local link linkA {
		pose {
			x=0.0
			y=0.5
			z=0.5
			roll=0.0
			pitch=0.0
			yaw=0.0
		}
		def {
		}
		local body bodyA {
			def {
				box (length=1.0, width=1.0, height=1.0)
			}
		}
	}
	local link linkB {
		pose {
			x=0.0
			y=-0.5
			z=0.5
			roll=0.0
			pitch=0.0
			yaw=0.0
		}
		def {
			inertial information{
				mass 1.0
			}
		}
		local body bodyB {
			def {
				box (length=1.0, width=1.0, height=1.0)
			}
		}
		local joint barAB_joint {
			pose {
				x=0.0
				y=0.5
				z=0.0
				roll=0.0
				pitch=0.0
				yaw=0.0
			}
			def {
				annotation  Revolute  {
					axis=Axis {
						xyz = (|0,0,1|)
					}
				}
			}
			flexibly connected to linkA
		}
	}
}
