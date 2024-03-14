package testfixed
pmodel testfixed {
	local link linkA {
						pose {x=0 y=0.5 z=0.5 roll=1.5708 pitch=3.14159 yaw=-1.0472}
		def {
		}

		fixed to linkB  
	}

	local link linkB {
						index i : [0,2]
		
						pose { x=0.0 y=-0.5 z=0.5 roll=1.0472 pitch=-0.785398 yaw=1.0472}
		def {
			
								inertial information{ 
									mass 1.0
								}
		}
	}	
}