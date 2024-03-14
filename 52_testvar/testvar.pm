//cvals not fully implemented yet

package testvar    
	const c: int = 4
	const a: int
    pmodel testvar{
    	const b: real = 7.5
    	local link Core {
    		def{}
    		local body Spine {
					def{
						box (length=a, width=b, height=c) 
					}
				}				   			
    		}     		
    	}	
