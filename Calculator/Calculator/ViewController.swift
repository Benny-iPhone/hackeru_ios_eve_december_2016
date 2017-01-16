//
//  ViewController.swift
//  Calculator
//
//  Created by Benny Davidovitz on 09/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    let brain = Brain()
    
    @IBAction func operatorAction(_ sender: UIButton) {
        guard let op = Brain.Operator(rawValue: sender.tag) else {
            return
        }
        
        label.text = brain.addOperator(op)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

