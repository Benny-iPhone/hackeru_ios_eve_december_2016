//
//  BorderButton.swift
//  ButtonProject
//
//  Created by Benny Davidovitz on 23/02/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

@IBDesignable class BorderButton: UIButton {
    @IBInspectable var borderWidth : CGFloat{
        get{
            return layer.borderWidth
        }
        set{
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor : UIColor?{
        get{
            if let color = layer.borderColor{
                return UIColor(cgColor: color)
            } else {
                return nil
            }
        }
        set{
            layer.borderColor = newValue?.cgColor
        }
    }
    
    @IBInspectable var cornerRadius : CGFloat{
        get{
            return layer.cornerRadius
        }
        set{
            layer.cornerRadius = newValue
        }
    }
    
    //from storyboard
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    //from code
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    private func setup(){
        self.contentEdgeInsets = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 8)
        setTitleColor(.red, for: .disabled)
    }

    override func prepareForInterfaceBuilder() {
        setup()
        super.prepareForInterfaceBuilder()
    }
    
    
}










