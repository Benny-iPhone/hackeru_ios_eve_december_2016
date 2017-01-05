//: Playground - noun: a place where people can play

import UIKit

struct Square{
    var size : Double
    var area : Double{
        get{
            return pow(size, 2)
        }
        set{
            size = sqrt(newValue)
        }
    }
}

var s1 = Square(size: 3)
s1.area
s1.area = 25
s1.size

class Person : NSObject{
    static var maxAge = 120
    
    var age : Int = 0{
        didSet{
            if age > Person.maxAge{
                age = oldValue
            }
        }
    }
    
    var firstname : String{
        didSet{
            print("name changed from \(oldValue) to \(firstname)")
        }
        willSet{
            print("first name will change to \(newValue)")
        }
    }
    var lastname : String{
        didSet (oldLastname){
            print("last name changed from \(oldLastname)")
        }
        willSet (newLastname){
            print("new last name will be \(newLastname)")
        }
    }
    
    override init() {
        firstname = ""
        lastname = ""
        
        super.init()
    }
}

let p1 = Person()
p1.firstname = "david"
p1.firstname = "david2"
























