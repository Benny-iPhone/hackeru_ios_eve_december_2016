//
//  MyView.swift
//  IBDesignableProject
//
//  Created by Benny Davidovitz on 19/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

@IBDesignable class MyView: UIView {

    @IBInspectable var borderWidth : CGFloat = 1{
        didSet{
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor : UIColor = .black{
        didSet{
            layer.borderColor = borderColor.cgColor
        }
    }
    @IBInspectable var cornerRadius : CGFloat = 50{
        didSet{
            layer.cornerRadius = cornerRadius
        }
    }
    
    func setup(){
        layer.cornerRadius = cornerRadius
        layer.borderColor = borderColor.cgColor
        layer.borderWidth = borderWidth
    }
    
    //just for beauty on storyboard, called by storyboard
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setup()
    }
    
    //called on runtime when view loaded from storyboard
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setup()
    }

}


















