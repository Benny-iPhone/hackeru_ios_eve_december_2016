//
//  GenderTextField.swift
//  Form
//
//  Created by Benny Davidovitz on 16/02/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class GenderTextField: AppTextField , UIPickerViewDataSource, UIPickerViewDelegate{

    override func shouldShowToolbar() -> Bool {
        return true
    }

    override func setup() {
        super.setup()
        
        let pickerView = UIPickerView()
        pickerView.backgroundColor = .white
        pickerView.dataSource = self
        pickerView.delegate = self
        
        self.inputView = pickerView
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch row {
        case 0:
            return "Male"
        case 1:
            return "Female"
        default:
            return nil
        }
    }
}













