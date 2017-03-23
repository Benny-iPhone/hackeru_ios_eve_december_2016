//
//  Currency.swift
//  CurrencyProject
//
//  Created by hackeru on 23/03/2017.
//  Copyright © 2017 hackeru. All rights reserved.
//

import UIKit

class Currency: NSObject {
    let code : String
    let rate : Double
    
    init(code : String, rate : Double) {
        self.code = code
        self.rate = rate
        
        super.init()
    }
    
    class func array(from dict : [String:Double]) -> [Currency]{
        
        var arr : [Currency] = []
        for (key,val) in dict{
            let c = Currency(code: key, rate: val)
            arr.append(c)
        }
        
        return arr
        
    }
}










