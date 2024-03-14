import marXbotBase::*

import rangeandbearing::*

import rotatingscanner::*
pmodel marXbot {
	part p1 = marXbotBase {
		link Core fixed to Core in p2
	}
	part p2 = RangeAndBearing {
		
				pose {
					x = 0
					y = 0
					z = 0.0625m
					roll = 0
					pitch = 0
					yaw = 0
				}
		link Core fixed to Base in p3
	}
	part p3 = RotatingScanner {
		
				pose {
					x = 0
					y = 0
					z = 0.0655m
					roll = 0
					pitch = 0
					yaw = 0
				}
	}
}
