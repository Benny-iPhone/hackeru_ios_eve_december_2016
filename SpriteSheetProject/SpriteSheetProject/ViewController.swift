//
//  ViewController.swift
//  SpriteSheetProject
//
//  Created by Benny Davidovitz on 13/02/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sheet = #imageLiteral(resourceName: "smurf_sprite")// #imageLiteral(resourceName: "chicken_sprite")
        let arr = sheet.getSprites(rows: 4, columns: 4)
        imageView.image = arr.first
        imageView.animationImages = arr
        imageView.animationRepeatCount = 0
        imageView.animationDuration = 2
        
        //imageView.startAnimating()
        let tap = UITapGestureRecognizer(target: self, action: #selector(ViewController.tapAction))
        imageView.addGestureRecognizer(tap)
        imageView.isUserInteractionEnabled = true
    }
    
    func tapAction(){
        if imageView.isAnimating{
            imageView.stopAnimating()
        } else {
            imageView.animationDuration -= 0.1
            imageView.startAnimating()
        }
    }

    


}













