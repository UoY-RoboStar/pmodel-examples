interface MovementI {
	move( lv : real , av : real)
	stop()
}

interface ObstacleI {
	event obstacle
}

controller Movement {
	cycleDef cycle == 1
	uses ObstacleI
	requires MovementI
	sref sm = Simulation::SMovement
	connection Movement on obstacle to sm on obstacle
}



//operation move( lv : real , av : real) {
//	terminates
//	input context {}
//	output context {}
//}
//
//operation stop() {
//	terminates
//	input context {}
//	output context {}
//}

module marXbotSoftware {
	cycleDef cycle == 1
	robotic platform marXbotServices {
		provides MovementI
		uses ObstacleI
	}

	cref cm = Movement
	connection marXbotServices on obstacle to cm on obstacle ( _async )
}

