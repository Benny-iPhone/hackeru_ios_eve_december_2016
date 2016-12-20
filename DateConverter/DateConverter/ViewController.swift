//
//  ViewController.swift
//  DateConverter
//
//  Created by Asher   Efrati  on 19/12/2016.
//  Copyright © 2016 Asher   Efrati . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmentedControl.sendActions(for: .valueChanged)
        //segmentedControlValueChangedAction(segmentedControl)
    }

    @IBAction func segmentedControlValueChangedAction(_ sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
       
        guard let type = ConvertType(rawValue: index) else{
            print("unsupported index \(index)")
            return
        }
        //update UIDatePicker's calendar
        datePicker.calendar = type.source()
        
        //update label's text
        datePickerAction(datePicker)
    }
   
    @IBAction func datePickerAction(_ sender: UIDatePicker) {
        let index = segmentedControl.selectedSegmentIndex
        guard let type = ConvertType(rawValue: index) else{
            print("unsupported index \(index)")
            return
        }
        
        let formatter = DateFormatter()
        //formatter.dateFormat = "yyyy-MM-dd"
        formatter.dateStyle = .full
        formatter.calendar = type.destination()
        formatter.locale = Locale(identifier: "he")
        
        label.text = formatter.string(from: sender.date)
        
    }
    
    
    
    

}











