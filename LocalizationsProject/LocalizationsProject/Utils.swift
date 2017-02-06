//
//  Utils.swift
//  LocalizationsProject
//
//  Created by Benny Davidovitz on 06/02/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class AppLabel : UILabel{
    @IBInspectable var localizedText : String? = nil{
        didSet{
            text = localizedText?.localizedString
        }
    }
}

extension String{
    var localizedString : String{
        get{
            return Bundle.main.localizedString(forKey: self, value: self, table: nil)
        }
    }
}











