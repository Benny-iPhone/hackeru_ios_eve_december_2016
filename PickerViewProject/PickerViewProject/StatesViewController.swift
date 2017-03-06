//
//  StatesViewController.swift
//  PickerViewProject
//
//  Created by Benny Davidovitz on 02/03/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class StatesViewController: UIViewController , UIPickerViewDataSource, UIPickerViewDelegate{
    
    let data : [String:[String]]
    let allStates : [String]
    var zipCodes : [String]
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    required init?(coder aDecoder: NSCoder) {
        //check that
        //1. file exist
        //2. file is dictionary
        //3. dictionary is in the expected format
        if let path = Bundle.main.path(forResource: "statedictionary", ofType: "plist"),
        let dict = NSDictionary(contentsOfFile: path),
            let data = dict as? [String:[String]]{
            self.data = data
        } else {
            self.data = [:]
        }
        
        //all keys sorted from a to z
        self.allStates = Array(data.keys).sorted()
        let state = allStates.first ?? ""
        self.zipCodes = data[state] ?? []
        
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.pickerView(pickerView, didSelectRow: 0, inComponent: 0)
    }

    //MARK: - UIPickerView Data Source -
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0: //states
            return allStates.count
        case 1:
            return zipCodes.count
        default:
            return 0
        }
    }
    
    //MARK: - UIPickerView Delegate -
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            return allStates[row]
        case 1:
            return zipCodes[row]
        default:
            return nil
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0{
            //state changed
            //refresh data
            let state = allStates[row]
            zipCodes = data[state] ?? []
            //refresh UI
            pickerView.reloadComponent(1)
        }
        
        let statesRow = pickerView.selectedRow(inComponent: 0)
        let zipcodesRow = pickerView.selectedRow(inComponent: 1)
        
        label.text = allStates[statesRow] + " : " + zipCodes[zipcodesRow]
    }

}







































