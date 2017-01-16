//
//  ViewController.swift
//  ViewProperties2
//
//  Created by Benny Davidovitz on 16/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //@IBOutlet weak var buttonView: UIView!
    
    //weak var myButtonView : UIView?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //myButtonView = self.view.viewWithTag(16)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func toggleInteractionAction(_ sender: UISwitch) {
        let buttonView = self.view.viewWithTag(16)
        buttonView?.isUserInteractionEnabled = sender.isOn
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        //#file
        sender.setTitle("Slavik", for: .normal)
        print(#function)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

