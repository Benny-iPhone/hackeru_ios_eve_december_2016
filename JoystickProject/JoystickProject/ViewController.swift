//
//  ViewController.swift
//  JoystickProject
//
//  Created by Benny Davidovitz on 16/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //declare how many points the ball moves every step
    let step : CGFloat = 10
    
    @IBOutlet weak var ballImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // on view loaded center the ball
        homeAction()
    }

    @IBAction func upAction(_ sender: Any) {
        let targetY = max(ballImageView.center.y - step,ballImageView.bounds.height / 2)
        ballImageView.center.y = targetY
    }
    
    @IBAction func rightAction(_ sender: Any) {
        //max x value for keeping the ball in borders
        let maxValue = view.bounds.width - ballImageView.bounds.width / 2
        let targetX = min(ballImageView.center.x + step, maxValue)
        ballImageView.center.x = targetX
    }
    
    @IBAction func leftAction(_ sender: Any) {
        let targetX = max(ballImageView.center.x - step, ballImageView.bounds.width / 2)
        ballImageView.center.x = targetX
        
    }
    @IBAction func downAction(_ sender: Any) {
        //max y value for keeping the ball in borders
        let maxValue = view.bounds.height - ballImageView.bounds.height / 2
        let targetY = min(ballImageView.center.y + step, maxValue)
        ballImageView.center.y = targetY
    }
    
    @IBAction func homeAction(){
        //find center point
        let center = CGPoint(x: self.view.bounds.width / 2, y: self.view.bounds.height / 2)
        //view.bounds.midX
        ballImageView.center = center
    }
    

}


































