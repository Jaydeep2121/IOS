func div(a:inout Int,b:inout Int) throws
{
  guard b>0 else{
    throw numError.divZero
    return
  }
  print("a=\(a) b= \(b)")
}
enum numError:Error
{
  case divZero
  var msg:String
  {
      switch self
      {
        case .divZero:return "Error:Divide by zero";
      }
  }
}
do
{
  var a=1
  var b=0
  try div(a:&a,b:&b)
}
catch
{
  if let error=error as?numError
  {
    print(error.msg)
  }
}

func findavg(_ num:Double...)->Double
{
    var tot : Double = 0.0
    for n in num
    {
        tot+=n
    }
    return tot/Double(num.count)
}
var res=0.0
res=findavg(1.7,2.4,3.0,4.9,5.5)
print("Average : \(res)")
