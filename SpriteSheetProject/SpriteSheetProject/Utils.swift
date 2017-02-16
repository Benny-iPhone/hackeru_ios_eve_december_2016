//
//  Utils.swift
//  SpriteSheetProject
//
//  Created by Benny Davidovitz on 13/02/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

extension UIImage{
    func crop(rect : CGRect) -> UIImage{
        guard let r /*: CGImage?*/ = self.cgImage?.cropping(to: rect) else {
            return UIImage()
        }
        
        return UIImage(cgImage: r)
    }
    
    func getSprites(rows : UInt, columns : UInt) -> [UIImage]{
        let width = self.size.width / CGFloat(columns)
        let height = self.size.height / CGFloat(rows)
        
        var rect = CGRect(x: 0, y: 0, width: width, height: height)
        var arr : [UIImage] = []
        
        for _ in 0..<rows{
            
            for _ in 0..<columns{
                let img = self.crop(rect: rect)
                arr.append(img)
                rect.origin.x += width
            }
            
            rect.origin.x = 0
            rect.origin.y += height
            
        }
        
        return arr
        
    }
}






















