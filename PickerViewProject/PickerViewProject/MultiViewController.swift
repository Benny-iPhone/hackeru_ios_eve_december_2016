//
//  MultiViewController.swift
//  PickerViewProject
//
//  Created by Benny Davidovitz on 02/03/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class MultiViewController: UIViewController , UIPickerViewDataSource, UIPickerViewDelegate{

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    let pickerArray : [[String]] = [
        ["Benny","Chen","Natan","Hagar","Hila"],
        ["Davidovitz","Levi","Saban","Shoham","Tashimov","Slavik"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pickerView(pickerView, didSelectRow: 0, inComponent: 0)
        //pickerView.delegate?.pickerView(pickerView, didSelectRow: 0, inComponent: 0)

        // Do any additional setup after loading the view.
    }

    //MARK: - UIPickerView Data Source -
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return pickerArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerArray[component].count
    }
    
    //MARK: - UIPickerView Delegate -
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerArray[component][row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var arr : [String] = []
        
        for i in 0..<pickerView.numberOfComponents{
            let selectedRow = pickerView.selectedRow(inComponent: i)
            arr.append(pickerArray[i][selectedRow])
        }
        
        let str = arr.joined(separator: " ")
        label.text = str
    }

}

























