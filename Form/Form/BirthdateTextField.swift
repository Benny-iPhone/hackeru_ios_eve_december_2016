//
//  BirthdateTextField.swift
//  Form
//
//  Created by Benny Davidovitz on 16/02/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class BirthdateTextField: AppTextField {

    override func shouldShowToolbar() -> Bool {
        return true
    }
    
    override func setup() {
        super.setup()
        
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        self.inputView = datePicker
    }


}








