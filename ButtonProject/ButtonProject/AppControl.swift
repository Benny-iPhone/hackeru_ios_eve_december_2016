//
//  AppControl.swift
//  ButtonProject
//
//  Created by Benny Davidovitz on 23/02/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class AppControl: UIControl {

    override func beginTracking(_ touch: UITouch, with event: UIEvent?) -> Bool {
        
        //hightlight
        for item in subviews{
            item.alpha = 0.6
        }
        
        return super.beginTracking(touch, with: event)
    }
    
    override func endTracking(_ touch: UITouch?, with event: UIEvent?) {
        //un-highlight
        for item in subviews{
            item.alpha = 1
        }
        
        super.endTracking(touch, with: event)
    }

}















