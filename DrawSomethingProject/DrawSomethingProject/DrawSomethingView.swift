//
//  DrawSomethingView.swift
//  DrawSomethingProject
//
//  Created by Benny Davidovitz on 26/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class DrawSomethingView: UIView {
    
    //MARK: - Public Funcs -
    
    @IBInspectable var strokeColor : UIColor = .black
    
    @IBInspectable var lineWidth : CGFloat = 1/*{
        didSet{
            //update line width
            bezier.lineWidth = lineWidth
            //redraw
            setNeedsDisplay()
        }
    }*/
    
    func clear(){
        /*
        bezier = UIBezierPath()
        bezier.lineWidth = lineWidth
 */
        beziers = []
        setNeedsDisplay()
    }
    
    //MARK: - Internal Funcs -
    //private var bezier = UIBezierPath()
    //private var beziers : [UIBezierPath] = []
    private var beziers : [ColorBezierPath] = []
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        //set inital line width to bezier 
        //bezier.lineWidth = lineWidth
        self.isMultipleTouchEnabled = false
    }
    
    private func addLine(with touch : UITouch){
        let p : CGPoint = touch.location(in: self)
        //bezier.addLine(to: p)
        beziers.last?.addLine(to: p)
        setNeedsDisplay()
    }
    
    private func moveTo(with touch : UITouch){
        let p : CGPoint = touch.location(in: self)
        //create new bezier with current settings
        let b = ColorBezierPath()
        b.strokeColor = strokeColor
        b.lineWidth = lineWidth
        b.move(to: p)
        beziers.append(b)
        //bezier.move(to: p)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        moveTo(with: touches.first!)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        addLine(with: touches.first!)
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        addLine(with: touches.first!)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        addLine(with: touches.first!)
    }
    
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        for b in beziers{
            b.stroke()
        }
        
        //bezier.stroke()
    }
    

}











