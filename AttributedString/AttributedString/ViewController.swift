//
//  ViewController.swift
//  AttributedString
//
//  Created by Benny Davidovitz on 06/02/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupLabel()
    }
    
    func setupLabel(){
        let text = "yalla damoi"
        
        let atts : [String:Any] = [
            NSUnderlineStyleAttributeName:NSUnderlineStyle.styleSingle.rawValue,
            NSUnderlineColorAttributeName:UIColor.blue
        ]
        
        let attString = NSMutableAttributedString(string: text, attributes: atts)
        
        let spaceRange = (text as NSString).range(of: " ")
        let firstStringRange = NSRange(location: 0, length: spaceRange.location)
        
        attString.addAttribute(NSForegroundColorAttributeName, value: UIColor.red, range: firstStringRange)
        attString.addAttribute(NSFontAttributeName, value: UIFont.boldSystemFont(ofSize: 16), range: firstStringRange)
        
        label.attributedText = attString
    }

    


}



















