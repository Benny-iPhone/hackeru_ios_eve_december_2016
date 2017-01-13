//
//  ViewController.swift
//  ViewProperties
//
//  Created by Benny Davidovitz on 12/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var purpleView: UIView!

    @IBAction func controlAlphaAction(_ sender: UISlider) {
        purpleView.alpha = CGFloat(sender.value)
    }
    @IBAction func toggleAction(_ sender: UISwitch) {
        purpleView.isHidden = !sender.isOn
    }
    


}









