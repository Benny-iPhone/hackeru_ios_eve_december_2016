//
//  BirthdateTextField.swift
//  Form
//
//  Created by Benny Davidovitz on 16/02/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class BirthdateTextField: AppTextField {

    //the selected date for set and get purpose
    var date : Date?{
        didSet{
            //make sure date is not nil
            guard let date = date else {
                text = nil
                return
            }
            //show the date as string on the text-field
            let formatter = DateFormatter()
            formatter.dateStyle = .medium
            //formatter.dateFormat = "dd-MM-yyyy"
            text = formatter.string(from: date)
        }
    }
    
    override func shouldShowToolbar() -> Bool {
        return true
    }
    
    override func setup() {
        super.setup()
        
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.backgroundColor = .white
        /*
        var d : Date? = Date()
        d = Calendar.current.date(byAdding: .year, value: -20, to: d)
        datePicker.date = d
        */
        //hook IBAction progromatically
        datePicker.addTarget(self, action: #selector(datePickerAction), for: .valueChanged)
        
        //date picker replace the keyboard's view
        self.inputView = datePicker
    }
    
    //1. update date
    //2. send action - editingChanged
    func datePickerAction(){
        guard let datePicker = self.inputView as? UIDatePicker else {
            return
        }
        
        self.date = datePicker.date
        sendActions(for: .editingChanged)
        
    }
    
    //on editing begin
    override func becomeFirstResponder() -> Bool {
        datePickerAction()
        return super.becomeFirstResponder()
    }


}








