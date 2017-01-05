//: Playground - noun: a place where people can play

import UIKit

//declerations of methods
protocol WatermelonDelegate{
    func watermelon(_ watermelon : Watermelon ,didSlice slice : UInt)
    func watermelonDidEnd(_ watermelon : Watermelon)
}

class Watermelon{
    //reference to an object that implements the WatermelonDelegate's declerations
    var delegate : WatermelonDelegate?
    private var volume : UInt = 100{
        didSet{
            if volume == 0{
                delegate?.watermelonDidEnd(self)
            }
        }
    }
    
    func slice(){
        volume -= 1
        delegate?.watermelon(self, didSlice: 1)
    }
}



class Child : NSObject, WatermelonDelegate{
    func eat(w : Watermelon){
        w.slice()
    }
    
    func watermelonDidEnd(_ watermelon: Watermelon) {
        print("mommy give me more watermelon")
    }
    
    func watermelon(_ watermelon: Watermelon, didSlice slice: UInt) {
        print("yummy")
    }
}

let w1 = Watermelon()
let mario = Child()
w1.delegate = mario

for _ in 0..<100{
    mario.eat(w: w1)
}












