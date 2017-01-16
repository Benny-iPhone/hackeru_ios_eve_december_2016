//
//  ViewController.swift
//  TransformProject
//
//  Created by Benny Davidovitz on 16/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let slider = view.viewWithTag(30)
        let angle = CGFloat(1.5 * M_PI)
        slider?.transform = CGAffineTransform(rotationAngle: angle)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

