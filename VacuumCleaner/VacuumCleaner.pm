package VacuumCleaner
pmodel VacuumCleaner {
	local link Cylinder {
		pose {
			x=0.0
			y=0.0
			z=0.0325
			roll=0.0
			pitch=0.0
			yaw=0.0
		}
		def {
		}
		local body Cylinder {
			def {
				cylinder (radius=0.05, length=0.005)

				inertial information{
					mass 3.927e-02
				}
			}
		}
		sref Proximity = IR {
			pose {
				x=-0.05
				y=0.0
				z=0.03
				roll=0.0
				pitch=3.1415
				yaw=0.0
			}
		}
		sref acc_left = ACC {
			pose {
				x=0.0
				y=-0.05
				z=0.03
				roll=0.0
				pitch=3.1415
				yaw=0.0
			}
		}
		sref acc_right = ACC {
			pose {
				x=0.0
				y=0.05
				z=0.03
				roll=0.0
				pitch=3.1415
				yaw=0.0
			}
		}
		local joint LeftHinge {
			pose {
				x=0.0
				y=-0.0225
				z=0.014
				roll=0.0
				pitch=0.0
				yaw=0.0
			}
			def {
				annotation Revolute  {
					axis=Axis{
						xyz = (|0,1,0|)
					}
				}
			}
			flexibly connected to LeftWheel
		}
		local
joint RightHinge {
			pose {
				x=0.0
				y=0.0225
				z=0.014
				roll=0.0
				pitch=0.0
				yaw=0.0
			}
			def {
				annotation Revolute  {
					axis=Axis{
						xyz = (|0,1,0|)
					}
				}
			}
			flexibly connected to RightWheel
		}
		jref FrontSpherical = Spherical {
			pose {
				x=0.02
				y=0.0
				z=0.01
				roll=0.0
				pitch=0.0
				yaw=0.0
			}
			flexibly connected to FrontCaster
		}
		jref BackSpherical = Spherical {
			pose {
				x=-0.02
				y=0.0
				z=0.01
				roll=0.0
				pitch=0.0
				yaw=0.0
			}
			flexibly connected to BackCaster
		}
	}
	local link FrontCaster {
		pose {
			x=0.03
			y=0.0
			z=0.01
			roll=0.0
			pitch=0.0
			yaw=0.0
		}
		def {
		}
		local
body FrontCaster {
			def {
				sphere (radius=0.01)
			}
		}
	}
	local
link BackCaster {
		pose {
			x=-0.03
			y=0.0
			z=0.01
			roll=0.0
			pitch=0.0
			yaw=0.0
		}
		def {
		}
		local
body BackCaster {
			def {
				sphere (radius=0.01)
			}
		}
	}
	local
link LeftWheel {
		pose {
			x=0.0
			y=0.0225
			z=0.014
			roll=1.57
			pitch=0.0
			yaw=0.0
		}
		def {
		}
		local
body LeftWheel {
			def {
				cylinder (radius=0.014, length=0.005)
			}
		}
	}
	local
link RightWheel {
		pose {
			x=0.0
			y=-0.0225
			z=0.014
			roll=1.57
			pitch=0.0
			yaw=0.0
		}
		def {
		}
		local
body RightWheel {
			def {
				cylinder (radius=0.014, length=0.005)
			}
		}
	}
	local
link Cuboid {
		pose {
			x=0.0
			y=0.0
			z=0.02
			roll=0.0
			pitch=0.0
			yaw=0.0
		}
		def {
		}
		fixed to Cylinder
		local
body Cuboid {
			def {
				box (length=0.04, width=0.04, height=0.02)

				inertial information{
					mass 3.200e-02
				}
			}
		}
	}
}
sensor IR {
	annotation Logical_camera{
		always_on = true
		update_rate=1.0
		logical_camera = Logical_cameraDetails {
			near = 0.02
			far = 0.3
			aspect_ratio=0.0
			horizontal_fov=0.0
		}
	}
}
sensor ACC {
	annotation Logical_camera{
		always_on = true
		update_rate=1.0
		logical_camera = Logical_cameraDetails {
			near = 0.02
			far = 0.3
			aspect_ratio=0.0
			horizontal_fov=0.0
		}
	}
}
joint Spherical {
	annotation Revolute  {
		axis=Axis{
			xyz = (|0,1,0|)
		}
	}
}
