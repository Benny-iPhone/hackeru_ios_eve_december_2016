//: Playground - noun: a place where people can play

import UIKit

var str : String = "123"
let arr = [1,2,3]
var num : Int? = Int(str)
var num2 = Int(str)
var num3 : Int = Int("12")!
//num2 += 1
if num2 != nil{
    num2! += 1
}
num2

func indexOf(val : Int, inArray arr : [Int]) -> Int?{
    
    for i in 0..<arr.count{
        if arr[i] == val{
            return i
        }
    }
    
    return nil
}

indexOf(val: 42, inArray: [1,2,3])


func sumOfStrings(arr : [String]) -> Int{
    
    var sum : Int = 0
    
    for str in arr{
        if let val = Int(str){
            sum += val
        }
        /*let val : Int? = Int(str)
         if val != nil{
         sum += val!
         }*/
    }
    
    return sum
}

let arrStr = "1,2,3,4,5,6,7,8,9,10b,a"
let myArr = arrStr.components(separatedBy: ",")
sumOfStrings(arr: myArr)

func sumDouble(d1 : String?, d2 : String?) -> Double?{
    if let d1 = d1,
        let d2 = d2,
        let val1 = Double(d1),
        let val2 = Double(d2),
        val1 > 0{
        return val1 + val2
    } else {
        return nil
    }
    
}


sumDouble(d1: ".1", d2: "1")

func solution(m : Int, n : Int, k : Int) -> Int{
    return n/k - m/k + (m%k == 0 ? 1 : 0)
}

let randomNumber = arc4random()
let b : Bool = randomNumber % 2 == 0 ? true : false

let ssstr = "4kljhl"
let nnnum : Int = Int(ssstr) ?? 0


class Item{
    var num : Int = 0
    func save(){
        
    }
}


let obj : Item? = nil

let item = obj ?? Item()

item.num = 3

item.save()

func doSomething(){
    let ages : [String:Int] = [
        "benny":29,
        "michael":32
    ]
    
    let benny : Int? = ages["benny"]
    let david = ages["david"]
    
    guard var michael = ages["michael"] else {
        return
    }
    
    michael += 1
}

doSomething()













