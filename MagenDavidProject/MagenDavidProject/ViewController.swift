//
//  ViewController.swift
//  MagenDavidProject
//
//  Created by Benny Davidovitz on 26/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var magenDavidView: MagenDavidView!

    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            magenDavidView.color = .black
        case 1:
            magenDavidView.color = .blue
        case 2:
            magenDavidView.color = .red
        case 3:
            magenDavidView.color = .purple
        case 4:
            magenDavidView.color = .green
        default:
            break
        }
        
        //magenDavidView.setNeedsDisplay()
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

