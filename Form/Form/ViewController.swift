//
//  ViewController.swift
//  Form
//
//  Created by Benny Davidovitz on 16/02/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stackTopLayout: NSLayoutConstraint!

    @IBOutlet weak var firstnameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //open keyboard
        firstnameTextField.becomeFirstResponder()
        //firstnameTextField.delegate = self
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
        moveTo(c: 8)
    }
    
    func moveTo(c : CGFloat){
        stackTopLayout.constant = c
        
        UIView.animate(withDuration: 0.3) {
            //refresh constraint
            self.view.layoutIfNeeded()
            //self.view.layoutSubviews()
        }
        
    }
    
}

extension ViewController : UITextFieldDelegate{
    func textFieldDidBeginEditing(_ textField: UITextField) {
        let c = 8 - textField.frame.origin.y
        moveTo(c: c)
    }
}















