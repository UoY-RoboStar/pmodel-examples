package jointtest
pmodel jointtest {	
	part p1 = P1 {
		joint R flexibly connected to L2 in p2
		joint R3 flexibly connected to L3 in p2		
	}
	part p2 = P2 {
		joint R4 flexibly connected to L4
	}
	local link L4 {
		def {
		}
		local body B {
			def {
				box(length=0.1,width=0.1,height=0.1)
			}
		}
	}	
}
pmodel P1 {
	local link L1 {
		def {
		}
		local body B {
			def {
				box(length=0.1,width=0.1,height=0.1)
			}
		}
		local joint R {
			def {
				annotation Revolute {
					axis = Axis {
						xyz = (|0,0,1|)
					}
				}
			}
		}
		local joint R3 {
			def {
				annotation Revolute {
					axis = Axis {
						xyz = (|0,0,1|)
					}
				}
			}
		}		
	}
}
pmodel P2 {
	local link L2 {
		def {
		}
		local body B {
			def {
				box(length=0.1,width=0.1,height=0.1)
			}
		}
	}
	local link L3 {
		pose {
			x = 1
			y = 0
			z = 0.1
			roll = 0
			pitch = 0
			yaw = 0
		}
		def {
		}
		local joint R4 {
			def {
				annotation Revolute {
					axis = Axis {
						xyz = (|0,0,1|)
					}
				}
			}
		}					
	}
		
}
