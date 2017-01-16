//
//  Brain.swift
//  Calculator
//
//  Created by Benny Davidovitz on 09/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import Foundation
/*
 Brain class will handle all the calculation using 3 public methods and will be invoked from the controller
 - addDigit (in case of digit pressed)
 - addOperator (in case of operator buttons pressed)
 - clear (...)
 
 the result (String) will be displayed on the UILabel
 */
class Brain: NSObject {
    enum Operator : Int{
        case plus = 100
        case minus, multi, div
        //more cases will come soon
    }
    
    func addDigit(_ d : String) -> String{
        return ""
    }
    
    func addOperator(_ op : Operator) -> String{
        return ""
    }
    
    func clear() -> String{
        return ""
    }
}











