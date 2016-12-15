//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"
//let num : Int? = Int(str)
//
//let st1 : String? = "3"
//if st1 != nil{
//    let n = Int(st1!)
//}
//if let st1 = st1{
//    
//}
//
//if let st1 = st1, let n = Int(st1){
//    n
//}


let person : Dictionary<String,Any> = [
    "first_name":"benny",
    "last_name":"davidovitz",
    "age":29
]

var num : Int? = 3
num! += 1

let address = person["address"]
let firstName = person["first_name"]// as? Int

var sum : Int = 0
if let age = person["age"] as? Int{
    sum += age
}

var lName : String = ""
if let lastName = person["last_name"] as? String{
    lName = lastName
}

let lName2  : String = (person["last_name"] as? String) ?? ""

let d = 5
let doub = Double(d)

//var age : Int? = person["age"] as? Int
//if age != nil{
//    sum += age!
//}

//if let userAge = age{
//    sum += userAge
//}

var arr : [Int]? = [1,2,3]
arr?.append(4)
arr
//arr.append(4)
//arr += [5]

//if arr != nil{
//    arr!.append(4)
//}


class Dog{
    func bark(){
        
    }
}

let dog : Dog? = Dog()
dog?.bark()


func doSomething(str : String?){
//    if str == nil{
//        return
//    }

    guard let str = str else {
        return
    }
    
    //do your something
    
}

func diff(a : Int, b : Int) -> Int?{
    guard b > a else {
        return nil
    }
    
    return b - a
}


























