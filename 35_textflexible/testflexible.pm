package testflexible
pmodel testflexible {
	part TLB=testlinkb{
	}
	part TLA=testlinka{
		joint barAB_joint flexibly connected to linkB in TLB
	}
}
pmodel testlinka{
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
		local joint barAB_joint {
			pose {
				x=0.0
				y=-0.5
				z=0.0
				roll=-0.523599
				pitch=1.5708
				yaw=1.5707964
			}
			def {
				annotation  Revolute  {
					axis=Axis {
						xyz = (|0,0,1|)
					}
				}
			}
		}
	}
}
pmodel testlinkb{
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
	}
}
