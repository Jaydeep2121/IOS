/*

* 
* * 
* * * 
* * * * 
* * * * * 
* * * * * * 
* * * * *   
* * * *     
* * *       
* *         
*

*/
var n=10,k=n/2,m=0
if(n%2==0){
  n+=1
}
for i in 0...n-1{
  if(i<(n/2)){
    for _ in 0...i{
      print("* ", terminator:"")
    }
  }else if(i>=(n/2)){
        for j in stride(from:(n/2),to:-1,by:-1){
            if(k<=i && m<=j){
      		      print("* ", terminator:"")
    	      }else{
      		      print("  ", terminator:"")
    	      } 
        }
        m+=1
        k-=1
    }
    print()
}
