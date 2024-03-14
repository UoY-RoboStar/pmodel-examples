package Joint6_C_AJB_xyzrpw_xyzrpw_xyzrpw
pmodel jointtest {
	local link linkA {
		pose {
			x=1.0
			y=0.5
			z=0.5
			roll=1.5708
			pitch=3.14159
			yaw=-1.0472
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
			yaw=1.0472
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
				x=1.3194803
				y=-0.71334493
				z=0.010805127
				roll=1.4116393
				pitch=-0.12717542
				yaw=-0.90541834
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
