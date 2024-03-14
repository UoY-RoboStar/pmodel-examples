package testSensorVar

pmodel testSensorVar{
	local link L {
		def {
		}
		local sensor MyIMU {
			def {
				const G: real 
				annotation IMU {
					update_rate = G
				}
			}
		}
	}
}
