//
//  ViewController.swift
//  iDummyCalculator
//
//  Created by Benny Davidovitz on 15/12/2016.
//  Copyright © 2016 xcoder.solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNumberTextField: UITextField!
    @IBOutlet weak var secondNumberTextField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var multiButton: UIButton!
    @IBOutlet weak var divButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "😀🚬"
    }
    
    
    @IBAction func operatorAction(_ sender: UIButton) {
        guard let first = firstNumberTextField.text,
            let num1 = Double(first) else {
            return
        }
        
        guard let second = secondNumberTextField.text,
            let num2 = Double(second) else {
            return
        }
        
        var result : Double!
        switch sender {
        case plusButton:
            result = num1 + num2
        case minusButton:
            result = num1 - num2
        case multiButton:
            result = num1 * num2
        case divButton:
            guard num2 != 0 else {
                return
            }
            
            result = num1 / num2
        default:
            return
        }
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        
        let number = NSNumber(value: result)
        label.text = formatter.string(from: number)
        //result.desription
        //"\(result)"
    }


}





























