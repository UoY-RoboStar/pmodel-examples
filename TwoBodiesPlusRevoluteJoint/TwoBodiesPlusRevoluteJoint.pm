package TwoBodiesPlusRevoluteJoint
pmodel TwoBodiesPlusRevoluteJoint {
	local link base_link {
		pose {
			x=0.01
			y=0.01
			z=0.01
			roll=1.57
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
				inertia matrix {ixx 0.0 ixy 0.1 ixz 0.0 iyy 0.0002835 iyz 0.0 izz 0.000324}
			}
		}
		local body second_body {
			def {
				cylinder (radius=0.03, length=0.24)
			}
		}
		local joint my_revolute_joint {
			pose {
				x=0.0
				y=0.0
				z=0.0
				roll=0.0
				pitch=0.0
				yaw=0.0
			}
			def {
				annotation  Revolute  {
					axis=Axis {
						xyz = (|1,2,3|)
					}
				}
			}
			flexibly connected to base_link
		}
	}
}
