//
//  Model.swift
//  DateConverter
//
//  Created by Asher   Efrati  on 19/12/2016.
//  Copyright © 2016 Asher   Efrati . All rights reserved.
//

import Foundation

enum ConvertType : Int{
    case gregToHeb //0
    case hebToGreg //1
    
    func source() -> Calendar{
        switch self {
        case .gregToHeb:
            return Calendar(identifier: .gregorian)
        case .hebToGreg:
            return Calendar(identifier: .hebrew)
        }
    }
    
    func destination() -> Calendar{
        switch self {
        case .gregToHeb:
            return Calendar(identifier: .hebrew)
        case .hebToGreg:
            return Calendar(identifier: .gregorian)
        }
    }
}


















