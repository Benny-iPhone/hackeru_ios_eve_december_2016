//
//  CircleView.swift
//  DrawProject
//
//  Created by Benny Davidovitz on 26/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

@IBDesignable class CircleView: UIView {

    @IBInspectable var circleWidth : CGFloat = 1{
        didSet{
            //redraw
            setNeedsDisplay()
        }
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        let context = UIGraphicsGetCurrentContext()

        /*
        var circleRect = bounds
        
        circleRect.origin.x = circleWidth
        circleRect.origin.y = circleWidth
        circleRect.size.width -= 2 * circleWidth
        circleRect.size.height -= 2 * circleWidth
        
        
        context?.addEllipse(in: circleRect)
         */
        context?.setLineWidth(circleWidth)
        let point = CGPoint(x: bounds.width / 2, y: bounds.height / 2)
        let r = min(bounds.width, bounds.height) / 2 - circleWidth
        context?.addArc(center: point, radius: r, startAngle: 0, endAngle: CGFloat(2 * M_PI), clockwise: true)
        
        context?.strokePath()
        
    }
    

}












