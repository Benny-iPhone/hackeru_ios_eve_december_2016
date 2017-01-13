//
//  Whiteview.swift
//  SimpleViewProject
//
//  Created by Benny Davidovitz on 12/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class Whiteview: UIView {

    //when created from code
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
    }
    //when created from storyboard
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        backgroundColor = .white
    }

}
