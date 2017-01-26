//
//  MagenDavidView.swift
//  MagenDavidProject
//
//  Created by Benny Davidovitz on 26/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

@IBDesignable class MagenDavidView: UIView {

    @IBInspectable var color : UIColor = .black{
        didSet{
            //redraw
            setNeedsDisplay()
        }
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        let width = bounds.width
        let height = bounds.height
        
        let context = UIGraphicsGetCurrentContext()
        context?.move(to: CGPoint(x: width * 0.5, y: height * 0.1))
        context?.addLine(to: CGPoint(x: width * 0.1, y: height * 0.7))
        context?.addLine(to: CGPoint(x: width * 0.9, y: height * 0.7))
        context?.closePath()
        
        //context?.strokePath()

        context?.move(to: CGPoint(x: width * 0.5, y: height * 0.9))
        context?.addLine(to: CGPoint(x: width * 0.1, y: height * 0.3))
        context?.addLine(to: CGPoint(x: width * 0.9, y: height * 0.3))
        context?.closePath()
        
        context?.setStrokeColor(color.cgColor)
        context?.strokePath()

    }
    

}













