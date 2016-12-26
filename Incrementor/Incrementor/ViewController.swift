//
//  ViewController.swift
//  Incrementor
//
//  Created by Benny Davidovitz on 26/12/2016.
//  Copyright © 2016 xcoder.solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var number : Int = 0{
        didSet{
            updateLabel()
        }
    }
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func plusOneAction(_ sender: Any) {
        number += 1
//        updateLabel()
    }
    
    @IBAction func multiAction(_ sender: Any) {
        number *= 2
//        updateLabel()
    }
    
    func updateLabel(){
        label.text = "\(number)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        number = 0
//        updateLabel()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

