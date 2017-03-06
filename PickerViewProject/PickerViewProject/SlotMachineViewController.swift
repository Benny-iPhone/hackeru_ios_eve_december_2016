//
//  SlotMachineViewController.swift
//  PickerViewProject
//
//  Created by Benny Davidovitz on 02/03/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class SlotMachineViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    let pickerArray : [UIImage] = [#imageLiteral(resourceName: "apple"),#imageLiteral(resourceName: "bar"),#imageLiteral(resourceName: "seven"),#imageLiteral(resourceName: "lemon"),#imageLiteral(resourceName: "crown"),#imageLiteral(resourceName: "cherry")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerArray.count * 10
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        let image = pickerArray[row % pickerArray.count]
        let imageView = UIImageView(image: image)
        
        return imageView
        
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return pickerArray[0].size.height
    }
}






















