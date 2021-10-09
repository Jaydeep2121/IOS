/*
  Find the second largest value in an array without using array sort
  case 1: [43, 5, 1, 14, 3, 8, 72, 4, 6]    // 43
  case 2: [12, 35, 1, 10, 34, 1]              // 34
  case 3: [10, 5, 10]                         // 5
  case 4: [10, 10, 10]                        // Not Found
*/
print("enter number of elements you want in array : ")
if let n = Int(readLine()!){
    if (n < 2) {
        print("need at least 2 elements\n");
    }else{
        var arr = [Int](repeating: 10, count: Int(n))
        print("enter elements: ")
        for i in 0...n-1{
          if let value=Int(readLine()!){
              arr[i]=value
          }else{
              print("Invalid Input....!\n")
              break
          }
        }
        var larg1 = arr[0];
        for i in 1...n-1{
            if (arr[i] > larg1) {
                larg1 = arr[i];
            }
        }
        var haslargest2 = 0;
        var larg2 = 0
        for i in 0...n-1{
            if (arr[i] < larg1) {
                if haslargest2==0 {
                    haslargest2 = 1;
                    larg2 = arr[i];
                }else{
                  if (arr[i] > larg2) {
                    larg2 = arr[i];
                  }
              }
        }
      }
      if haslargest2 != 0 {
        print("second largest number is \(larg2)");
      } else {
        print("Not Found");
      }
    }
}else{
    print("The input is not a number")
}

