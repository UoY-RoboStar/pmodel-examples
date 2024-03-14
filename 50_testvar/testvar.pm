package testvar
    
    pmodel testvar {
    		part BASE = Base{
				instantiation a= 2.0
    		}
    	}
    
    
    pmodel Base{
    	const a: int
    	const b: real = 7.5
    	local link Core {
    		def{}
    		local body Spine {
					def{
						box (length=a, width=b, height=0.04) 
					}
				}				   			
    		}     		
    	}	
    


