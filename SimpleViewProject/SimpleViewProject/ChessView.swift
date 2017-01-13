//
//  ChessView.swift
//  SimpleViewProject
//
//  Created by Benny Davidovitz on 12/01/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class ChessView: UIView {

    //when created from code
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initialize()
    }
    //when created from storyboard
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        initialize()
    }
    
    func initialize(){
        let tileSize = min(bounds.width, bounds.height) / 8
        var rect = CGRect(x: 0, y: 0, width: tileSize, height: tileSize)
        
        for i in 0..<8{
            for j in 0..<8{
                if (i + j) % 2 == 0{
                    addSubview(Whiteview(frame: rect))
                } else {
                    addSubview(BlackView(frame: rect))
                }
                
                rect.origin.x +=  tileSize
            }
            
            rect.origin.x = 0
            rect.origin.y += tileSize
        }
    }

}













