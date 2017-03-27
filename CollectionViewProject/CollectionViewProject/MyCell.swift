//
//  MyCell.swift
//  CollectionViewProject
//
//  Created by hackeru on 27/03/2017.
//  Copyright © 2017 hackeru. All rights reserved.
//

import UIKit

class MyCell: UICollectionViewCell {
    
    @IBOutlet weak var label: UILabel!
    
    func config(with text : String){
        label.text = text
    }
}
