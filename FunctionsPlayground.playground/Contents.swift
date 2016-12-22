//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func doSomehting(){
    print("doing something")
}

doSomehting()

func returnInteger() -> Int{
    return 5
}

let num  = returnInteger()

func simon(said : String) -> String{
    return "Simon said " + said
}

let str1 = simon(said: "jump")

arc4random()

func getRandomNumberUpTo(limit : UInt) -> UInt{
    guard limit != 0 else {
        return 0
    }
    let r = UInt(arc4random())
    return r % limit
}

getRandomNumberUpTo(limit: 45)

func check(isFriday13th date : Date) -> Bool{
    let calendar = Calendar.current
    let comps : DateComponents = calendar.dateComponents([.day, .weekday], from: date)
    
    return comps.day == 13 && comps.weekday == 6
}
let d = Date(timeIntervalSince1970: 1484301600)
    //Date()
check(isFriday13th: d)

var dateCompscomps = DateComponents()
dateCompscomps.day = 13
dateCompscomps.month = 1
dateCompscomps.year = 2017
dateCompscomps.hour = 12
let date2 : Date? = Calendar.current.date(from: dateCompscomps)
let timestamp = date2?.timeIntervalSince1970

func factorialOf(_ num : UInt) -> UInt{
    guard num != 0 else {
        return 0
    }
    var sum : UInt = 1
    for i in 1...num{
        sum *= i
    }
    
    
    return sum
}

factorialOf(10)

pow(2, 4)

func multi(_ a : Double, _ b : Double) -> Double{
    return a * b
}

multi(3.5, 2.5)

func strAndInt(year : Int, name : String) -> String{
    return name + " born in \(year)"
}

strAndInt(year: 1989, name: "Vitali")

//let stt = "1,2,3,4,5,6,19"
//let arrrr = stt.components(separatedBy: ",")
//if let firstNum = Int(arrrr[0]), firstNum == 7{
//    
//}

func check(num : Int, inString string : String) -> Bool{
    
    let arr = string.components(separatedBy: ",")
    for item in arr{
        if let val = Int(item), val == num{
            return true
        }
    }
    
    return false
}

check(num: 5, inString: "1,2,3,4,6,7")

func makeSum(of numbers : Int...) -> Int{
    var sum = 0
    for item in numbers{
        sum += item
    }
    return sum
}

makeSum(of: 1,2,3,4,5,16)

let t : (Int,String) = (13,"king")
t.0
t.1

let t2 = (val: 12, name: "queen")
t2.0
t2.val

ceil(3.7)
floor(M_PI)

func ceilAndFloor(of num : Double) -> (ceil : Double, floor: Double){
    
    return (ceil(num),floor(num))
    
}

let result = ceilAndFloor(of: M_PI)


/*
🚬  תכף אשוב
*/

func f(_ num : Int) -> Int{
    if num == 0{
        return 0
    } else {
        return 1 + f(num / 10)
    }
}
//f(7) = 1 + f(0) = 1 + 0
/*f(12340) =
 1 + f(1234) =
 1 + (1 + f(123)) = 
 1 + (1 + (1 + f(12))) = 
 1 + (1 + (1 + (1 + f(1)))) = 
 1 + (1 + (1 + (1 + (1 + f(0))))) = 
 1 + (1 + (1 + (1 + (1 + 0)))) = 
 1 + (1 + (1 + (1 + 1))) = 
 1 + (1 + (1 + 2)) = 
 1 + (1 + 3) = 
 1 + 4 =
 5
 */
f(7)
/*
 fibo
 f(n) = f(n-1) + f(n-2)
 f(0) = 1
 f(1) = 1
 */

func fibo(_ n : UInt) -> UInt{
    switch n {
    case 0,1:
        return 1
    default:
        return fibo(n - 1) + fibo(n - 2)
    }
}

fibo(1)
//1,1,2,3,5,8,13


class Student{
    enum Level{
        case easy, regular, hard
    }
    var level : Level
    
    init() {
        level = .regular
    }
    
    func getCheckFunc() -> ((Int) -> Bool){
        var targetGrade = 0
        switch level {
        case .easy: targetGrade = 55
        case .regular: targetGrade = 65
        case .hard: targetGrade = 98
        }
        
        func checkFunc(_ grade : Int) -> Bool{
            return grade >= targetGrade
        }
        
        return checkFunc
    }
}

let shay = Student()
shay.level = .hard
let ff : (Int) -> Bool = shay.getCheckFunc()
ff(70)

shay.getCheckFunc()(99)

var arr1 = [1,5,10,30,2]
arr1.sort {
     $0 < $1
}

func nor(_ b1 : Bool, _ b2 : Bool) -> Bool{
    return !b1||b2
}

func or(_ b1 : Bool, _ b2 : Bool) -> Bool{
    return b1 || b2
}

func makeBinary(_ b1 : Bool, _ b2 : Bool, f : (Bool,Bool) -> Bool) -> Bool{
    return f(b1,b2)
}

makeBinary(true, false, f: nor)

func change( num : inout Int){
    num = 3
}

var myNum = 5
change(num: &myNum)
myNum

func mySwap(a : inout Int, b : inout Int){
    a = a + b
    b = a - b
    a = a - b
    /*
    let c = a
    a = b
    b = c
 */
}

var num1 = 3
var num2 = -3
mySwap(a: &num1, b: &num2)
num1
num2


















