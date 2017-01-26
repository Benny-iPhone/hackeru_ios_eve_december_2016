//
//  CircleViewController.swift
//  DrawProject
//
//  Created by Benny Davidovitz on 26/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class CircleViewController: UIViewController {
    
    @IBOutlet weak var circleView: CircleView!

    @IBAction func sliderAction(_ sender: UISlider) {
        circleView.circleWidth = CGFloat(sender.value)
    }
    
    
    
    

}










