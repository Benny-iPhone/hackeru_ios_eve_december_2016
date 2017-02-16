//
//  RoundImageView.swift
//  ImageViewProject
//
//  Created by Benny Davidovitz on 09/02/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class RoundImageView: UIImageView {
    //after constraints took place
    override func layoutSubviews() {
        super.layoutSubviews()
        makeRound()
    }
    
    //loaded from storyboard
    override func awakeFromNib() {
        super.awakeFromNib()
        makeRound()
    }
    
    func makeRound(){
        
        layer.cornerRadius = min(bounds.width,bounds.height) * 0.5
        layer.masksToBounds = true
        
    }
}












