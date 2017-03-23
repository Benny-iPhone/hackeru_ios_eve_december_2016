//
//  Result.swift
//  CurrencyProject
//
//  Created by hackeru on 23/03/2017.
//  Copyright © 2017 hackeru. All rights reserved.
//

import UIKit

class Result: NSObject {
    let base : String?
    let date : String?
    let rates : [Currency]
    
    init(_ dict : [String:Any]) {
        self.base = dict["base"] as? String
        self.date = dict["date"] as? String
        
        let ratesDict = dict["rates"] as? [String:Double] ?? [:]
        self.rates = Currency.array(from: ratesDict)
        
        super.init()
    }
}
