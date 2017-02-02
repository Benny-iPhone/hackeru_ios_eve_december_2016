//
//  HiLabel.swift
//  LabelProject
//
//  Created by Benny Davidovitz on 30/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

@IBDesignable class HiLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initialize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        initialize()
    }
    
    func initialize(){
        textColor = .red
        numberOfLines = 5
        shadowColor = .gray
        shadowOffset = CGSize(width: 3, height: 3)
        
        font = UIFont.systemFont(ofSize: 24)
        
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.75
        
        textAlignment = .center
        
        highlightedTextColor = .black
    }
    
    override func prepareForInterfaceBuilder() {
        initialize()
    }
    
}




















