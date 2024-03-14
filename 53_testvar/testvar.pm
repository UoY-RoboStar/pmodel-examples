//cvals not fully implemented yet

package testvar    
	const c: int = 4
	const e: int = 2
    pmodel testvar{
    	const a: int
    	const b: real = 2.5
    	local link Core {
    		def{}
    		local body Spine {
				def {
						box (length=a-e, width=b*c, height=c+e) 
					}
				}				   			
    		}     		
    	}	