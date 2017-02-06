//
//  ToastLabel.swift
//  ToastProject
//
//  Created by Benny Davidovitz on 06/02/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

func toast(text : String, on view : UIView? = nil){
    var v = view
    if view == nil{
        v = UIApplication.shared.delegate?.window!
    }
    
    if v == nil{
        return
    }
    
    ToastLabel.show(text: text, on: v!)
}

extension String{
    func toast(){
        let window = UIApplication.shared.delegate?.window
        window??.toast(self)
    }
}

extension UIView{
    func toast(_ text : String){
        ToastLabel.show(text: text, on: self)
    }
}

class ToastLabel: UILabel {
    
    class func show(text : String, on view : UIView){
        
        var rect = view.frame
        //x,y
        rect.origin.x = rect.width * 0.1
        rect.origin.y = rect.height * 0.1
        //width
        rect.size.width *= 0.8
        //height
        rect.size.height *= 0.1
        
        let label = ToastLabel(frame: rect)
        label.text = text
        
        view.addSubview(label)
        label.alpha = 0
        
        UIView.animate(withDuration: 1.5, animations: { 
            label.alpha = 1
        }) { _ in
            
            UIView.animate(withDuration: 1.5, animations: { 
                label.alpha = 0
            }, completion: { _ in
                
                label.removeFromSuperview()
                
            })
            
            
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
        textAlignment = .center
        backgroundColor = .black
        textColor = .white
        font = UIFont.boldSystemFont(ofSize: 18)
        numberOfLines = 2
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.75
        
        layer.cornerRadius = 8
        layer.masksToBounds = true
    }

}














