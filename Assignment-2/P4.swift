/*

		                  * 
                    *   * 
                  *   *   * 
                *   *   *   * 
              *   *   *   *   * 
            *   *   *   *   *   * 
              *   *   *   *   * 
                *   *   *   * 
                  *   *   * 
                    *   * 
                      * 
*/
var n=10,k=n-1,m=0
for i in 0...n{
  if(i<(n/2)){
    	for j in 0...n-1{
      	   if(k<=j && m<=i){
      		print("  * ", terminator:"")
      	   }else{
      		print("  ", terminator:"")
      	   }
    	}
   k-=1
  }else if(i>=(n/2)){
    	for j in 0...n-1{
      	   if(k<=j && m<=i){
      		print("  * ", terminator:"")
      	   }else{
      		print("  ", terminator:"")
      	   }
    	}
   k+=1
  }
  m+=1
  print()
}
