package Gearbox
pmodel Gearbox {
	part p = P {
	}
	local link B {
		def{
		}
	}
	local link C {
		def{
		}
	}		
	local link A {
		def {
		}
		local joint R {
			def {
				annotation Gearbox {
					gearbox_ratio = 0.5
					gearbox_reference_body = B
					}
				}
			flexibly connected to L2 in p
		}
	}
}
pmodel P {
	local link L2 {
		def {
		}
	}
	local link B {
		def{
		}
	}	
}