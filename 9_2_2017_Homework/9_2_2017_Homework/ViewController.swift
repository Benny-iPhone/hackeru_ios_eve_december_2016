//
//  ViewController.swift
//  9_2_2017_Homework
//
//  Created by Benny Davidovitz on 09/02/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit
import FRHyperLabel

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var termsLabel: FRHyperLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        adjustLabel()
        adjustTermsLabel()
    }
    
    func adjustTermsLabel(){
        let atts : [String:Any] = [
            NSFontAttributeName:UIFont.preferredFont(forTextStyle: .headline)
        ]
        termsLabel.attributedText = NSAttributedString(string: termsLabel.text ?? "", attributes: atts)
                
        termsLabel.setLinkForSubstring("terms of use") { (_, _) in
            print("terms of use clicked")
        }
    }

    func adjustLabel(){
        guard let text = label.text else {
            return
        }
        
        let atts : [String:Any] = [
            NSForegroundColorAttributeName:UIColor(netHex: 0xff22ab)
        ]
        
        let attString = NSMutableAttributedString(string: text, attributes: atts)
        
        let hRange : NSRange = (text as NSString).range(of: "homework")
        if hRange.length > 0{
            let font = UIFont.boldSystemFont(ofSize: 18)
            attString.addAttribute(NSFontAttributeName, value: font, range: hRange)
        }
        
        label.attributedText = attString
    }

}

















