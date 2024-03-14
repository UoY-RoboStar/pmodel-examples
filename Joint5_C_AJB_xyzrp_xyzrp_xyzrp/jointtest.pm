package Joint5_C_AJB_xyzrp_xyzrp_xyzrp
pmodel jointtest {
	local link linkA {
		pose {
			x=1.0
			y=0.5
			z=0.5
			roll=1.5708
			pitch=3.14159
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
			roll=1.0472
			pitch=-0.785398
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
				x=1.0606593
				y=0.19381309
				z=-1.0428036
				roll=-1.3089999
				pitch=1.0472051
				yaw=1.5707964
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
