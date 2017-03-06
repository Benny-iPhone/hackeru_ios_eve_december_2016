//
//  SingleViewController.swift
//  PickerViewProject
//
//  Created by Benny Davidovitz on 02/03/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class SingleViewController: UIViewController, UIPickerViewDataSource , UIPickerViewDelegate{

    @IBOutlet weak var label: UILabel!
    let pickerArray : [String] = ["Cheetah","Puma","Jaguar","Panther","Tiger","Leopard","Snow Leopard","Lion","Mountain Lion","Mavericks","Yossmite","El Capitan","Sierra"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        label.text = pickerArray[0]
    }

    //MARK: - UIPickerView Data Source -
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerArray.count
    }
    
    //MARK: - UIPickerView Delegate -
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = pickerArray[row]
    }

}

































