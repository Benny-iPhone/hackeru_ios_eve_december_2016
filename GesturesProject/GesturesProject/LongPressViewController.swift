//
//  LongPressViewController.swift
//  GesturesProject
//
//  Created by Benny Davidovitz on 23/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class LongPressViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBAction func unwindToLongPress(_ segue : UIStoryboardSegue){
        
    }
    
    @IBAction func longPressAction(_ sender: UILongPressGestureRecognizer) {
        
        guard sender.state == .began else {
            return
        }
        
        guard let text = label.text else {
            return
        }
        
        UIPasteboard.general.string = text
        
        label.backgroundColor = .yellow
        
    }
    

}



















