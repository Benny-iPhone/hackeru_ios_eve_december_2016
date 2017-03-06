//
//  MenuItemCell.swift
//  MenuProject
//
//  Created by Benny Davidovitz on 06/03/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class MenuItemCell: UITableViewCell {

    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    func configure(with item : MenuItem){
        //name
        nameLabel.text = item.name
        //description
        descLabel.text = item.desc
        //price
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencyCode = "ILS"
        
        let price = item.price as NSNumber
        priceLabel.text = formatter.string(from: price)
        
        //image
    }
    
}


















