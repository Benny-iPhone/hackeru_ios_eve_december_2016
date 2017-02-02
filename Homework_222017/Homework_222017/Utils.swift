//
//  Utils.swift
//  Homework_222017
//
//  Created by Benny Davidovitz on 02/02/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

extension UIColor{
    static var appTextColor : UIColor{
        get{
            return UIColor(red: 38/255.0, green: 169/255.0, blue: 223/255.0, alpha: 1)
        }
    }
}

extension UIFont{
    static func appFont(with size : CGFloat) -> UIFont{
        return UIFont(name: "ArialMT", size: size)!
    }
    
    static func appBoldFont(with size : CGFloat) -> UIFont{
        return UIFont(name: "Arial-BoldMT", size: size)!
    }
}




















