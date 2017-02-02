//
//  ColorViewController.swift
//  DrawSomethingProject
//
//  Created by Benny Davidovitz on 02/02/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit
import Color_Picker_for_iOS

protocol ColorViewControllerDelegate {
    func colorViewController(_ controller : ColorViewController, didSelectColor color : UIColor?)
}

class ColorViewController: UIViewController {

    @IBOutlet weak var colorPickerView: HRColorPickerView!
    var color : UIColor?
    var delegate : ColorViewControllerDelegate?
    
    @IBAction func colorPickerAction(_ sender: HRColorPickerView) {
        delegate?.colorViewController(self, didSelectColor: sender.color)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        colorPickerView.color = color
    }

    

}







