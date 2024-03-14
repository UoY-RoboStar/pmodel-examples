package testSensorVar

pmodel testSensorVar{
	local link L {
		def {
		}
		local sensor MyIMU {
			def {
				const G: real = 4.0
				annotation IMU {
					update_rate = 3.0
				}
			}
		}
	}
}
