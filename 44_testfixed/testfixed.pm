package testfixed
pmodel testfixed {
	part TLB=testlinkb{
		link linkB fixed to linkA in TLA
	}
	part TLA=testlinka{
					
	}	
}

pmodel testlinka{	
	part TLC=testlinkc{
		link linkC fixed to linkA 
	}
	local link linkA {
		
						pose {x=1.0 y=0.5 z=0.5 roll=1.5708 pitch=3.14159 yaw=-1.0472}
		def {
		}
		local body bodyA {
			def {
				
											box (length=1.0, width=1.0, height=1.0)
			}
		}
	}
}
pmodel testlinkb{	
	local link linkB {
		
						pose { x=0.0 y=-0.5 z=0.5 roll=1.0472 pitch=-0.785398 yaw=1.0472}
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

pmodel testlinkc{	
	local link linkC {
		
						pose {x=2.0 y=0.5 z=0.5 roll=1.5708 pitch=3.14159 yaw=-1.0472}
		def {
		}
		local body bodyC {
			def {
				
											box (length=1.0, width=1.0, height=1.0)
			}
		}
	}
}