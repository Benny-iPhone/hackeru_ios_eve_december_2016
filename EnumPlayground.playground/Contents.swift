//: Playground - noun: a place where people can play

import UIKit
/*
enum Key : String{
    case firstName = "first_name"
}

Key.firstName.rawValue
Key.firstName.hashValue
*/
enum Day : Int{
    case sunday = 1
    case monday //= 10
    case tuesday, wednesday
    case thursday, friday, saturday
    
    func nextDay() -> Day{
        return Day(rawValue: self.rawValue + 1) ?? .sunday
        /*
        if let nextDay = Day(rawValue: self.rawValue + 1){
            return nextDay
        } else {
            return .sunday
        }
 */
        /*
        let nextRaw : Int = self.rawValue + 1
        let nextDay = Day(rawValue: nextRaw)
        if nextDay == nil{
            return .sunday
        } else {
            return nextDay!
        }
 */
    }
    
    func name() -> String{
        switch self {
        case .sunday: return "יום ראשון"
        case .monday: return "יום שני"
        case .tuesday: return "יום שלישי"
        case .wednesday: return "יום רביעי"
        case .thursday: return "היום יום חמישי😀"
        case .friday: return "מחר שבת"
        case .saturday: return "שבת סופסוף"
        }
    }
}

let d1 = Day.friday
var d2 : Day = .sunday
d2 = .monday
d2.name()

d1.nextDay().nextDay()

Day.thursday.name()

d1.rawValue

let d3 = Day(rawValue: 3)
let d4 = Day(rawValue: 13)
d4?.name()
d3?.name()










