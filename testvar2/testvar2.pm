package EvalTest
pmodel testvar2 {
	local link Tip {
		
						pose { x=0.0 y=-DEPTH z=0.0 roll=f pitch=PI/2 yaw=0.0}
		def {
			
								inertial information{ 
								mass f
								//mass (f-d)/2
								//mass 2+3-f*2-d+sin(1.5708)	
								//mass d-1e+1
								//+c
								}
		}
	}
	
			const f:real=7
	
			const d:int=-8
	 //, c:real
			const PI : real = 3.1415
	
			const DEPTH: real=10
	
			const HEIGHT: real = 0.5
}
 
    function sin(theta:real): real {}

    function func(a:real, b:real, c:real): real {}

    const WIDTH: real = 1.7
