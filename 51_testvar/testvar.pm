//cvals not fully implemented yet

package testvar    
    pmodel testvar{
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
    