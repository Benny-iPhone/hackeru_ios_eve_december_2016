//
//  OMDBItemCell.swift
//  JobInterview
//
//  Created by Benny Davidovitz on 09/03/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit
import SDWebImage

class OMDBItemCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    
    func configure(with item : OMDBItem){
        nameLabel.text = item.title
        yearLabel.text = item.year
        typeLabel.text = item.type
        
        if let url = item.posterURL{
            posterImageView.sd_setImage(with: url)
        } else {
            posterImageView.image = nil
            posterImageView.sd_cancelCurrentImageLoad()
        }
    }

}











