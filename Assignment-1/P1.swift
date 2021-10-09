/*
1. Make a function that takes an integer as a parameter
2. Throw error if the number is negative
3. Display whether the number is Even or Odd
*/
enum invalidError:Error{
  case neg
  var msg:String{
    switch self{
      case .neg :return("Given Values Is Negative")
    }
  }
}
func checkno(num : Int) throws{
  if(num < 0){
    throw invalidError.neg
  }else{
    if(num%2==0){
      print(num,"is Even")
    }else{
      print(num,"is Odd")
    }
  }
}
do{
  try checkno(num:10)
}catch{
  if let error = error as? invalidError{
    print(error.msg)
  }
}
