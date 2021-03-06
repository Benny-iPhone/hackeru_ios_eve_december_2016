//
//  SecondViewController.swift
//  ProtocolProject
//
//  Created by Benny Davidovitz on 05/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

protocol SecondViewControllerDelegate {
    func secondVC(_ controller : SecondViewController, didFinishWith text : String?)
}

class SecondViewController: UIViewController {

    var info : String?
    @IBOutlet weak var textField: UITextField!
    var delegate : SecondViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.text = info
    }
    
    @IBAction func doneAction(_ sender: UITextField) {
        //notify delegate
        delegate?.secondVC(self, didFinishWith: sender.text)
        //opposite of present modally
        self.dismiss(animated: true, completion: nil)
    }
    

}





