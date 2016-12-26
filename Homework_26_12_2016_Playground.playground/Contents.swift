//: Playground - noun: a place where people can play

import UIKit

extension Int{
    
    func isPrime() -> Bool{
        
        if self <= 1{
            return false
        }
        
        if self <= 3{
            return true
        }
        
        if self % 2 == 0 || self % 3 == 0{
            return false
        }
        
        var i = 5
        while i * i <= self{
            if self % i == 0 || self % (i + 2) == 0{
                return false
            }
            i += 6
        }
        
        return true
        
    }
}
2.isPrime()
49.isPrime()

func countPrimes(inArray arr : [Int]) -> Int{
    var count = 0
    for num in arr{
        if num.isPrime(){
            count += 1
        }
    }
    
    return count
}

countPrimes(inArray: [1,2,3,4,5,6,7,8,9,47])


func makeFlat(from arr : [Any]) -> [Any]{
    var result : [Any] = []
    for item in arr{
        if let subArr = item as? [Any]{
            result += makeFlat(from: subArr)
        } else {
            result.append(item)
        }
    }
    
    return result
}

makeFlat(from: [1,2,[3]])

let testArr : [Any] = [1,"2","benny",[7,[8,[9]]]]
makeFlat(from: testArr)

//isPrime(num: 2)
//isPrime(num: 13)
//isPrime(num: 160481219)









