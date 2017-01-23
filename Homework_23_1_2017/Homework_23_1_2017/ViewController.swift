//
//  ViewController.swift
//  Homework_23_1_2017
//
//  Created by Benny Davidovitz on 23/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var purpleView: UIView!
    let speed : Double = 100 //points per second
    
    @IBAction func tapAction(_ sender: UITapGestureRecognizer) {
        
        let p : CGPoint = sender.location(in: self.view)
        let c = purpleView.center
        let dist = Double(sqrt(pow(p.x - c.x, 2) + pow(p.y - c.y, 2)))
        let t = dist / speed
        
        UIView.animate(withDuration: t, delay: 0, options: .curveLinear, animations: { 
            self.purpleView.center = p
        }, completion: nil)
        
        
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

