package TwoBodiesPlusPrismaticJoint_ReverseParentChild
pmodel TwoBodiesPlusPrismaticJoint {
	local link base_link {
		pose {
			x=0.0
			y=0.0
			z=0.0
			roll=0.0
			pitch=0.0
			yaw=0.0
		}
		def {
			inertial information{
				mass 10.0
				inertia matrix {ixx 0.4 ixy 0.0 ixz 0.0 iyy 0.4 iyz 0.0 izz 0.2}
			}
		}
		local body base_body {
			def {
				cylinder (radius=0.05, length=0.24)
			}
		}
	}
	local link second_link {
		pose {
			x=0.0
			y=0.0
			z=0.12
			roll=0.0
			pitch=0.0
			yaw=0.0
		}
		def {
			inertial information{
				mass 10.0
				inertia matrix {ixx 0.0 ixy 0.0002835 ixz 0.0 iyy 0.0002835 iyz 0.0 izz 0.000324}
			}
		}
		local body second_body {
			def {
				cylinder (radius=0.03, length=0.24)
			}
		}
		local joint my_prismatic_joint {
			pose {
				x=0.0
				y=0.0
				z=0.0
				roll=0.0
				pitch=0.0
				yaw=0.0
			}
			def {
				annotation Prismatic  {
					axis=Axis{
						xyz = (|0,0,1|)
						initial_position = 0.01
						dynamics = Dynamics{
							damping = 0.1
							_friction = 0.1
							spring_reference = 0.1
							spring_stiffness = 0.1
						}
						limit = Limit{
							lower = -0.1
							upper=2.0
							effort=1.1
							velocity=-1.2
							stiffness = 1.3
							dissipation =1.4
						}
					}
				}
			}
			flexibly connected to base_link
		}
	}
}
