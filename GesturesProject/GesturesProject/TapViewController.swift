//
//  TapViewController.swift
//  GesturesProject
//
//  Created by Benny Davidovitz on 19/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class TapViewController: UIViewController {

    @IBOutlet weak var orangeView: UIView!
    
    @IBAction func tapAction(_ sender: UITapGestureRecognizer) {
        /*
        UIView.animate(withDuration: 1) { 
            self.orangeView.center = sender.location(in: self.view)
        }*/
        
        UIView.animate(withDuration: 1, delay: 0, options: .curveLinear, animations: { 
            self.orangeView.center = sender.location(in: self.view)
        }, completion: nil)
        
        
    }
    

}















