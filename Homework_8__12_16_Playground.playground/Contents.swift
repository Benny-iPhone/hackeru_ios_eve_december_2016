//: Playground - noun: a place where people can play

import UIKit

func solution(m : Int, n : Int, k : Int) -> Int{
    var counter = 0
    
    for i in m...n{
        if i % k == 0{
            counter += 1
        }
    }
    
    return counter
}

solution(m: 5, n: 11, k: 2)
solution(m: 2, n: 4, k: 2)
solution(m: 1, n: 100, k: 1)


func solution2(m : Int, n : Int, k : Int) -> Int{
//    let n1 = m/k
//    let n2 = n/k
//    let result = m % k == 0 ? n2 - n1 + 1 : n2 - 1
//    return result
    
    return n/k - m/k + (m % k == 0 ? 1 : 0)
}

let arr2 = [0,0,1,0,1,0,1,0,1,0,1,0,1]

let arr = [2,8,40,11,4,8,15,16,23,42]
var sums = [Int](repeatElement(0, count: arr.count + 1))

for i in 1...arr.count{
    sums[i] = sums[i-1] + arr[i-1]
}

sums


//5.00,0.99
//1$, 50c, 25c, 10c, 5c, 1c
//[4,0,0,0,0,1]

func findChange(amount : Double, price : Double) -> [Int]{
    let coins = [100,50,25,10,5,1]
    var result = [Int](repeatElement(0, count: coins.count))
    //[0,0,0,0,0,0]
    var change = Int((amount - price) * 100)
    
    for i in 0..<coins.count{
        let count = change / coins[i]
        result[i] = count
        change -= count * coins[i]
    }
    
    return result
}

findChange(amount: 5, price: 0.09)














