package testSensorVar

pmodel testSensorVar{
	local link L {
		def {
		}
		local sensor MyIMU {
			def {
				const G: real = 8.0
				annotation IMU {
					update_rate = G
				}
			}
		}
	}
}
