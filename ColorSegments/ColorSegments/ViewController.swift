//
//  ViewController.swift
//  ColorSegments
//
//  Created by Asher   Efrati  on 19/12/2016.
//  Copyright © 2016 Asher   Efrati . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var targetView: UIView!
    
    @IBAction func colorSegmnetAction(_ sender: UISegmentedControl) {
        //sender.numberOfSegments
        let index : Int = sender.selectedSegmentIndex
        //print(index)
        var color : UIColor?
        switch index {
        case 0:
            color = UIColor.white
        case 1:
            color = .black
        case 2:
            color = .red
        case 3:
            color = .blue
        default:
            return
        }
        
        func animFunc(){
            self.targetView.backgroundColor = color
        }
        
        UIView.animate(withDuration: 3, animations: animFunc)
        
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

