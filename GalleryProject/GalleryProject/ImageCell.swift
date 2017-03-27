//
//  ImageCell.swift
//  GalleryProject
//
//  Created by hackeru on 27/03/2017.
//  Copyright © 2017 hackeru. All rights reserved.
//

import UIKit
import SDWebImage

class ImageCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    func config(with urlString : String){
        let url = URL(string: urlString)
        imageView.sd_setImage(with: url)
    }
}
