package marXbot
pmodel testvar1 {
	part RTREEL = Treel {
		
					pose { x=0.0 y=-0.03 z=0.025 roll=0.0 pitch=0.0 yaw=0.0}
		
						instantiation HEIGHT = 0.05m
		
						instantiation DEPTH = 0.03m
		
						instantiation WIDTH = 0.17m
	}
	local link Core {
		
					pose { x=0.0 y=0.0 z=0.0575 roll=0.0 pitch=0.0 yaw=0.0}
		def {
		}
		fixed to Track in RTREEL
	}
}
pmodel Treel {
	local link Wheel {
		
						pose { x=0.0 y=-DEPTH z=0.0 roll=PI/2 pitch=0.0 yaw=0.0}
		def {
		}
	}
	local link Track {
		def {
		}
	}
	
			const HEIGHT: real
	
			const WIDTH: real
	
			const DEPTH: real
}

    function sin(theta:real): real {}

    function cos(theta:real): real {}

	const PI: real = 3.1415
