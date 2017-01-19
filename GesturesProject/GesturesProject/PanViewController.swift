//
//  PanViewController.swift
//  GesturesProject
//
//  Created by Benny Davidovitz on 19/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class PanViewController: UIViewController {

    @IBAction func panAction(_ sender: UIPanGestureRecognizer) {
        sender.view?.center = sender.location(in: self.view)
    }
    

}
