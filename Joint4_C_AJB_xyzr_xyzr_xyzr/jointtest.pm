package Joint4_C_AJB_xyzr_xyzr_xyzr
pmodel jointtest {
	local link linkA {
		pose {
			x=1.0
			y=0.5
			z=0.5
			roll=1.5708
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
			roll=1.0472
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
				x=1.0
				y=0.06698551
				z=-1.1160271
				roll=9.536743e-7
				pitch=-0.0
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
