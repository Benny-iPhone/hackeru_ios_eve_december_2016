//
//  ViewController.swift
//  Form
//
//  Created by Benny Davidovitz on 16/02/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstnameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //open keyboard
        firstnameTextField.becomeFirstResponder()
    }
    
    
    @IBAction func didEndOnExitAction(_ sender: UITextField) {
        if let nextTextField = self.view.viewWithTag(sender.tag + 1){
            nextTextField.becomeFirstResponder()
        } else {
            tapAction(sender)
        }
    }
    
    @IBAction func submitAction(_ sender: Any) {
    }
    
    @IBAction func tapAction(_ sender: Any) {
        _ = self.view.hideKeyboard()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

