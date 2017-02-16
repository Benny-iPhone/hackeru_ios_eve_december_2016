//
//  Utils.swift
//  Form
//
//  Created by Benny Davidovitz on 16/02/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

extension UIView{
    func hideKeyboard() -> Bool{
        if self.isFirstResponder{
            //found open keyboard
            self.resignFirstResponder()
            return true
        }
        
        //iterate children
        for item in self.subviews{
            if item.hideKeyboard(){
                return true
            }
        }
        
        return false
    }
}
















