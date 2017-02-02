//
//  ViewController.swift
//  LabelProject
//
//  Created by Benny Davidovitz on 30/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var labels: [HiLabel]!
    
    @IBAction func switchAction(_ sender: UISwitch) {
        for item in labels{
            item.isHighlighted = sender.isOn
        }
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

