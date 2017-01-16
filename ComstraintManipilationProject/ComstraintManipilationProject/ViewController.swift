//
//  ViewController.swift
//  ComstraintManipilationProject
//
//  Created by Benny Davidovitz on 16/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelLeadingConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func moveItAction(_ sender: Any) {
        labelLeadingConstraint.constant += 100
        
        UIView.animate(withDuration: 0.6) { 
            //refresh constraints
            self.view.layoutSubviews()
        }
    }
    

}










