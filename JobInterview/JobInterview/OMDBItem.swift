//
//  OMDBItem.swift
//  JobInterview
//
//  Created by Benny Davidovitz on 09/03/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class OMDBItem: NSObject {
    let title : String?
    let year : String?
    let imdbID : String
    let type : String?
    let posterURL : URL?
    
    init(_ dict : [String:Any]) {
        title = dict["Title"] as? String
        year = dict["Year"] as? String
        imdbID = dict["imdbID"] as! String
        type = dict["Type"] as? String
        
        if let urlString = dict["Poster"] as? String{
            self.posterURL = URL(string: urlString)
        } else {
            self.posterURL = nil
        }
        
        super.init()
    }
}

















