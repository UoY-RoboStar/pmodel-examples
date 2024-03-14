package mainbase
pmodel mainbase {
	part LBASE = Base {
		
		 			pose { x=-0.2 y=0.0 z=0.0 roll=0.0 pitch=0.0 yaw=0.0}
	}
	part RBASE = Base {
		
		  			pose { x=0.2 y=0.0 z=0.0 roll=0.0 pitch=0.0 yaw=0.0}
	}
}
pmodel Base {
	part LWHEEL = Wheel {
		
		  			pose { x=-0.1 y=0.0 z=0.0 roll=0.0 pitch=0.0 yaw=0.0}
	}
	part RWHEEL = Wheel {
		
		  			pose { x=0.1 y=0.0 z=0.0 roll=0.0 pitch=0.0 yaw=0.0}
	}
	local link Core {
		def {
		}
		fixed to wheel in LWHEEL
		fixed to wheel in RWHEEL
		jref LJ = Revolute {
			flexibly connected to wheel in LWHEEL
		}
		jref RJ = Revolute {
			flexibly connected to wheel in RWHEEL
		}
	}
}
pmodel Wheel {
	local link wheel {
		def {
		}
		local body bwheel {
			def {
				
				   						cylinder (radius=0.025, length=0.03)
			}
		}
	}
}
 

joint Revolute {
	annotation  Revolute  {
	}	
	const axis: vector(real,3)
}

