//
//  ViewUtils.swift
//  DrawSomethingProject
//
//  Created by Benny Davidovitz on 30/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

extension UIView {
    
    // Using a function since `var image` might conflict with an existing variable
    // (like on `UIImageView`)
    func asImage() -> UIImage {
        let renderer = UIGraphicsImageRenderer(bounds: bounds)
        
        return renderer.image { rendererContext in
            layer.render(in: rendererContext.cgContext)
        }
    }
}









