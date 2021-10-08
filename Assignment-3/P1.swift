var cnt=0,n=5,k=1
print("=======[ 1 ]=======\n1\n1 2 \n1 2 3 \n1 2 3 4\n1 2 3 4 5\n")
print("=======[ 2 ]=======\n1\n2 3 \n4 5 6 \n7 8 9 10\n11 12 13 14 15")
print("=======[ 3 ]=======\n1\n1 1 \n1 2 1 \n1 3 3 1\n1 4 6 4 1\n")
print("===================\nFor Exit Enter '0'\n===================\n")
while true{
  print("Enter your choice :\n")
  if let inp = Int(readLine()!){
    print()
    switch inp{
      case 1:
            cnt=0
            for i in 0...n-1{
                for j in 0...i{
                  cnt=j
	                  print("\(cnt+1) ",terminator:"")
                }
                print()
            }
      case 2:
            cnt=1
            for i in 0...n-1{
                for _ in 0...i{
	                  print("\(cnt) ",terminator:"")
                    cnt+=1
                }
                print()
            }
      case 3:
            var results = [[Int]]()
            for i in 0..<n {
                var currentResults = [Int]()
            for j in 0...i {
              if (i > 1 && j > 0 && j < i) {
                  let value = results[i-1][j] + results[i-1][j-1]
                  currentResults.append(value)
                  print("\(value) ", terminator: "")
              } else {
                currentResults.append(1)
                print("\(1) ", terminator: "")
            }
        }
        results.append(currentResults)
        print("\n")
      }
      case 0:
            print("Exit..!")
            break
      default:print("Invalid Choice try again...\n")
    }
    if inp==0{
      break
    } 
  }else{
    print("Invalid Input....!\n")
    break
  }
}
