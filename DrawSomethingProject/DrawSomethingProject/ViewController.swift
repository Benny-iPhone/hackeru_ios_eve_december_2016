//
//  ViewController.swift
//  DrawSomethingProject
//
//  Created by Benny Davidovitz on 26/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var drawView: DrawSomethingView!
    
    @IBAction func clearAction(_ sender: Any) {
        drawView.clear()
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        drawView.lineWidth = CGFloat(sender.value)
    }
    
    @IBAction func redAction(_ sender: Any) {
        drawView.strokeColor = .red
    }
    
    @IBAction func blueAction(_ sender: Any) {
        drawView.strokeColor = .blue
    }
    
    @IBAction func blackAction(_ sender: Any) {
        drawView.strokeColor = .black
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







