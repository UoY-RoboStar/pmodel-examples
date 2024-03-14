import marXbotBase::*

map M dmodel marXbotSoftware to pmodel marXbotBase {
	operation move {
		var dsl: real, dsr: real 
		const axisLength: real = 0.06m
		equation Core::LHinge::LMotor.das == dsl
		equation Core::RHinge::RMotor.das == dsr 
		equation lv == 0.025025*(dsl+dsr)/2
		equation av == 0.025025*(dsl-dsr)/axisLength
	}
	operation stop {
		equation Core::LHinge::LMotor.das == 0
		equation Core::RHinge::RMotor.das == 0
	}
	input event obstacle {
		predicate Core::Proximity[1].voltage  >= 3.0
	} 
}