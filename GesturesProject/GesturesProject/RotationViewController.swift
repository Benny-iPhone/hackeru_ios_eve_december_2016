//
//  RotationViewController.swift
//  GesturesProject
//
//  Created by Benny Davidovitz on 19/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class RotationViewController: UIViewController {

    @IBAction func rotationAction(_ sender: UIRotationGestureRecognizer) {
        
        let angle = sender.rotation
        sender.view?.transform = CGAffineTransform(rotationAngle: angle)
        
    }

}


















