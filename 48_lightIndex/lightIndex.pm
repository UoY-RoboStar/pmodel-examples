//Index for actuator is not implemented yet

package lightIndex
import physmod::math::*
pmodel lightIndex {
	local link L1 {
		pose {
			x = 0
			y = 0
			z = 0.05
			roll = 0
			pitch = 0
			yaw = 0
		}
		def {
		}
		local body B1 {
			def {
				box(length=0.1,width=0.1,height=0.1)
			}
		}
		local actuator my_light {
			index i : [0,4)
			pose {
				x = (0.085*cos(i*3.14159/4))m
				y = (0.085*sin(i*3.14159/4))m
				z = 0.0
				roll = 0.0
				pitch = 0
				yaw = i*3.14159/4
			}
			def{
				annotation Light {
				}
			}
		}
	}
}
