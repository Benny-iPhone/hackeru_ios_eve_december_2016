//
//  ViewController.swift
//  ClockProject
//
//  Created by Benny Davidovitz on 16/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var secondsHand: UIImageView!
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    @IBOutlet weak var clockView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        clockView.layer.cornerRadius = heightConstraint.constant / 2
        clockView.layer.borderColor = UIColor.black.cgColor
        clockView.layer.borderWidth = 1
        
        secondsTimerAction()
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.secondsTimerAction), userInfo: nil, repeats: true)
        /*
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (_) in
            
        }*/
    }
    
    func secondsTimerAction(){
        let now = Int(Date().timeIntervalSince1970)
        let seconds = Double(now % 60)
        let angle = CGFloat((seconds / 60) * 2 * M_PI)
        UIView.animate(withDuration: 0.99) { 
            self.secondsHand.transform = CGAffineTransform(rotationAngle: angle)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}








