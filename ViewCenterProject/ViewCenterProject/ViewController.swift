//
//  ViewController.swift
//  ViewCenterProject
//
//  Created by Benny Davidovitz on 12/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var orangeView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        orangeView.layer.cornerRadius = orangeView.bounds.width / 2
        orangeView.layer.masksToBounds = true
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.tapAction(_:)))
        self.view.addGestureRecognizer(tapGesture)
        
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(ViewController.panAction(_:)))
        orangeView.addGestureRecognizer(panGesture)
    }
    
    func tapAction(_ sender : UITapGestureRecognizer){
        let point : CGPoint = sender.location(in: self.view)
        UIView.animate(withDuration: 0.8, animations: {
            self.orangeView.center = point
        })
    }
    
    func panAction(_ sender : UIPanGestureRecognizer){
        let point : CGPoint = sender.location(in: self.view)
        orangeView.center = point
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}







