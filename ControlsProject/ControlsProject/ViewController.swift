//
//  ViewController.swift
//  ControlsProject
//
//  Created by Benny Davidovitz on 23/02/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var containerView: UIView!
    
    @IBAction func segmentedControlAction(_ sender: UISegmentedControl) {
        
        var storyboardID = ""
        switch sender.selectedSegmentIndex {
        case 0: storyboardID = "orange"
        case 1: storyboardID = "blue"
        case 2: storyboardID = "yellow"
        default:
            return
        }
        
        //remove old
        if let vc = self.childViewControllers.first{
            hide(vc: vc)
        }
        
        //add new
        let vc = storyboard!.instantiateViewController(withIdentifier: storyboardID)
        display(vc: vc)
        
    }
    
    func display(vc : UIViewController){
        self.addChildViewController(vc)
        vc.view.frame = containerView.bounds
        containerView.addSubview(vc.view)
        vc.didMove(toParentViewController: self)
    }
    
    func hide(vc : UIViewController){
        vc.willMove(toParentViewController: nil)
        vc.view.removeFromSuperview()
        vc.removeFromParentViewController()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        slider.setThumbImage(#imageLiteral(resourceName: "wink"), for: .normal)
        slider.setThumbImage(#imageLiteral(resourceName: "wink_filled"), for: .highlighted)
        
        stepper.sendActions(for: .valueChanged)
        
        
    }
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        label.text = "\(sender.value)"
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

