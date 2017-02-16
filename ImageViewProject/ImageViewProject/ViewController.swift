//
//  ViewController.swift
//  ImageViewProject
//
//  Created by Benny Davidovitz on 09/02/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var checkbox: CheckboxImageView!
    
    @IBOutlet weak var imageView: UIImageView!
    var timer : Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        func action(_ check : Bool){
            if check{
                self.startSpin()
            } else {
                self.stopSpin()
            }
        }
        
        checkbox.action = action
        /*
        checkbox.action = {
            if $0{
                
            } else {
                
            }
        }
        */
    }

    func startSpin(){
        self.timer = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true, block: { _ in
            
            let angle = CGFloat(M_PI / 10)
            let t = CGAffineTransform(rotationAngle: angle)
            let total = self.imageView.transform.concatenating(t)
            self.imageView.transform = total
            
        })
    }
    
    func stopSpin(){
        timer?.invalidate()
        self.timer = nil
    }

}










