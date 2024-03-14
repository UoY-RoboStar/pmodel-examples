package EvalTest 
    function sin(theta:real): real {}
    function func(a:real, b:real, c:real): real {}
    const WIDTH: real = 1.7
	pmodel testvar {
		const f:real=7
		const d:int=-8 //, c:real
		const PI : real = 3.1415
		const DEPTH: real=10
		const HEIGHT: real = 0.5
		const k: int
 
		local link Tip{
				pose { x=k y=-DEPTH z=0.0 roll=f pitch=PI/2 yaw=0.0}
				def{
					inertial information{ 
					mass (f-d)/2
					}	
				}
			
		
	}
}