//
//  ViewController.swift
//  SimpleViewProject
//
//  Created by Benny Davidovitz on 12/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blueView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        blueView.clipsToBounds = true
        
        let rect = CGRect(x: 10, y: 10, width: 80, height: 240)
        let myView = UIView(frame: rect)
        myView.backgroundColor = .yellow
        blueView.addSubview(myView)
        
        let bView = BlackView(frame: CGRect(x: 30, y: 30, width: 30, height: 30))
        myView.addSubview(bView)
 
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
//        let rect = CGRect(x: 10, y: 10, width: 80, height: 240)
//        let myView = UIView(frame: rect)
//        myView.backgroundColor = .yellow
//        blueView.addSubview(myView)
    }
/*
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let rect = CGRect(x: 10, y: 10, width: 80, height: 240)
        let myView = UIView(frame: rect)
        myView.backgroundColor = .yellow
        blueView.addSubview(myView)
    }
  */
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



















