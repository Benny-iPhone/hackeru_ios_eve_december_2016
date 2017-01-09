//
//  FirstViewController.swift
//  ProtocolProject
//
//  Created by Benny Davidovitz on 05/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController,
//declaring protocol
SecondViewControllerDelegate {

    @IBOutlet weak var label: UILabel!
    
    
    //implementing SecondViewControllerDelegate's methods
    func secondVC(_ controller: SecondViewController, didFinishWith text: String?) {
        label.text = text
        //print(text)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let nextVC = segue.destination as? SecondViewController{
            nextVC.delegate = self
        }
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}












