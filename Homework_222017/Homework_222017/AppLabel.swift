//
//  AppLabel.swift
//  Homework_222017
//
//  Created by Benny Davidovitz on 02/02/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class AppLabel: UILabel {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    func setup(){
        textColor = .appTextColor
    }

}

class HeaderLabel : AppLabel{
    override func setup() {
        super.setup()
        font = UIFont.appBoldFont(with: 22)
        textAlignment = .center
    }
}

class SubHeaderLabel : AppLabel{
    override func setup() {
        super.setup()
        font = UIFont.appFont(with: 16)
    }
}

class RegularLabel : AppLabel{
    override func setup() {
        super.setup()
        font = UIFont.appFont(with: 12)
    }
}











