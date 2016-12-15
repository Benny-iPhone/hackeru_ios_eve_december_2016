//: Playground - noun: a place where people can play

import UIKit

func validate(identity : String?) -> Bool{
    guard var identity = identity else {
        return false
    }
    
    guard !identity.isEmpty else {
        return false
    }
    
    guard identity.characters.count <= 9 else {
        return false
    }
    
    //only numbers
    guard let _ = Int(identity) else {
        return false
    }
    
    while identity.characters.count < 9{
        identity = "0" + identity
    }

    var sum = 0
    var index = identity.startIndex
    
    for i in 0..<9{
        //character to int
        let ch = identity.characters[index]
        let digitString = String(ch)
        
        var digit = Int(digitString)!
        
        //calculation
        digit *= (i % 2) + 1
        if digit > 9{
            digit -= 9
        }
        
        sum += digit
        
        index = identity.index(after: index)
    }
    
    return sum % 10 == 0
}
validate(identity: "444")













