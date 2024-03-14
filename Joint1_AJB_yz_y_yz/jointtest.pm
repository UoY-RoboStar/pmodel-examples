package Joint1_AJB_yz_y_yz
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
		local joint barAB_joint {
			pose {
				x=0.0
				y=-0.5
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
			flexibly connected to linkB
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
		}
	}
}
