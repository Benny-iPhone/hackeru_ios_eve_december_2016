//
//  ViewController.swift
//  EmailValidation
//
//  Created by Benny Davidovitz on 05/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBAction func editingChangedAction(_ sender: UITextField) {
        
        guard let text = sender.text/*, !email.isEmpty*/ else {
            label.text = ""
            return
        }
        
        label.text = text.isEmail ? "valid email" : "not valid email"
        
//        if sender.text?.isValidEmail() == true{
//            
//        }
    }
    

}














