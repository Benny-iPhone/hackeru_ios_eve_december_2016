//
//  MenuItem.swift
//  MenuProject
//
//  Created by Benny Davidovitz on 06/03/2017.
//  Copyright © 2017 xcoder.solutions. All rights reserved.
//

import UIKit

class MenuItem: NSObject {
    let name : String
    let desc : String?
    let price : Double
    let url : URL?
    
    init(_ dict : [String:Any]) {
        self.name = dict["name"] as? String ?? "☹️"
        self.desc = dict["desc"] as? String
        self.price = dict["price"] as? Double ?? 0
        
        if let urlString = dict["url"] as? String{
            self.url = URL(string: urlString)
        } else {
            self.url = nil
        }
        
        super.init()
    }
    
    class func readFile() -> [MenuItem] {
        
        guard let path = Bundle.main.path(forResource: "menu", ofType: "plist"),
        let rawArr = NSArray(contentsOfFile: path),
        let arr = rawArr as? [[String:Any]]
        else {
            return []
        }
        
        var finalArray : [MenuItem] = []
        
        for item in arr{
            let m = MenuItem(item)
            finalArray.append(m)
        }
        
        return finalArray
    }
}

















