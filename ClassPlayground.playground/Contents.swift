//: Playground - noun: a place where people can play

import UIKit



UILabel()

class Node{
    var left : Node?
    lazy var right : Node = Node()
    var value : Int// = 0
    init() {
        value = 1
    }
    init(value : Int){
        self.value = value
    }
}

let n0 : Node? = nil
if let n0Left = n0?.left{
    
}

let n1 = Node()
n1.value
n1.right.value

let n2 = Node(value: 10)
n2.value

Date()
Date(timeIntervalSince1970: 86_400)



class Car{
    enum Gear{
        case auto
        case manual
        case robot
    }
    
    let licenseNumber : String
    let year : Int
    var kilometraz : Double
    var gear : Gear
    
    init(licenseNumber : String, year : Int) {
        self.licenseNumber = licenseNumber
        self.year = year
        kilometraz = 0
        gear = .auto
    }
}

let gear = Car.Gear.manual

var liorsCar : Car? = Car(licenseNumber: "12-345-67", year: 1992)
liorsCar?.gear = .manual
let vitalisCar = Car(licenseNumber: "63-773-34", year: 2015)
vitalisCar.kilometraz = 9_200
liorsCar?.kilometraz = 1_000_000
liorsCar?.kilometraz += 1_000

liorsCar = nil
























