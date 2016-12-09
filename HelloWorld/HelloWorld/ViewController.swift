//
//  ViewController.swift
//  HelloWorld
//
//  Created by Benny Davidovitz on 08/12/2016.
//  Copyright © 2016 xcoder.solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var label: UILabel!

    @IBAction func buttonPressed(_ sender: Any) {
        label.text = textField.text
    }
    

}














