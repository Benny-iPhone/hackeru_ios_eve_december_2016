//: Playground - noun: a place where people can play

import UIKit

class Robot : NSObject{
    private var beepersCount : Int = 0
    
    func compare(bot : Robot) -> Bool{
        return self.beepersCount == bot.beepersCount
    }
    
    func pick(x beeprs : Int){
        for _ in 0..<beeprs{
            self.pickBeeper()
        }
    }
    
    func pickBeeper(){
        beepersCount += 1
    }
    
    func dropBeeper() -> Bool{
        guard beepersCount > 0 else {
            return false
        }
        
        beepersCount -= 1
        return true
    }
}

let bill = Robot()
let john = Robot()

bill.pickBeeper()

john.dropBeeper()

bill.pickBeeper()
john.pick(x: 2)

bill.compare(bot: john)






















