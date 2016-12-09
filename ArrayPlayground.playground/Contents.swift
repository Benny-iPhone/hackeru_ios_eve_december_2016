//: Playground - noun: a place where people can play

import UIKit
/*
var arr1 = [1,2,3]
var arr2 : [Int] = [1,2,3]
var arr3 : Array<Int> = [1,2,3]
var arr4 = [Int](repeatElement(0, count: 3))

let num = arr1[1]

arr1.count

//in 10...0
for i in stride(from: 10, through: 0, by: -1){
    
}

for i in 0...10{
    
}
var sum = 0
for n in arr2{
    sum += n
}

sum

let arr5 = ["a","b","c"]
for (i,val) in arr5.enumerated(){
    print(i.description + "," + val)
}

func maxValIndex(arr : [Int]) -> Int{
    if arr.isEmpty{
        return -1
    }
    var maxVal = arr[0]
    var maxValIndex = 0
    
    for (i,val) in arr.enumerated(){
        if val > maxVal{
            maxVal = val
            maxValIndex = i
        }
    }
    
    return maxValIndex
    
}

maxValIndex(arr: [-4,-3])
*/
var myArray = [1,2,3,4,5]
myArray[1] = -2
myArray

let myArray2 = [6,7,8]
myArray += myArray2
myArray.append(9)
myArray.insert(0, at: 0)

myArray[1...2] = [-1,2]
myArray

myArray[1...5] = [3,3]
myArray[0...0] = [-2,-1]
myArray

myArray.insert(contentsOf: [1,1,1,1], at: 4)

let myArr3 = myArray.sorted()
myArray
myArray.sort()

myArray.sort(by: <)

func mySortFunc(a : Int, b : Int) ->  Bool{
    return a < b
}

myArray.sort(by: mySortFunc)

myArray.sort { (a, b) -> Bool in
    return a < b
}

myArray.sort {
    $0 < $1
}

//myArray.sort(by: <#T##(Int, Int) -> Bool#>)


let qube : [[Int]] = [
    [1,2,3],
    [4,5,6],
    [7,8,9]
]












