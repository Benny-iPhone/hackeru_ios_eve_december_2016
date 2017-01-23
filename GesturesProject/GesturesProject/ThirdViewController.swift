//
//  ThirdViewController.swift
//  GesturesProject
//
//  Created by Benny Davidovitz on 23/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBAction func swipeAction(_ sender: Any) {
        _ = self.navigationController?.popViewController(animated: true)
    }
    
    

}
