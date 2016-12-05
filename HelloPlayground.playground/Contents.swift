//: Playground - noun: a place where people can play

import UIKit
/*
//var str : String = "Hello, playground שלום 😀"
*/
/*
let num1 : Int8 = 4
var num2 : Int = 5
let num3 : Int = Int(num1) + num2

num3 / 3
num3 % 3

let num4 : Float = 4.5
let num5 : Double = 3
let num6 : Double = Double(num4) + num5

if num3 > Int(num1){
    print(num3.description + " bigger than \(num1)")
} else {
    print("\(num3) smaller")
}

let pi = M_PI
let rad : Double = 5
var s = 2 * pi * rad
let sstr = String(format: "%.2f", s)
//s = Double(sstr)!
*/

let n : Double = 2
pow(2, 3)

let a : Double = 3
let b : Double = 4
let c : Double = 5

if pow(a, 2) + pow(b, 2) == pow(c, 2){
    print("pita")
} else {
    print("goras")
}

for i in 0...10{
    
}

let A = [1,2,3]
//&&


for i in 0..<A.count{
    
}

var count = 0

for i in 0...100{
    if i % 2 == 0 && i % 3 == 0{
        count += 1
    }
    /*
    if i % 6 == 0{
        count += 1
    }*/
}

count

let b1 = true
let b2 : Bool = false

b1 && b2
b1 || b2
!b1

b1 || !b1
b1 && !b1

var n1 = 3
String(n1, radix: 2)
var n2 = 4
String(n2, radix: 2)

n1 | n2
String(n1 | n2, radix: 2)
n1 & n2



let N = 10
for i in 0..<N{
    print(i)
}

var x = 0
let arr : [Int] = [1,2,3,4,3,2,1,4,4]

for num in arr{
    x ^= num
}

x

/* 5 = 0101
 0000
 0101
 0000
 */





func doSomething(){
    
}

doSomething()

func isPita(a : Double, b : Double, c : Double) -> Bool{
    return pow(a, 2) + pow(b, 2) == pow(c, 2)
}

isPita(a: 3, b: 4, c: 5)

func isSevenBoom(num : Int) -> Bool{
    if num % 7 == 0{
        return true
    }
    
    var numm = num
    while numm != 0 {
        if numm % 10 == 7{
            return true
        }
        
        numm /= 10
    }
    
    return false
}

isSevenBoom(num: 1007)

















