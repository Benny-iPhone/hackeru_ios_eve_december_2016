//
//  PinchViewController.swift
//  GesturesProject
//
//  Created by Benny Davidovitz on 19/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class PinchViewController: UIViewController {

    
    @IBAction func pinchAction(_ sender: UIPinchGestureRecognizer) {
        
        let scale = max(sender.scale,0.3333)
        sender.view?.transform = CGAffineTransform(scaleX: scale, y: scale)
        
    }

}













