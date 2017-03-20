//
//  PersonCell.swift
//  HitList
//
//  Created by Benny Davidovitz on 20/03/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class PersonCell: UITableViewCell {

    @IBOutlet weak var firstnameLabel: UILabel!
    @IBOutlet weak var lastnameLabel: UILabel!
    @IBOutlet weak var aliveSwitch: CellSwitch!

    func configure(with p : Person){
        
        firstnameLabel.text = p.firstname
        lastnameLabel.text = p.lastname
        aliveSwitch.isOn = p.isAlive
        
        if p.isAlive{
            firstnameLabel.isHighlighted = false
            lastnameLabel.isHighlighted = false
        } else {
            firstnameLabel.isHighlighted = true
            lastnameLabel.isHighlighted = true
        }
    }
    
    //like viewDidLoad, but for UI
    override func awakeFromNib() {
        super.awakeFromNib()
        
        firstnameLabel.highlightedTextColor = .lightGray
        lastnameLabel.highlightedTextColor = .lightGray
    }
    
}











