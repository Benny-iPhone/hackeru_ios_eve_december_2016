//
//  ViewController.swift
//  HelloWorld
//
//  Created by Benny Davidovitz on 08/12/2016.
//  Copyright © 2016 xcoder.solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var michaelTextField: UITextField!
    
    @IBOutlet weak var label: UILabel!

    @IBAction func sayHelloAction(_ sender: AnyObject) {
        label.text = michaelTextField.text
        
    }
    

}














