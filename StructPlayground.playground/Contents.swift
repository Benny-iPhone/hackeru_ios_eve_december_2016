//: Playground - noun: a place where people can play

import UIKit

let point = CGPoint(x: 4, y: 5)

class Student{
    var name : String = ""
}

struct Qube{
    var size : Double
    
    func shetach() -> Double{
        return pow(size, 2)
    }
    
    mutating func setArea(_ a : Double){
        self.size = sqrt(a)
    }
}

let s1 = Student()
s1.name = "benny"

let s2 = s1
s2.name = "yonatan"

var q1 = Qube(size: 5)
q1.size = 10

var q2 = q1
q2.size = 12

q1.shetach()

let label1 = UILabel(frame: CGRect(x: 10, y: 10, width: 100, height: 30))

var frame : CGRect = label1.frame
frame.origin.y += 40

let label2 = UILabel(frame: frame)

class Person{
    var firstName : String = ""
    var lastName : String = ""
    
    func setFullName(_ fullName : String){
        
        let comps = fullName.components(separatedBy: " ")
        self.firstName = comps.first ?? ""
        self.lastName = comps.last ?? ""
        
    }
}

let p1 = Person()
p1.setFullName("david cohen")
p1.firstName
p1.lastName





















