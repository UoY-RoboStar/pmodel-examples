package TwoLinksPlusFixedConnection
pmodel TwoLinksPlusFixedConnection {
	local link Tip {
		
					pose { x=0.0 y=0.0 z=0.9 roll=0.0 pitch=0.0 yaw=0.0}
		def {
			
								inertial information{ 
								mass 5.7
								inertia matrix {ixx 0.0 ixy 1.0 ixz 2.3 iyy 1.2 iyz 0.5 izz 0.0}
								}
		}
		local body Tip {
			def {
				
											sphere  (radius=0.05)
				
											friction {
												translational {
													coefficient1 0.0
													coefficient2 0.0
													direction (|0,1,0|)
													slip1 1.0
													slip2 1.0
												}
											}
			}
		}
	}
	local link Rod {
		def {
		}
		fixed to Tip
		local body Rod {
			def {
				
											cylinder (radius=0.05, length=1.8)
			}
		}
	}
}
