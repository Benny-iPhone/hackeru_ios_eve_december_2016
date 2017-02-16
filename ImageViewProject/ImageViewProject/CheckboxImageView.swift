//
//  CheckboxImageView.swift
//  ImageViewProject
//
//  Created by Benny Davidovitz on 09/02/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

typealias CheckboxImageViewAction = (_ check : Bool) -> Void

class CheckboxImageView: UIImageView {

    var action : CheckboxImageViewAction?
    
    @IBInspectable var isChecked : Bool{
        get{
            return isHighlighted
        }
        set {
            isHighlighted = newValue
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
        //self.image = UIImage(named: "checked_2")
        image = #imageLiteral(resourceName: "unchecked_checkbox")
        highlightedImage = #imageLiteral(resourceName: "checked_2")
        isUserInteractionEnabled = true
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(CheckboxImageView.tapAction))
        self.addGestureRecognizer(tap)
    }
    
    func tapAction(){
        isChecked = !isChecked
        //call action func
        action?(isChecked)
    }


}











