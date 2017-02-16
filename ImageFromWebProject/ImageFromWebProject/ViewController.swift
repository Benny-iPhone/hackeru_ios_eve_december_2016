//
//  ViewController.swift
//  ImageFromWebProject
//
//  Created by Benny Davidovitz on 13/02/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var indicator : UIActivityIndicatorView!
    
    @IBOutlet weak var progressView: UIProgressView!
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBAction func downloadAction2(_ sender : UIButton){
        let urlString = "https://i.ytimg.com/vi/cNycdfFEgBc/maxresdefault.jpg"
        
        //validate url
        guard let url = URL(string: urlString) else {
            print("url no good")
            return
        }
        
        //before download
        indicator.startAnimating()
        progressView.progress = 0
        progressView.isHidden = false
        
        //using SDWebImage's method to download the image with, url, placeholder-image, progress block, completion block
        imageView.sd_setImage(with: url, placeholderImage: #imageLiteral(resourceName: "template"), options: .progressiveDownload, progress: { (received, expected, _) in
            
            //calculate progress
            let p = Float(received) / Float(expected)
            self.progressView.progress = p
            
        }) { (_, _, _, _) in
            
            //donwload finished
            //self.progressView.progress = 1
            self.progressView.isHidden = true
            self.indicator.stopAnimating()
            
        }
        
        //imageView.sd_setImage(with: url)
        /*
        let before = Date().timeIntervalSince1970
        imageView.sd_setImage(with: url) { (_, _, _, _) in
            let after = Date().timeIntervalSince1970
            print(after - before)
        }*/
    }
    
    @IBAction func downloadAction(_ sender: UIButton) {
        
        let urlString = "https://i.ytimg.com/vi/cNycdfFEgBc/maxresdefault.jpg"
        
        //validate url
        guard let url = URL(string: urlString) else {
            print("url no good")
            return
        }
        
        //go to background thread
        DispatchQueue.global().async {
            //download
            guard let data = try? Data(contentsOf: url) else {
                print("no data")
                return
            }
            print("done downloading image")
            
            //convert data to image
            guard let image = UIImage(data: data) else{
                print("data no good")
                return
            }
            
            //back to main thread
            DispatchQueue.main.async {
                self.imageView.image = image
            }
            
            
        }
        
        
    }
    
    


}








