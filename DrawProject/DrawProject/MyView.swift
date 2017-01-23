//
//  MyView.swift
//  DrawProject
//
//  Created by Benny Davidovitz on 23/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class MyView: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        let width = bounds.width
        let height = bounds.height
        //our pencil
        let context = UIGraphicsGetCurrentContext()
        //draw traingle relative to bounds
        context?.move(to: CGPoint(x: width * 0.5, y: height * 0.1))
        context?.addLine(to: CGPoint(x: width * 0.1, y: height * 0.9))
        context?.addLine(to: CGPoint(x: width * 0.9, y: height * 0.9))
        
        context?.closePath()
        //draw settings
        UIColor.red.setStroke()
        context?.setLineWidth(6)
        //context?.strokePath()
        UIColor.black.setFill()
        
        context?.drawPath(using: .fillStroke)
        
        //done drawing traingle, lets draw a circle
        var circleRect = bounds
        //padding the circle
        circleRect.origin.x = 2
        circleRect.origin.y = 2
        circleRect.size.width -= 4
        circleRect.size.height -= 4
        
        context?.addEllipse(in: circleRect)
        //stroke settings
        context?.setStrokeColor(UIColor.blue.cgColor)
        context?.setLineWidth(2)
        //draw it!
        context?.strokePath()
        
        //draw text
        
        let text : NSString = "hello"
        
        let atts : [String:Any] = [
            NSFontAttributeName:UIFont.boldSystemFont(ofSize: 20),
            NSForegroundColorAttributeName:UIColor.white
        ]
        
        let point = CGPoint(x: width * 0.35, y: height * 0.5)
        text.draw(at: point, withAttributes: atts)
        
    }
 

}












