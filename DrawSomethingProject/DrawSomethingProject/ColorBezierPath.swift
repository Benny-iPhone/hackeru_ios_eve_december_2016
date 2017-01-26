//
//  ColorBezierPath.swift
//  DrawSomethingProject
//
//  Created by Benny Davidovitz on 26/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class ColorBezierPath: UIBezierPath {
    var strokeColor : UIColor?
    
    override func stroke() {
        strokeColor?.setStroke()
        super.stroke()
    }
}
