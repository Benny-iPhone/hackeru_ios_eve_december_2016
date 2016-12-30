//: Playground - noun: a place where people can play

import UIKit

class Person{
    var name : String
    
    convenience init() {
        self.init(name: "")
        //self.name = ""
    }
    
    init(name : String) {
        self.name = name
        
        doSomething()
    }
    
    func doSomething(){
        
    }
}

let p2 = Person()

class Student : Person{
    var course : String
    
    init(course : String, name : String){
        self.course = course
        super.init(name: name)
    }
}

let p1 = Person(name: "moshe")


let c1 = UIColor.red
let c2 = UIColor(red: 130.0/255.0, green: 150.0/255.0, blue: 255.0/255/0, alpha: 1)

//http://stackoverflow.com/questions/24263007/how-to-use-hex-colour-values-in-swift-ios
extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(netHex:Int) {
        self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
    }
}

let c3 = UIColor(red: 160, green: 170, blue: 180)
let c4 = UIColor(netHex: 0xaab230)









