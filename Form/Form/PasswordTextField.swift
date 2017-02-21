//
//  PasswordTextField.swift
//  Form
//
//  Created by Benny Davidovitz on 20/02/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class PasswordTextField: AppTextField {

    override func setup() {
        super.setup()
        
        //create button
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        //set images per state
        button.setImage(#imageLiteral(resourceName: "visible_enabled"), for: .normal)
        button.setImage(#imageLiteral(resourceName: "visible_disabled"), for: .disabled)
        //hook IBAction
        button.addTarget(self, action: #selector(buttonAction(_:)), for: .touchUpInside)
        
        //set to UI
        self.rightView = button
        self.rightViewMode = .always
        
    }
    
    func buttonAction(_ sender : UIButton){
        //1. disable button
        sender.isEnabled = false
        //2. unhide password
        self.isSecureTextEntry = false
        
        //Ater 2 seconds:
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { 
            //3. hide password
            self.isSecureTextEntry = true
            //4. re-enable button
            sender.isEnabled = true
        }
        
    }
}

















