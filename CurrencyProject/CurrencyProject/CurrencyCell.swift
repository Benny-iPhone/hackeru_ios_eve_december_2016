//
//  CurrencyCell.swift
//  CurrencyProject
//
//  Created by hackeru on 23/03/2017.
//  Copyright © 2017 hackeru. All rights reserved.
//

import UIKit

class CurrencyCell: UITableViewCell {

    @IBOutlet var codeLabel: UILabel!
    @IBOutlet var rateLabel: UILabel!
    
    func configure(with item : Currency){
        codeLabel.text = item.code
        rateLabel.text = item.rate.description
        /*
        let foramtter = NumberFormatter()
        foramtter.numberStyle = .currency
        foramtter.currencyCode = item.code
        
        rateLabel.text = foramtter.string(from: item.rate as NSNumber)*/
    }

}
