//
//  ViewController.swift
//  ButtonProject
//
//  Created by Benny Davidovitz on 23/02/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var buttons: [UIButton]!
    

    @IBAction func toggleAction(_ sender: UISwitch) {
        
        for b in buttons{
            b.isEnabled = sender.isOn
        }
        
    }
    
    @IBAction func controlAction(_ sender: Any) {
        print(#function)
    }
    

}













